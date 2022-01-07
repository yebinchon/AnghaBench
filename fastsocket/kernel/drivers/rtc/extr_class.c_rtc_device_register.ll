; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_class.c_rtc_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_class.c_rtc_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.module*, %struct.rtc_class_ops* }
%struct.TYPE_4__ = type { i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.rtc_class_ops = type { i32 }
%struct.module = type { i32 }

@rtc_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@idr_lock = common dso_local global i32 0, align 4
@MAX_ID_MASK = common dso_local global i32 0, align 4
@rtc_class = common dso_local global i32 0, align 4
@rtc_device_release = common dso_local global i32 0, align 4
@RTC_DEVICE_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rtc%d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"rtc core: registered %s as %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"rtc core: unable to register %s, err = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtc_device* @rtc_device_register(i8* %0, %struct.device* %1, %struct.rtc_class_ops* %2, %struct.module* %3) #0 {
  %5 = alloca %struct.rtc_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.rtc_class_ops*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca %struct.rtc_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store %struct.rtc_class_ops* %2, %struct.rtc_class_ops** %8, align 8
  store %struct.module* %3, %struct.module** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @idr_pre_get(i32* @rtc_idr, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  br label %115

19:                                               ; preds = %4
  %20 = call i32 @mutex_lock(i32* @idr_lock)
  %21 = call i32 @idr_get_new(i32* @rtc_idr, i32* null, i32* %11)
  store i32 %21, i32* %12, align 4
  %22 = call i32 @mutex_unlock(i32* @idr_lock)
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %115

26:                                               ; preds = %19
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @MAX_ID_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.rtc_device* @kzalloc(i32 64, i32 %30)
  store %struct.rtc_device* %31, %struct.rtc_device** %10, align 8
  %32 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %33 = icmp eq %struct.rtc_device* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %110

37:                                               ; preds = %26
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %40 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %8, align 8
  %42 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %43 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %42, i32 0, i32 9
  store %struct.rtc_class_ops* %41, %struct.rtc_class_ops** %43, align 8
  %44 = load %struct.module*, %struct.module** %9, align 8
  %45 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %46 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %45, i32 0, i32 8
  store %struct.module* %44, %struct.module** %46, align 8
  %47 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %48 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %47, i32 0, i32 1
  store i32 64, i32* %48, align 4
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %51 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store %struct.device* %49, %struct.device** %52, align 8
  %53 = load i32, i32* @rtc_class, align 4
  %54 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %55 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @rtc_device_release, align 4
  %58 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %59 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %62 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %61, i32 0, i32 7
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %65 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %64, i32 0, i32 6
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %68 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %67, i32 0, i32 5
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %71 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %70, i32 0, i32 4
  %72 = call i32 @init_waitqueue_head(i32* %71)
  %73 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %74 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* @RTC_DEVICE_NAME_SIZE, align 4
  %78 = call i32 @strlcpy(i32 %75, i8* %76, i32 %77)
  %79 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %80 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %79, i32 0, i32 2
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @dev_set_name(%struct.TYPE_4__* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %84 = call i32 @rtc_dev_prepare(%struct.rtc_device* %83)
  %85 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %86 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %85, i32 0, i32 2
  %87 = call i32 @device_register(%struct.TYPE_4__* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %37
  br label %107

91:                                               ; preds = %37
  %92 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %93 = call i32 @rtc_dev_add_device(%struct.rtc_device* %92)
  %94 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %95 = call i32 @rtc_sysfs_add_device(%struct.rtc_device* %94)
  %96 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %97 = call i32 @rtc_proc_add_device(%struct.rtc_device* %96)
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %100 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %103 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %102, i32 0, i32 2
  %104 = call i32 @dev_name(%struct.TYPE_4__* %103)
  %105 = call i32 @dev_info(%struct.device* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  store %struct.rtc_device* %106, %struct.rtc_device** %5, align 8
  br label %122

107:                                              ; preds = %90
  %108 = load %struct.rtc_device*, %struct.rtc_device** %10, align 8
  %109 = call i32 @kfree(%struct.rtc_device* %108)
  br label %110

110:                                              ; preds = %107, %34
  %111 = call i32 @mutex_lock(i32* @idr_lock)
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @idr_remove(i32* @rtc_idr, i32 %112)
  %114 = call i32 @mutex_unlock(i32* @idr_lock)
  br label %115

115:                                              ; preds = %110, %25, %16
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %117, i32 %118)
  %120 = load i32, i32* %12, align 4
  %121 = call %struct.rtc_device* @ERR_PTR(i32 %120)
  store %struct.rtc_device* %121, %struct.rtc_device** %5, align 8
  br label %122

122:                                              ; preds = %115, %91
  %123 = load %struct.rtc_device*, %struct.rtc_device** %5, align 8
  ret %struct.rtc_device* %123
}

declare dso_local i64 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.rtc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @rtc_dev_prepare(%struct.rtc_device*) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @rtc_dev_add_device(%struct.rtc_device*) #1

declare dso_local i32 @rtc_sysfs_add_device(%struct.rtc_device*) #1

declare dso_local i32 @rtc_proc_add_device(%struct.rtc_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.rtc_device*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local %struct.rtc_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
