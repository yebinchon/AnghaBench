; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_virtio_blk.c_virtblk_get_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_virtio_blk.c_virtblk_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.virtio_blk* }
%struct.virtio_blk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }
%struct.bio = type { i32 }

@VIRTIO_BLK_ID_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@REQ_TYPE_SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, i8*)* @virtblk_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtblk_get_id(%struct.gendisk* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.virtio_blk*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 0
  %12 = load %struct.virtio_blk*, %struct.virtio_blk** %11, align 8
  store %struct.virtio_blk* %12, %struct.virtio_blk** %6, align 8
  %13 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %14 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @VIRTIO_BLK_ID_BYTES, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.request* @bio_map_kern(i32 %17, i8* %18, i32 %19, i32 %20)
  %22 = bitcast %struct.request* %21 to %struct.bio*
  store %struct.bio* %22, %struct.bio** %8, align 8
  %23 = load %struct.bio*, %struct.bio** %8, align 8
  %24 = bitcast %struct.bio* %23 to %struct.request*
  %25 = call i64 @IS_ERR(%struct.request* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.bio*, %struct.bio** %8, align 8
  %29 = bitcast %struct.bio* %28 to %struct.request*
  %30 = call i32 @PTR_ERR(%struct.request* %29)
  store i32 %30, i32* %3, align 4
  br label %67

31:                                               ; preds = %2
  %32 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %33 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bio*, %struct.bio** %8, align 8
  %38 = bitcast %struct.bio* %37 to %struct.request*
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.request* @blk_make_request(i32 %36, %struct.request* %38, i32 %39)
  store %struct.request* %40, %struct.request** %7, align 8
  %41 = load %struct.request*, %struct.request** %7, align 8
  %42 = call i64 @IS_ERR(%struct.request* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load %struct.bio*, %struct.bio** %8, align 8
  %46 = bitcast %struct.bio* %45 to %struct.request*
  %47 = call i32 @bio_put(%struct.request* %46)
  %48 = load %struct.request*, %struct.request** %7, align 8
  %49 = call i32 @PTR_ERR(%struct.request* %48)
  store i32 %49, i32* %3, align 4
  br label %67

50:                                               ; preds = %31
  %51 = load i32, i32* @REQ_TYPE_SPECIAL, align 4
  %52 = load %struct.request*, %struct.request** %7, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %55 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.virtio_blk*, %struct.virtio_blk** %6, align 8
  %60 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load %struct.request*, %struct.request** %7, align 8
  %63 = call i32 @blk_execute_rq(i32 %58, %struct.TYPE_2__* %61, %struct.request* %62, i32 0)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.request*, %struct.request** %7, align 8
  %65 = call i32 @blk_put_request(%struct.request* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %50, %44, %27
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.request* @bio_map_kern(i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @PTR_ERR(%struct.request*) #1

declare dso_local %struct.request* @blk_make_request(i32, %struct.request*, i32) #1

declare dso_local i32 @bio_put(%struct.request*) #1

declare dso_local i32 @blk_execute_rq(i32, %struct.TYPE_2__*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
