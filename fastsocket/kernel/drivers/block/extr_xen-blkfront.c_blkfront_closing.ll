; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkfront_closing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_blkfront_closing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_info = type { i32, i64, %struct.xenbus_device* }
%struct.xenbus_device = type { i64 }
%struct.block_device = type { i32, i64 }

@XenbusStateClosing = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Device in use; refusing to close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkfront_info*)* @blkfront_closing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkfront_closing(%struct.blkfront_info* %0) #0 {
  %2 = alloca %struct.blkfront_info*, align 8
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca %struct.block_device*, align 8
  store %struct.blkfront_info* %0, %struct.blkfront_info** %2, align 8
  %5 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %6 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %5, i32 0, i32 2
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  store %struct.xenbus_device* %7, %struct.xenbus_device** %3, align 8
  store %struct.block_device* null, %struct.block_device** %4, align 8
  %8 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %9 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %12 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XenbusStateClosing, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %18 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %22 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %27 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.block_device* @bdget_disk(i64 %28, i32 0)
  store %struct.block_device* %29, %struct.block_device** %4, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %32 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.block_device*, %struct.block_device** %4, align 8
  %35 = icmp ne %struct.block_device* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %38 = call i32 @xenbus_frontend_closed(%struct.xenbus_device* %37)
  br label %63

39:                                               ; preds = %30
  %40 = load %struct.block_device*, %struct.block_device** %4, align 8
  %41 = getelementptr inbounds %struct.block_device, %struct.block_device* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.block_device*, %struct.block_device** %4, align 8
  %44 = getelementptr inbounds %struct.block_device, %struct.block_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @xenbus_dev_error(%struct.xenbus_device* %48, i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %57

52:                                               ; preds = %39
  %53 = load %struct.blkfront_info*, %struct.blkfront_info** %2, align 8
  %54 = call i32 @xlvbd_release_gendisk(%struct.blkfront_info* %53)
  %55 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %56 = call i32 @xenbus_frontend_closed(%struct.xenbus_device* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.block_device*, %struct.block_device** %4, align 8
  %59 = getelementptr inbounds %struct.block_device, %struct.block_device* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.block_device*, %struct.block_device** %4, align 8
  %62 = call i32 @bdput(%struct.block_device* %61)
  br label %63

63:                                               ; preds = %57, %36, %16
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.block_device* @bdget_disk(i64, i32) #1

declare dso_local i32 @xenbus_frontend_closed(%struct.xenbus_device*) #1

declare dso_local i32 @xenbus_dev_error(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @xlvbd_release_gendisk(%struct.blkfront_info*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
