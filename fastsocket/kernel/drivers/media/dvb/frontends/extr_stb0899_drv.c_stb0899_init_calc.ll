; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_init_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_init_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_internal }
%struct.stb0899_internal = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64 }

@STB0899_AGC1CN = common dso_local global i32 0, align 4
@STB0899_AGC1REF = common dso_local global i32 0, align 4
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@IF_AGC_CNTRL = common dso_local global i32 0, align 4
@IF_GAIN_INIT = common dso_local global i32 0, align 4
@STB0899_BASE_IF_AGC_CNTRL = common dso_local global i32 0, align 4
@STB0899_OFF0_IF_AGC_CNTRL = common dso_local global i32 0, align 4
@RRC_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_init_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_init_calc(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %8 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %9 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %8, i32 0, i32 0
  store %struct.stb0899_internal* %9, %struct.stb0899_internal** %3, align 8
  %10 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %11 = load i32, i32* @STB0899_AGC1CN, align 4
  %12 = call i32 @stb0899_read_reg(%struct.stb0899_state* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = load i32, i32* @STB0899_AGC1REF, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %16 = call i32 @stb0899_read_regs(%struct.stb0899_state* %13, i32 %14, i32* %15, i32 2)
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %18 = call i32 @stb0899_get_mclk(%struct.stb0899_state* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %20 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %19, i32 0, i32 10
  store i64 0, i64* %20, align 8
  %21 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %22 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %21, i32 0, i32 9
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %25 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = sdiv i64 %27, 65536
  %29 = trunc i64 %28 to i32
  %30 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %31 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %33 = call i32 @stb0899_get_alpha(%struct.stb0899_state* %32)
  %34 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %35 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %37 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %36, i32 0, i32 2
  store i32 8154, i32* %37, align 8
  %38 = load i32, i32* @STB0899_S2DEMOD, align 4
  %39 = load i32, i32* @IF_AGC_CNTRL, align 4
  %40 = call i32 @STB0899_READ_S2REG(i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @IF_GAIN_INIT, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %44 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @STB0899_SETFIELD_VAL(i32 %41, i32 %42, i32 %45)
  %47 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %48 = load i32, i32* @STB0899_S2DEMOD, align 4
  %49 = load i32, i32* @STB0899_BASE_IF_AGC_CNTRL, align 4
  %50 = load i32, i32* @STB0899_OFF0_IF_AGC_CNTRL, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @STB0899_S2DEMOD, align 4
  %54 = load i32, i32* @RRC_ALPHA, align 4
  %55 = call i32 @STB0899_READ_S2REG(i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @RRC_ALPHA, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @STB0899_GETFIELD(i32 %56, i32 %57)
  %59 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %60 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %62 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %61, i32 0, i32 6
  store i64 0, i64* %62, align 8
  %63 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %64 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %63, i32 0, i32 3
  store i32 10, i32* %64, align 4
  %65 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %66 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %65, i32 0, i32 4
  store i32 20, i32* %66, align 8
  %67 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %68 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %67, i32 0, i32 5
  store i32 2, i32* %68, align 4
  ret void
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @stb0899_read_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @stb0899_get_mclk(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_get_alpha(%struct.stb0899_state*) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
