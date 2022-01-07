; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_dm04_lme2510_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_dm04_lme2510_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.lme2510_state* }
%struct.lme2510_state = type { i32, i32, i32, i32, i32, i32 }

@tda10086_attach = common dso_local global i32 0, align 4
@tda10086_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"TUN Found Frontend TDA10086\00", align 1
@TUNER_LG = common dso_local global i32 0, align 4
@dvb_usb_lme2510_firmware = common dso_local global i32 0, align 4
@stv0288_attach = common dso_local global i32 0, align 4
@lme_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"FE Found Stv0288\00", align 1
@TUNER_S7395 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"DM04 Not Supported\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@dm04_lme2510_set_voltage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dm04_lme2510_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm04_lme2510_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.lme2510_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  store %struct.lme2510_state* %10, %struct.lme2510_state** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %12 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %14 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %13, i32 0, i32 1
  store i32 4, i32* %14, align 4
  %15 = load i32, i32* @tda10086_attach, align 4
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i8* @dvb_attach(i32 %15, i32* @tda10086_config, i32* %19)
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %23, align 8
  %24 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %1
  %29 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %31 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %30, i32 0, i32 2
  store i32 4, i32* %31, align 4
  %32 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %33 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %32, i32 0, i32 3
  store i32 4, i32* %33, align 4
  %34 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %35 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %34, i32 0, i32 4
  store i32 192, i32* %35, align 4
  %36 = load i32, i32* @TUNER_LG, align 4
  %37 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %38 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @dvb_usb_lme2510_firmware, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %28
  store i32 1, i32* @dvb_usb_lme2510_firmware, align 4
  %42 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @lme_firmware_switch(i32 %46, i32 1)
  store i32 %47, i32* %5, align 4
  br label %49

48:                                               ; preds = %28
  store i32 0, i32* @dvb_usb_lme2510_firmware, align 4
  br label %49

49:                                               ; preds = %48, %41
  br label %92

50:                                               ; preds = %1
  %51 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %52 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %51, i32 0, i32 1
  store i32 5, i32* %52, align 4
  %53 = load i32, i32* @stv0288_attach, align 4
  %54 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = call i8* @dvb_attach(i32 %53, i32* @lme_config, i32* %57)
  %59 = bitcast i8* %58 to %struct.TYPE_6__*
  %60 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %60, i32 0, i32 0
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %61, align 8
  %62 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp ne %struct.TYPE_6__* %64, null
  br i1 %65, label %66, label %87

66:                                               ; preds = %50
  %67 = call i32 @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %69 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %68, i32 0, i32 2
  store i32 4, i32* %69, align 4
  %70 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %71 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %70, i32 0, i32 3
  store i32 5, i32* %71, align 4
  %72 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %73 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %72, i32 0, i32 4
  store i32 192, i32* %73, align 4
  %74 = load i32, i32* @TUNER_S7395, align 4
  %75 = load %struct.lme2510_state*, %struct.lme2510_state** %4, align 8
  %76 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @dvb_usb_lme2510_firmware, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %66
  store i32 0, i32* @dvb_usb_lme2510_firmware, align 4
  %80 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @lme_firmware_switch(i32 %84, i32 1)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %79, %66
  br label %91

87:                                               ; preds = %50
  %88 = call i32 @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %114

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %49
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = call i32 @kfree(%struct.TYPE_6__* %98)
  %100 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %100, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %101, align 8
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %114

104:                                              ; preds = %92
  %105 = load i32, i32* @dm04_lme2510_set_voltage, align 4
  %106 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 4
  %111 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %112 = call i32 @lme_name(%struct.dvb_usb_adapter* %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %104, %95, %87
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i8* @dvb_attach(i32, i32*, i32*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @lme_firmware_switch(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @lme_name(%struct.dvb_usb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
