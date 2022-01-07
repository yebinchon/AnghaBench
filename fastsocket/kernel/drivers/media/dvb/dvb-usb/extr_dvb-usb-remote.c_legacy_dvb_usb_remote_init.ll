; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_remote_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_remote_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, %struct.TYPE_7__, %struct.input_dev*, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.input_dev = type { i8*, i32*, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IR-receiver inside an USB DVB receiver\00", align 1
@legacy_dvb_usb_getkeycode = common dso_local global i32 0, align 4
@legacy_dvb_usb_setkeycode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"key map size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"setting bit for event %d item %d\0A\00", align 1
@REP_PERIOD = common dso_local global i64 0, align 8
@REP_DELAY = common dso_local global i64 0, align 8
@legacy_dvb_usb_read_remote_control = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"schedule remote query interval to %d msecs.\00", align 1
@DVB_USB_STATE_REMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @legacy_dvb_usb_remote_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_dvb_usb_remote_init(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_dev*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %8 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %8, %struct.input_dev** %7, align 8
  %9 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %10 = icmp ne %struct.input_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %142

14:                                               ; preds = %1
  %15 = load i32, i32* @EV_KEY, align 4
  %16 = call i32 @BIT_MASK(i32 %15)
  %17 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %28, i32 0, i32 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 6
  %33 = call i32 @usb_to_input_id(%struct.TYPE_8__* %30, i32* %32)
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32* %37, i32** %40, align 8
  %41 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %42, i32 0, i32 3
  store %struct.input_dev* %41, %struct.input_dev** %43, align 8
  %44 = load i32, i32* @legacy_dvb_usb_getkeycode, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @legacy_dvb_usb_setkeycode, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, i32, ...) @deb_rc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %87, %14
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %55
  %63 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %64 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 (i8*, i32, ...) @deb_rc(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %75 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @set_bit(i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %62
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %55

90:                                               ; preds = %55
  %91 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %92 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @REP_PERIOD, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %94, i32* %99, align 4
  %100 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %101 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 150
  %105 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %106 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @REP_DELAY, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %104, i32* %109, align 4
  %110 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %111 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %112 = call i32 @input_set_drvdata(%struct.input_dev* %110, %struct.dvb_usb_device* %111)
  %113 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %114 = call i32 @input_register_device(%struct.input_dev* %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %90
  %118 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %119 = call i32 @input_free_device(%struct.input_dev* %118)
  br label %120

120:                                              ; preds = %117, %90
  %121 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %122 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %6, align 4
  %125 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %126 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %125, i32 0, i32 1
  %127 = load i32, i32* @legacy_dvb_usb_read_remote_control, align 4
  %128 = call i32 @INIT_DELAYED_WORK(i32* %126, i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %132 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %131, i32 0, i32 1
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @msecs_to_jiffies(i32 %133)
  %135 = call i32 @schedule_delayed_work(i32* %132, i32 %134)
  %136 = load i32, i32* @DVB_USB_STATE_REMOTE, align 4
  %137 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %138 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %120, %11
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @usb_to_input_id(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @deb_rc(i8*, i32, ...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.dvb_usb_device*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

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
