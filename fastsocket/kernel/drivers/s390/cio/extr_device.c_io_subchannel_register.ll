; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_10__*, %struct.TYPE_11__, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.subchannel = type { i32, %struct.TYPE_11__ }

@.str = private unnamed_addr constant [44 x i8] c"device_reprobe() returned %d for 0.%x.%04x\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not register ccw dev 0.%x.%04x: %d\0A\00", align 1
@ccw_device_init_count = common dso_local global i32 0, align 4
@ccw_device_init_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @io_subchannel_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_subchannel_register(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %8 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.subchannel* @to_subchannel(i32 %10)
  store %struct.subchannel* %11, %struct.subchannel** %3, align 8
  %12 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %13 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %12, i32 0, i32 1
  %14 = call i64 @device_is_registered(%struct.TYPE_11__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %107

17:                                               ; preds = %1
  %18 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %19 = call i32 @css_update_ssd_info(%struct.subchannel* %18)
  %20 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %21 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %20, i32 0, i32 1
  %22 = call i64 @device_is_registered(%struct.TYPE_11__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  %25 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %26 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 1
  %32 = call i32 @device_reprobe(%struct.TYPE_11__* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %38 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %35, %29
  br label %51

51:                                               ; preds = %50, %24
  store i32 0, i32* %5, align 4
  br label %96

52:                                               ; preds = %17
  %53 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %54 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %53, i32 0, i32 1
  %55 = call i32 @dev_set_uevent_suppress(%struct.TYPE_11__* %54, i32 0)
  %56 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %57 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* @KOBJ_ADD, align 4
  %60 = call i32 @kobject_uevent(i32* %58, i32 %59)
  %61 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %62 = call i32 @ccw_device_register(%struct.ccw_device* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %52
  %66 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %67 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %73 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %77, i32 %78)
  %80 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %81 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @spin_lock_irqsave(i32 %82, i64 %83)
  %85 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %86 = call i32 @sch_set_cdev(%struct.subchannel* %85, i32* null)
  %87 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %88 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32 %89, i64 %90)
  %92 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %93 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %92, i32 0, i32 1
  %94 = call i32 @put_device(%struct.TYPE_11__* %93)
  br label %107

95:                                               ; preds = %52
  br label %96

96:                                               ; preds = %95, %51
  %97 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %98 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  %102 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %103 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = call i32 @wake_up(i32* %105)
  br label %107

107:                                              ; preds = %96, %65, %16
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = call i64 @atomic_dec_and_test(i32* @ccw_device_init_count)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @wake_up(i32* @ccw_device_init_wq)
  br label %115

115:                                              ; preds = %113, %110, %107
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @device_is_registered(%struct.TYPE_11__*) #1

declare dso_local i32 @css_update_ssd_info(%struct.subchannel*) #1

declare dso_local i32 @device_reprobe(%struct.TYPE_11__*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @ccw_device_register(%struct.ccw_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @sch_set_cdev(%struct.subchannel*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @put_device(%struct.TYPE_11__*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
