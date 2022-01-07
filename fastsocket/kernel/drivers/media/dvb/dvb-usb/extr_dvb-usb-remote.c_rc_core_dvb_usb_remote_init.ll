; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_rc_core_dvb_usb_remote_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_rc_core_dvb_usb_remote_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.TYPE_7__, %struct.rc_dev*, i32*, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.rc_dev = type { i8*, %struct.dvb_usb_device*, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@RC_DRIVER_SCANCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IR-receiver inside an USB DVB receiver\00", align 1
@dvb_usb_read_remote_control = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"schedule remote query interval to %d msecs.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @rc_core_dvb_usb_remote_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_core_dvb_usb_remote_init(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rc_dev*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %7 = call %struct.rc_dev* (...) @rc_allocate_device()
  store %struct.rc_dev* %7, %struct.rc_dev** %6, align 8
  %8 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %9 = icmp ne %struct.rc_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %113

13:                                               ; preds = %1
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %20 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 8
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %27 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %34 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %41 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @RC_DRIVER_SCANCODE, align 4
  %43 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %45, i32 0, i32 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %49 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %48, i32 0, i32 4
  %50 = call i32 @usb_to_input_id(%struct.TYPE_8__* %47, i32* %49)
  %51 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %52 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %57 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %59 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %58, i32 0, i32 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %63 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32* %61, i32** %64, align 8
  %65 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %66 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %67 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %66, i32 0, i32 1
  store %struct.dvb_usb_device* %65, %struct.dvb_usb_device** %67, align 8
  %68 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %69 = call i32 @rc_register_device(%struct.rc_dev* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %13
  %73 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %74 = call i32 @rc_free_device(%struct.rc_dev* %73)
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %113

76:                                               ; preds = %13
  %77 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %77, i32 0, i32 3
  store i32* null, i32** %78, align 8
  %79 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %80 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %80, i32 0, i32 2
  store %struct.rc_dev* %79, %struct.rc_dev** %81, align 8
  %82 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %76
  %89 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88, %76
  store i32 0, i32* %2, align 4
  br label %113

96:                                               ; preds = %88
  %97 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %97, i32 0, i32 0
  %99 = load i32, i32* @dvb_usb_read_remote_control, align 4
  %100 = call i32 @INIT_DELAYED_WORK(i32* %98, i32 %99)
  %101 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %102 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %109 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %108, i32 0, i32 0
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @msecs_to_jiffies(i32 %110)
  %112 = call i32 @schedule_delayed_work(i32* %109, i32 %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %96, %95, %72, %10
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.rc_dev* @rc_allocate_device(...) #1

declare dso_local i32 @usb_to_input_id(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
