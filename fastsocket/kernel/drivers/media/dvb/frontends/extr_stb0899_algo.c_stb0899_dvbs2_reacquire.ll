; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_dvbs2_reacquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_dvbs2_reacquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32 }

@DVBS2_RESET = common dso_local global i32 0, align 4
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@STB0899_BASE_RESET_CNTRL = common dso_local global i32 0, align 4
@STB0899_OFF0_RESET_CNTRL = common dso_local global i32 0, align 4
@STB0899_BASE_CRL_FREQ_INIT = common dso_local global i32 0, align 4
@STB0899_OFF0_CRL_FREQ_INIT = common dso_local global i32 0, align 4
@STB0899_BASE_CRL_LOOP_GAIN = common dso_local global i32 0, align 4
@STB0899_OFF0_CRL_LOOP_GAIN = common dso_local global i32 0, align 4
@STB0899_BASE_CRL_PHS_INIT = common dso_local global i32 0, align 4
@STB0899_OFF0_CRL_PHS_INIT = common dso_local global i32 0, align 4
@STB0899_BASE_ACQUIRE_TRIG = common dso_local global i32 0, align 4
@STB0899_OFF0_ACQUIRE_TRIG = common dso_local global i32 0, align 4
@STB0899_BASE_LOCK_LOST = common dso_local global i32 0, align 4
@STB0899_OFF0_LOCK_LOST = common dso_local global i32 0, align 4
@STB0899_BASE_EQUALIZER_INIT = common dso_local global i32 0, align 4
@STB0899_OFF0_EQUALIZER_INIT = common dso_local global i32 0, align 4
@EQ_CNTRL = common dso_local global i32 0, align 4
@EQ_SHIFT = common dso_local global i32 0, align 4
@EQ_DISABLE_UPDATE = common dso_local global i32 0, align 4
@EQ_DELAY = common dso_local global i32 0, align 4
@EQ_ADAPT_MODE = common dso_local global i32 0, align 4
@STB0899_BASE_EQ_CNTRL = common dso_local global i32 0, align 4
@STB0899_OFF0_EQ_CNTRL = common dso_local global i32 0, align 4
@STB0899_PDELCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_dvbs2_reacquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_dvbs2_reacquire(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @DVBS2_RESET, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @STB0899_SETFIELD_VAL(i32 %4, i32 %5, i32 1)
  %7 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %8 = load i32, i32* @STB0899_S2DEMOD, align 4
  %9 = load i32, i32* @STB0899_BASE_RESET_CNTRL, align 4
  %10 = load i32, i32* @STB0899_OFF0_RESET_CNTRL, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %7, i32 %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = call i32 @stb0899_dvbs2_btr_init(%struct.stb0899_state* %13)
  %15 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %16 = load i32, i32* @STB0899_S2DEMOD, align 4
  %17 = load i32, i32* @STB0899_BASE_CRL_FREQ_INIT, align 4
  %18 = load i32, i32* @STB0899_OFF0_CRL_FREQ_INIT, align 4
  %19 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %15, i32 %16, i32 %17, i32 %18, i32 1073741824)
  %20 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %21 = load i32, i32* @STB0899_S2DEMOD, align 4
  %22 = load i32, i32* @STB0899_BASE_CRL_FREQ_INIT, align 4
  %23 = load i32, i32* @STB0899_OFF0_CRL_FREQ_INIT, align 4
  %24 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %20, i32 %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %26 = load i32, i32* @STB0899_S2DEMOD, align 4
  %27 = load i32, i32* @STB0899_BASE_CRL_LOOP_GAIN, align 4
  %28 = load i32, i32* @STB0899_OFF0_CRL_LOOP_GAIN, align 4
  %29 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %25, i32 %26, i32 %27, i32 %28, i32 0)
  %30 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %31 = load i32, i32* @STB0899_S2DEMOD, align 4
  %32 = load i32, i32* @STB0899_BASE_CRL_PHS_INIT, align 4
  %33 = load i32, i32* @STB0899_OFF0_CRL_PHS_INIT, align 4
  %34 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %30, i32 %31, i32 %32, i32 %33, i32 1073741824)
  %35 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %36 = load i32, i32* @STB0899_S2DEMOD, align 4
  %37 = load i32, i32* @STB0899_BASE_CRL_PHS_INIT, align 4
  %38 = load i32, i32* @STB0899_OFF0_CRL_PHS_INIT, align 4
  %39 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %35, i32 %36, i32 %37, i32 %38, i32 0)
  store i32 0, i32* %3, align 4
  %40 = load i32, i32* @DVBS2_RESET, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @STB0899_SETFIELD_VAL(i32 %40, i32 %41, i32 0)
  %43 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %44 = load i32, i32* @STB0899_S2DEMOD, align 4
  %45 = load i32, i32* @STB0899_BASE_RESET_CNTRL, align 4
  %46 = load i32, i32* @STB0899_OFF0_RESET_CNTRL, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %50 = load i32, i32* @STB0899_S2DEMOD, align 4
  %51 = load i32, i32* @STB0899_BASE_ACQUIRE_TRIG, align 4
  %52 = load i32, i32* @STB0899_OFF0_ACQUIRE_TRIG, align 4
  %53 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %49, i32 %50, i32 %51, i32 %52, i32 1)
  %54 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %55 = load i32, i32* @STB0899_S2DEMOD, align 4
  %56 = load i32, i32* @STB0899_BASE_LOCK_LOST, align 4
  %57 = load i32, i32* @STB0899_OFF0_LOCK_LOST, align 4
  %58 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %54, i32 %55, i32 %56, i32 %57, i32 0)
  %59 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %60 = load i32, i32* @STB0899_S2DEMOD, align 4
  %61 = load i32, i32* @STB0899_BASE_EQUALIZER_INIT, align 4
  %62 = load i32, i32* @STB0899_OFF0_EQUALIZER_INIT, align 4
  %63 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %59, i32 %60, i32 %61, i32 %62, i32 1)
  %64 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %65 = load i32, i32* @STB0899_S2DEMOD, align 4
  %66 = load i32, i32* @STB0899_BASE_EQUALIZER_INIT, align 4
  %67 = load i32, i32* @STB0899_OFF0_EQUALIZER_INIT, align 4
  %68 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %64, i32 %65, i32 %66, i32 %67, i32 0)
  %69 = load i32, i32* @STB0899_S2DEMOD, align 4
  %70 = load i32, i32* @EQ_CNTRL, align 4
  %71 = call i32 @STB0899_READ_S2REG(i32 %69, i32 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @EQ_SHIFT, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @STB0899_SETFIELD_VAL(i32 %72, i32 %73, i32 0)
  %75 = load i32, i32* @EQ_DISABLE_UPDATE, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @STB0899_SETFIELD_VAL(i32 %75, i32 %76, i32 0)
  %78 = load i32, i32* @EQ_DELAY, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @STB0899_SETFIELD_VAL(i32 %78, i32 %79, i32 5)
  %81 = load i32, i32* @EQ_ADAPT_MODE, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @STB0899_SETFIELD_VAL(i32 %81, i32 %82, i32 1)
  %84 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %85 = load i32, i32* @STB0899_S2DEMOD, align 4
  %86 = load i32, i32* @STB0899_BASE_EQ_CNTRL, align 4
  %87 = load i32, i32* @STB0899_OFF0_EQ_CNTRL, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %91 = load i32, i32* @STB0899_PDELCTRL, align 4
  %92 = call i32 @stb0899_write_reg(%struct.stb0899_state* %90, i32 %91, i32 74)
  ret void
}

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i32) #1

declare dso_local i32 @stb0899_dvbs2_btr_init(%struct.stb0899_state*) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
