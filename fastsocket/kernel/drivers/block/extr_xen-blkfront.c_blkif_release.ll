; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkif_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkif_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.blkfront_info* }
%struct.blkfront_info = type { i32, %struct.xenbus_device* }
%struct.xenbus_device = type { i64 }
%struct.block_device = type { i64 }

@XenbusStateClosing = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, i32)* @blkif_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkif_release(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.blkfront_info*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca %struct.xenbus_device*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %9 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %8, i32 0, i32 0
  %10 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  store %struct.blkfront_info* %10, %struct.blkfront_info** %5, align 8
  %11 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %12 = call %struct.block_device* @bdget_disk(%struct.gendisk* %11, i32 0)
  store %struct.block_device* %12, %struct.block_device** %6, align 8
  %13 = load %struct.block_device*, %struct.block_device** %6, align 8
  %14 = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %20 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %23 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %22, i32 0, i32 1
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %23, align 8
  store %struct.xenbus_device* %24, %struct.xenbus_device** %7, align 8
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %7, align 8
  %26 = icmp ne %struct.xenbus_device* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load %struct.xenbus_device*, %struct.xenbus_device** %7, align 8
  %29 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XenbusStateClosing, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %35 = call i32 @xlvbd_release_gendisk(%struct.blkfront_info* %34)
  %36 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %37 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %36, i32 0, i32 1
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %37, align 8
  %39 = call i32 @xenbus_frontend_closed(%struct.xenbus_device* %38)
  br label %40

40:                                               ; preds = %33, %27, %18
  %41 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %42 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.xenbus_device*, %struct.xenbus_device** %7, align 8
  %45 = icmp ne %struct.xenbus_device* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %48 = call i32 @xlvbd_release_gendisk(%struct.blkfront_info* %47)
  %49 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %50 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %49, i32 0, i32 0
  store %struct.blkfront_info* null, %struct.blkfront_info** %50, align 8
  %51 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %52 = call i32 @kfree(%struct.blkfront_info* %51)
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53, %17
  %55 = load %struct.block_device*, %struct.block_device** %6, align 8
  %56 = call i32 @bdput(%struct.block_device* %55)
  ret i32 0
}

declare dso_local %struct.block_device* @bdget_disk(%struct.gendisk*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xlvbd_release_gendisk(%struct.blkfront_info*) #1

declare dso_local i32 @xenbus_frontend_closed(%struct.xenbus_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.blkfront_info*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
