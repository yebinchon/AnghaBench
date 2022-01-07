; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ccw_device = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@io_subchannel_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Failed to create io subchannel attributes for subchannel 0.%x.%04x (rc=%d)\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@ccwdev_attr_groups = common dso_local global i32 0, align 4
@DEV_STATE_NOT_OPER = common dso_local global i64 0, align 8
@DEV_STATE_OFFLINE = common dso_local global i64 0, align 8
@DEV_STATE_BOXED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@SCH_TODO_UNREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @io_subchannel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_subchannel_probe(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %6 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %7 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %6, i32 0, i32 1
  %8 = bitcast %struct.TYPE_12__* %7 to i64*
  %9 = load i64, i64* %8, align 4
  %10 = call i64 @cio_is_console(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %83

12:                                               ; preds = %1
  %13 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %14 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = call i32 @sysfs_create_group(i32* %15, i32* @io_subchannel_attr_group)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %21 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %25 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %19, %12
  %31 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %32 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %31, i32 0, i32 3
  %33 = call i32 @dev_set_uevent_suppress(%struct.TYPE_11__* %32, i32 0)
  %34 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* @KOBJ_ADD, align 4
  %38 = call i32 @kobject_uevent(i32* %36, i32 %37)
  %39 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %40 = call %struct.ccw_device* @sch_get_cdev(%struct.subchannel* %39)
  store %struct.ccw_device* %40, %struct.ccw_device** %4, align 8
  %41 = load i32, i32* @ccwdev_attr_groups, align 4
  %42 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %43 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %46 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %45, i32 0, i32 0
  %47 = call i32 @device_initialize(%struct.TYPE_10__* %46)
  %48 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %49 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %54 = call i32 @ccw_device_register(%struct.ccw_device* %53)
  %55 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %56 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DEV_STATE_NOT_OPER, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %30
  %63 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %64 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DEV_STATE_OFFLINE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %62
  %71 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %72 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DEV_STATE_BOXED, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %80 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %79, i32 0, i32 0
  %81 = call i32 @get_device(%struct.TYPE_10__* %80)
  br label %82

82:                                               ; preds = %78, %70, %62, %30
  store i32 0, i32* %2, align 4
  br label %129

83:                                               ; preds = %1
  %84 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %85 = call i32 @io_subchannel_init_fields(%struct.subchannel* %84)
  %86 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %87 = call i32 @cio_commit_config(%struct.subchannel* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %117

91:                                               ; preds = %83
  %92 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %93 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = call i32 @sysfs_create_group(i32* %94, i32* @io_subchannel_attr_group)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %117

99:                                               ; preds = %91
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = load i32, i32* @GFP_DMA, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @kzalloc(i32 4, i32 %102)
  %104 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %105 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %107 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %99
  br label %117

111:                                              ; preds = %99
  %112 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %113 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %112, i32 0, i32 1
  %114 = bitcast %struct.TYPE_12__* %113 to i64*
  %115 = load i64, i64* %114, align 4
  %116 = call i32 @css_schedule_eval(i64 %115)
  store i32 0, i32* %2, align 4
  br label %129

117:                                              ; preds = %110, %98, %90
  %118 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %119 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @spin_lock_irq(i32 %120)
  %122 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %123 = load i32, i32* @SCH_TODO_UNREG, align 4
  %124 = call i32 @css_sched_sch_todo(%struct.subchannel* %122, i32 %123)
  %125 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %126 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @spin_unlock_irq(i32 %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %117, %111, %82
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i64 @cio_is_console(i64) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local %struct.ccw_device* @sch_get_cdev(%struct.subchannel*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_10__*) #1

declare dso_local i32 @ccw_device_register(%struct.ccw_device*) #1

declare dso_local i32 @get_device(%struct.TYPE_10__*) #1

declare dso_local i32 @io_subchannel_init_fields(%struct.subchannel*) #1

declare dso_local i32 @cio_commit_config(%struct.subchannel*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @css_schedule_eval(i64) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @css_sched_sch_todo(%struct.subchannel*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
