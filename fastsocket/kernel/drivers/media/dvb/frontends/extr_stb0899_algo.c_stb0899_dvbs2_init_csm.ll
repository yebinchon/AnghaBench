; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_dvbs2_init_csm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_dvbs2_init_csm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_internal }
%struct.stb0899_internal = type { i32, i32 }

@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@CSM_CNTRL1 = common dso_local global i32 0, align 4
@CSM_AUTO_PARAM = common dso_local global i32 0, align 4
@STB0899_BASE_CSM_CNTRL1 = common dso_local global i32 0, align 4
@STB0899_OFF0_CSM_CNTRL1 = common dso_local global i32 0, align 4
@CSM_CNTRL2 = common dso_local global i32 0, align 4
@CSM_CNTRL3 = common dso_local global i32 0, align 4
@CSM_CNTRL4 = common dso_local global i32 0, align 4
@CSM_DVT_TABLE = common dso_local global i32 0, align 4
@CSM_TWO_PASS = common dso_local global i32 0, align 4
@CSM_AGC_GAIN = common dso_local global i32 0, align 4
@CSM_AGC_SHIFT = common dso_local global i32 0, align 4
@FE_LOOP_SHIFT = common dso_local global i32 0, align 4
@CSM_GAMMA_ACQ = common dso_local global i32 0, align 4
@CSM_GAMMA_RHOACQ = common dso_local global i32 0, align 4
@CSM_GAMMA_TRACK = common dso_local global i32 0, align 4
@CSM_GAMMA_RHOTRACK = common dso_local global i32 0, align 4
@CSM_LOCKCOUNT_THRESH = common dso_local global i32 0, align 4
@CSM_PHASEDIFF_THRESH = common dso_local global i32 0, align 4
@STB0899_BASE_CSM_CNTRL2 = common dso_local global i32 0, align 4
@STB0899_OFF0_CSM_CNTRL2 = common dso_local global i32 0, align 4
@STB0899_BASE_CSM_CNTRL3 = common dso_local global i32 0, align 4
@STB0899_OFF0_CSM_CNTRL3 = common dso_local global i32 0, align 4
@STB0899_BASE_CSM_CNTRL4 = common dso_local global i32 0, align 4
@STB0899_OFF0_CSM_CNTRL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*, i32, i32)* @stb0899_dvbs2_init_csm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_dvbs2_init_csm(%struct.stb0899_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stb0899_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stb0899_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %23 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %24 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %23, i32 0, i32 0
  store %struct.stb0899_internal* %24, %struct.stb0899_internal** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 6, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 128, i32* %13, align 4
  %25 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %26 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.stb0899_internal*, %struct.stb0899_internal** %7, align 8
  %29 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %27, %30
  %32 = icmp sle i32 %31, 4
  br i1 %32, label %33, label %143

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp ule i32 %34, 11
  br i1 %35, label %36, label %143

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %143

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %49 [
    i32 135, label %41
    i32 132, label %42
    i32 134, label %43
    i32 133, label %44
    i32 131, label %45
    i32 130, label %46
    i32 129, label %47
    i32 128, label %48
  ]

41:                                               ; preds = %39
  store i32 25, i32* %14, align 4
  store i32 2700, i32* %15, align 4
  store i32 12, i32* %16, align 4
  store i32 180, i32* %17, align 4
  store i32 8, i32* %18, align 4
  br label %50

42:                                               ; preds = %39
  store i32 38, i32* %14, align 4
  store i32 7182, i32* %15, align 4
  store i32 14, i32* %16, align 4
  store i32 308, i32* %17, align 4
  store i32 8, i32* %18, align 4
  br label %50

43:                                               ; preds = %39
  store i32 42, i32* %14, align 4
  store i32 9408, i32* %15, align 4
  store i32 17, i32* %16, align 4
  store i32 476, i32* %17, align 4
  store i32 8, i32* %18, align 4
  br label %50

44:                                               ; preds = %39
  store i32 53, i32* %14, align 4
  store i32 16642, i32* %15, align 4
  store i32 19, i32* %16, align 4
  store i32 646, i32* %17, align 4
  store i32 8, i32* %18, align 4
  br label %50

45:                                               ; preds = %39
  store i32 53, i32* %14, align 4
  store i32 17119, i32* %15, align 4
  store i32 22, i32* %16, align 4
  store i32 880, i32* %17, align 4
  store i32 8, i32* %18, align 4
  br label %50

46:                                               ; preds = %39
  store i32 55, i32* %14, align 4
  store i32 19250, i32* %15, align 4
  store i32 23, i32* %16, align 4
  store i32 989, i32* %17, align 4
  store i32 8, i32* %18, align 4
  br label %50

47:                                               ; preds = %39
  store i32 60, i32* %14, align 4
  store i32 24240, i32* %15, align 4
  store i32 24, i32* %16, align 4
  store i32 1176, i32* %17, align 4
  store i32 8, i32* %18, align 4
  br label %50

48:                                               ; preds = %39
  store i32 66, i32* %14, align 4
  store i32 29634, i32* %15, align 4
  store i32 24, i32* %16, align 4
  store i32 1176, i32* %17, align 4
  store i32 8, i32* %18, align 4
  br label %50

49:                                               ; preds = %39
  store i32 66, i32* %14, align 4
  store i32 29634, i32* %15, align 4
  store i32 24, i32* %16, align 4
  store i32 1176, i32* %17, align 4
  store i32 8, i32* %18, align 4
  br label %50

50:                                               ; preds = %49, %48, %47, %46, %45, %44, %43, %42, %41
  %51 = load i32, i32* @STB0899_S2DEMOD, align 4
  %52 = load i32, i32* @CSM_CNTRL1, align 4
  %53 = call i32 @STB0899_READ_S2REG(i32 %51, i32 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* @CSM_AUTO_PARAM, align 4
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @STB0899_SETFIELD_VAL(i32 %54, i32 %55, i32 0)
  %57 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %58 = load i32, i32* @STB0899_S2DEMOD, align 4
  %59 = load i32, i32* @STB0899_BASE_CSM_CNTRL1, align 4
  %60 = load i32, i32* @STB0899_OFF0_CSM_CNTRL1, align 4
  %61 = load i32, i32* %19, align 4
  %62 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @STB0899_S2DEMOD, align 4
  %64 = load i32, i32* @CSM_CNTRL1, align 4
  %65 = call i32 @STB0899_READ_S2REG(i32 %63, i32 %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* @STB0899_S2DEMOD, align 4
  %67 = load i32, i32* @CSM_CNTRL2, align 4
  %68 = call i32 @STB0899_READ_S2REG(i32 %66, i32 %67)
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* @STB0899_S2DEMOD, align 4
  %70 = load i32, i32* @CSM_CNTRL3, align 4
  %71 = call i32 @STB0899_READ_S2REG(i32 %69, i32 %70)
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* @STB0899_S2DEMOD, align 4
  %73 = load i32, i32* @CSM_CNTRL4, align 4
  %74 = call i32 @STB0899_READ_S2REG(i32 %72, i32 %73)
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* @CSM_DVT_TABLE, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @STB0899_SETFIELD_VAL(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @CSM_TWO_PASS, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @STB0899_SETFIELD_VAL(i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @CSM_AGC_GAIN, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @STB0899_SETFIELD_VAL(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* @CSM_AGC_SHIFT, align 4
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @STB0899_SETFIELD_VAL(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @FE_LOOP_SHIFT, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @STB0899_SETFIELD_VAL(i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* @CSM_GAMMA_ACQ, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @STB0899_SETFIELD_VAL(i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* @CSM_GAMMA_RHOACQ, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @STB0899_SETFIELD_VAL(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* @CSM_GAMMA_TRACK, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @STB0899_SETFIELD_VAL(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* @CSM_GAMMA_RHOTRACK, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @STB0899_SETFIELD_VAL(i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* @CSM_LOCKCOUNT_THRESH, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @STB0899_SETFIELD_VAL(i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* @CSM_PHASEDIFF_THRESH, align 4
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @STB0899_SETFIELD_VAL(i32 %115, i32 %116, i32 %117)
  %119 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %120 = load i32, i32* @STB0899_S2DEMOD, align 4
  %121 = load i32, i32* @STB0899_BASE_CSM_CNTRL1, align 4
  %122 = load i32, i32* @STB0899_OFF0_CSM_CNTRL1, align 4
  %123 = load i32, i32* %19, align 4
  %124 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %119, i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %126 = load i32, i32* @STB0899_S2DEMOD, align 4
  %127 = load i32, i32* @STB0899_BASE_CSM_CNTRL2, align 4
  %128 = load i32, i32* @STB0899_OFF0_CSM_CNTRL2, align 4
  %129 = load i32, i32* %20, align 4
  %130 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %132 = load i32, i32* @STB0899_S2DEMOD, align 4
  %133 = load i32, i32* @STB0899_BASE_CSM_CNTRL3, align 4
  %134 = load i32, i32* @STB0899_OFF0_CSM_CNTRL3, align 4
  %135 = load i32, i32* %21, align 4
  %136 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %138 = load i32, i32* @STB0899_S2DEMOD, align 4
  %139 = load i32, i32* @STB0899_BASE_CSM_CNTRL4, align 4
  %140 = load i32, i32* @STB0899_OFF0_CSM_CNTRL4, align 4
  %141 = load i32, i32* %22, align 4
  %142 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %137, i32 %138, i32 %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %50, %36, %33, %3
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
