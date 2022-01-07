; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkfront_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkfront_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.blkfront_info = type { i32, i32*, %struct.gendisk* }
%struct.gendisk = type { %struct.blkfront_info* }
%struct.block_device = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s removed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @blkfront_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkfront_remove(%struct.xenbus_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca %struct.blkfront_info*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.gendisk*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 1
  %9 = call %struct.blkfront_info* @dev_get_drvdata(i32* %8)
  store %struct.blkfront_info* %9, %struct.blkfront_info** %4, align 8
  store %struct.block_device* null, %struct.block_device** %5, align 8
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %11 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 1
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %13 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %17 = call i32 @blkif_free(%struct.blkfront_info* %16, i32 0)
  %18 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %19 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %22 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %21, i32 0, i32 2
  %23 = load %struct.gendisk*, %struct.gendisk** %22, align 8
  store %struct.gendisk* %23, %struct.gendisk** %6, align 8
  %24 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %25 = icmp ne %struct.gendisk* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %28 = call %struct.block_device* @bdget_disk(%struct.gendisk* %27, i32 0)
  store %struct.block_device* %28, %struct.block_device** %5, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %31 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %33 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.block_device*, %struct.block_device** %5, align 8
  %36 = icmp ne %struct.block_device* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %39 = call i32 @kfree(%struct.blkfront_info* %38)
  store i32 0, i32* %2, align 4
  br label %67

40:                                               ; preds = %29
  %41 = load %struct.block_device*, %struct.block_device** %5, align 8
  %42 = getelementptr inbounds %struct.block_device, %struct.block_device* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %45 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %44, i32 0, i32 0
  %46 = load %struct.blkfront_info*, %struct.blkfront_info** %45, align 8
  store %struct.blkfront_info* %46, %struct.blkfront_info** %4, align 8
  %47 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %48 = icmp ne %struct.blkfront_info* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %40
  %50 = load %struct.block_device*, %struct.block_device** %5, align 8
  %51 = getelementptr inbounds %struct.block_device, %struct.block_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %56 = call i32 @xlvbd_release_gendisk(%struct.blkfront_info* %55)
  %57 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %58 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %57, i32 0, i32 0
  store %struct.blkfront_info* null, %struct.blkfront_info** %58, align 8
  %59 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %60 = call i32 @kfree(%struct.blkfront_info* %59)
  br label %61

61:                                               ; preds = %54, %49, %40
  %62 = load %struct.block_device*, %struct.block_device** %5, align 8
  %63 = getelementptr inbounds %struct.block_device, %struct.block_device* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.block_device*, %struct.block_device** %5, align 8
  %66 = call i32 @bdput(%struct.block_device* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %37
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.blkfront_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @blkif_free(%struct.blkfront_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.block_device* @bdget_disk(%struct.gendisk*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.blkfront_info*) #1

declare dso_local i32 @xlvbd_release_gendisk(%struct.blkfront_info*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
