; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32, i32, %struct.stb0899_internal }
%struct.stb0899_internal = type { i32 }

@STB0899_VSTATUS = common dso_local global i32 0, align 4
@VSTATUS_LOCKEDVIT = common dso_local global i32 0, align 4
@STB0899_AGCIQIN = common dso_local global i32 0, align 4
@AGCIQVALUE = common dso_local global i32 0, align 4
@stb0899_dvbsrf_tab = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"AGCIQVALUE = 0x%02x, C = %d * 0.1 dBm\00", align 1
@STB0899_DEMOD = common dso_local global i32 0, align 4
@IF_AGC_GAIN = common dso_local global i32 0, align 4
@stb0899_dvbs2rf_tab = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"IF_AGC_GAIN = 0x%04x, C = %d * 0.1 dBm\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported delivery system\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stb0899_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stb0899_state*, align 8
  %7 = alloca %struct.stb0899_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %11, align 8
  store %struct.stb0899_state* %12, %struct.stb0899_state** %6, align 8
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %14 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %13, i32 0, i32 2
  store %struct.stb0899_internal* %14, %struct.stb0899_internal** %7, align 8
  %15 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %16 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %91 [
    i32 129, label %18
    i32 130, label %18
    i32 128, label %59
  ]

18:                                               ; preds = %2, %2
  %19 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %20 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %25 = load i32, i32* @STB0899_VSTATUS, align 4
  %26 = call i32 @stb0899_read_reg(%struct.stb0899_state* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @VSTATUS_LOCKEDVIT, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @STB0899_GETFIELD(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %23
  %32 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %33 = load i32, i32* @STB0899_AGCIQIN, align 4
  %34 = call i32 @stb0899_read_reg(%struct.stb0899_state* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @AGCIQVALUE, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @STB0899_GETFIELD(i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @stb0899_dvbsrf_tab, align 4
  %39 = load i32, i32* @stb0899_dvbsrf_tab, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @stb0899_table_lookup(i32 %38, i32 %41, i32 %42)
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 750
  store i32 %47, i32* %45, align 4
  %48 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %49 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FE_DEBUG, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 255
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %50, i32 %51, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %31, %23
  br label %58

58:                                               ; preds = %57, %18
  br label %99

59:                                               ; preds = %2
  %60 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %61 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = load i32, i32* @STB0899_DEMOD, align 4
  %66 = load i32, i32* @IF_AGC_GAIN, align 4
  %67 = call i32 @STB0899_READ_S2REG(i32 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @IF_AGC_GAIN, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @STB0899_GETFIELD(i32 %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @stb0899_dvbs2rf_tab, align 4
  %72 = load i32, i32* @stb0899_dvbs2rf_tab, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @stb0899_table_lookup(i32 %71, i32 %74, i32 %75)
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 750
  store i32 %80, i32* %78, align 4
  %81 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %82 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FE_DEBUG, align 4
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, 16383
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %83, i32 %84, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %64, %59
  br label %99

91:                                               ; preds = %2
  %92 = load %struct.stb0899_state*, %struct.stb0899_state** %6, align 8
  %93 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FE_DEBUG, align 4
  %96 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %94, i32 %95, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %100

99:                                               ; preds = %90, %58
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %91
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i32 @stb0899_table_lookup(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
