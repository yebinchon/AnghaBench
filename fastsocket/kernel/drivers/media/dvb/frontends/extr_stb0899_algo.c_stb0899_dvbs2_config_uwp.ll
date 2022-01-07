; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_dvbs2_config_uwp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_dvbs2_config_uwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_config*, %struct.stb0899_internal }
%struct.stb0899_config = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.stb0899_internal = type { i32, i32 }

@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@UWP_CNTRL1 = common dso_local global i32 0, align 4
@UWP_CNTRL2 = common dso_local global i32 0, align 4
@UWP_CNTRL3 = common dso_local global i32 0, align 4
@UWP_ESN0_AVE = common dso_local global i32 0, align 4
@UWP_ESN0_QUANT = common dso_local global i32 0, align 4
@UWP_TH_SOF = common dso_local global i32 0, align 4
@FE_COARSE_TRK = common dso_local global i32 0, align 4
@FE_FINE_TRK = common dso_local global i32 0, align 4
@UWP_MISS_TH = common dso_local global i32 0, align 4
@UWP_TH_ACQ = common dso_local global i32 0, align 4
@UWP_TH_TRACK = common dso_local global i32 0, align 4
@STB0899_BASE_UWP_CNTRL1 = common dso_local global i32 0, align 4
@STB0899_OFF0_UWP_CNTRL1 = common dso_local global i32 0, align 4
@STB0899_BASE_UWP_CNTRL2 = common dso_local global i32 0, align 4
@STB0899_OFF0_UWP_CNTRL2 = common dso_local global i32 0, align 4
@STB0899_BASE_UWP_CNTRL3 = common dso_local global i32 0, align 4
@STB0899_OFF0_UWP_CNTRL3 = common dso_local global i32 0, align 4
@SOF_SRCH_TO = common dso_local global i32 0, align 4
@SOF_SEARCH_TIMEOUT = common dso_local global i32 0, align 4
@STB0899_BASE_SOF_SRCH_TO = common dso_local global i32 0, align 4
@STB0899_OFF0_SOF_SRCH_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_dvbs2_config_uwp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_dvbs2_config_uwp(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca %struct.stb0899_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %9 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %10 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %9, i32 0, i32 1
  store %struct.stb0899_internal* %10, %struct.stb0899_internal** %3, align 8
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %12 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %11, i32 0, i32 0
  %13 = load %struct.stb0899_config*, %struct.stb0899_config** %12, align 8
  store %struct.stb0899_config* %13, %struct.stb0899_config** %4, align 8
  %14 = load i32, i32* @STB0899_S2DEMOD, align 4
  %15 = load i32, i32* @UWP_CNTRL1, align 4
  %16 = call i32 @STB0899_READ_S2REG(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @STB0899_S2DEMOD, align 4
  %18 = load i32, i32* @UWP_CNTRL2, align 4
  %19 = call i32 @STB0899_READ_S2REG(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @STB0899_S2DEMOD, align 4
  %21 = load i32, i32* @UWP_CNTRL3, align 4
  %22 = call i32 @STB0899_READ_S2REG(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @UWP_ESN0_AVE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %26 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @STB0899_SETFIELD_VAL(i32 %23, i32 %24, i32 %27)
  %29 = load i32, i32* @UWP_ESN0_QUANT, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %32 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @STB0899_SETFIELD_VAL(i32 %29, i32 %30, i32 %33)
  %35 = load i32, i32* @UWP_TH_SOF, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %38 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @STB0899_SETFIELD_VAL(i32 %35, i32 %36, i32 %39)
  %41 = load i32, i32* @FE_COARSE_TRK, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %44 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @STB0899_SETFIELD_VAL(i32 %41, i32 %42, i32 %45)
  %47 = load i32, i32* @FE_FINE_TRK, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %50 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @STB0899_SETFIELD_VAL(i32 %47, i32 %48, i32 %51)
  %53 = load i32, i32* @UWP_MISS_TH, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %56 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @STB0899_SETFIELD_VAL(i32 %53, i32 %54, i32 %57)
  %59 = load i32, i32* @UWP_TH_ACQ, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %62 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @STB0899_SETFIELD_VAL(i32 %59, i32 %60, i32 %63)
  %65 = load i32, i32* @UWP_TH_TRACK, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %68 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @STB0899_SETFIELD_VAL(i32 %65, i32 %66, i32 %69)
  %71 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %72 = load i32, i32* @STB0899_S2DEMOD, align 4
  %73 = load i32, i32* @STB0899_BASE_UWP_CNTRL1, align 4
  %74 = load i32, i32* @STB0899_OFF0_UWP_CNTRL1, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %78 = load i32, i32* @STB0899_S2DEMOD, align 4
  %79 = load i32, i32* @STB0899_BASE_UWP_CNTRL2, align 4
  %80 = load i32, i32* @STB0899_OFF0_UWP_CNTRL2, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %84 = load i32, i32* @STB0899_S2DEMOD, align 4
  %85 = load i32, i32* @STB0899_BASE_UWP_CNTRL3, align 4
  %86 = load i32, i32* @STB0899_OFF0_UWP_CNTRL3, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @STB0899_S2DEMOD, align 4
  %90 = load i32, i32* @SOF_SRCH_TO, align 4
  %91 = call i32 @STB0899_READ_S2REG(i32 %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* @SOF_SEARCH_TIMEOUT, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %95 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @STB0899_SETFIELD_VAL(i32 %92, i32 %93, i32 %96)
  %98 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %99 = load i32, i32* @STB0899_S2DEMOD, align 4
  %100 = load i32, i32* @STB0899_BASE_SOF_SRCH_TO, align 4
  %101 = load i32, i32* @STB0899_OFF0_SOF_SRCH_TO, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %98, i32 %99, i32 %100, i32 %101, i32 %102)
  ret void
}

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
