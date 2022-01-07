; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_ubi_detach_mtd_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_ubi_detach_mtd_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@UBI_MAX_DEVICES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ubi_devices_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s reference count %d, destroy anyway\00", align 1
@ubi_devices = common dso_local global i32** null, align 8
@UBI_VOLUME_REMOVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"detaching mtd%d from ubi%d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"mtd%d is detached from ubi%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_detach_mtd_dev(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %125

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.ubi_device* @ubi_get_device(i32 %17)
  store %struct.ubi_device* %18, %struct.ubi_device** %6, align 8
  %19 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %20 = icmp ne %struct.ubi_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %125

24:                                               ; preds = %16
  %25 = call i32 @spin_lock(i32* @ubi_devices_lock)
  %26 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 1
  %28 = call i32 @put_device(i32* %27)
  %29 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %30 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = call i32 @spin_unlock(i32* @ubi_devices_lock)
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %125

44:                                               ; preds = %37
  %45 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %46 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %49 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ubi_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %50)
  br label %52

52:                                               ; preds = %44, %24
  %53 = load i32**, i32*** @ubi_devices, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  store i32* null, i32** %56, align 8
  %57 = call i32 @spin_unlock(i32* @ubi_devices_lock)
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %60 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @ubi_assert(i32 %63)
  %65 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %66 = load i32, i32* @UBI_VOLUME_REMOVED, align 4
  %67 = call i32 @ubi_notify_all(%struct.ubi_device* %65, i32 %66, i32* null)
  %68 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %69 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @dbg_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %76 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %75, i32 0, i32 8
  %77 = call i32 @unregister_reboot_notifier(i32* %76)
  %78 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %79 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %52
  %83 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %84 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @kthread_stop(i64 %85)
  br label %87

87:                                               ; preds = %82, %52
  %88 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %89 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %88, i32 0, i32 1
  %90 = call i32 @get_device(i32* %89)
  %91 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %92 = call i32 @uif_close(%struct.ubi_device* %91)
  %93 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %94 = call i32 @ubi_wl_close(%struct.ubi_device* %93)
  %95 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %96 = call i32 @free_internal_volumes(%struct.ubi_device* %95)
  %97 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %98 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @vfree(i32 %99)
  %101 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %102 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = call i32 @put_mtd_device(%struct.TYPE_2__* %103)
  %105 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %106 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @vfree(i32 %107)
  %109 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %110 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @vfree(i32 %111)
  %113 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %114 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %119 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ubi_msg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %120)
  %122 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %123 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %122, i32 0, i32 1
  %124 = call i32 @put_device(i32* %123)
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %87, %40, %21, %13
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.ubi_device* @ubi_get_device(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubi_err(i8*, i32, i64) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_notify_all(%struct.ubi_device*, i32, i32*) #1

declare dso_local i32 @dbg_msg(i8*, i32, i32) #1

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @uif_close(%struct.ubi_device*) #1

declare dso_local i32 @ubi_wl_close(%struct.ubi_device*) #1

declare dso_local i32 @free_internal_volumes(%struct.ubi_device*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @put_mtd_device(%struct.TYPE_2__*) #1

declare dso_local i32 @ubi_msg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
