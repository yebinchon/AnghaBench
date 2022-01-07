; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_state_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_mode.c_ch7006_state_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ch7006_state = type { i32 }

@CH7006_POWER = common dso_local global i32 0, align 4
@CH7006_DISPMODE = common dso_local global i32 0, align 4
@CH7006_FFILTER = common dso_local global i32 0, align 4
@CH7006_BWIDTH = common dso_local global i32 0, align 4
@CH7006_INPUT_FORMAT = common dso_local global i32 0, align 4
@CH7006_CLKMODE = common dso_local global i32 0, align 4
@CH7006_START_ACTIVE = common dso_local global i32 0, align 4
@CH7006_POV = common dso_local global i32 0, align 4
@CH7006_BLACK_LEVEL = common dso_local global i32 0, align 4
@CH7006_HPOS = common dso_local global i32 0, align 4
@CH7006_VPOS = common dso_local global i32 0, align 4
@CH7006_INPUT_SYNC = common dso_local global i32 0, align 4
@CH7006_DETECT = common dso_local global i32 0, align 4
@CH7006_CONTRAST = common dso_local global i32 0, align 4
@CH7006_PLLOV = common dso_local global i32 0, align 4
@CH7006_PLLM = common dso_local global i32 0, align 4
@CH7006_PLLN = common dso_local global i32 0, align 4
@CH7006_BCLKOUT = common dso_local global i32 0, align 4
@CH7006_SUBC_INC0 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC1 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC2 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC3 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC4 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC5 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC6 = common dso_local global i32 0, align 4
@CH7006_SUBC_INC7 = common dso_local global i32 0, align 4
@CH7006_PLL_CONTROL = common dso_local global i32 0, align 4
@CH7006_CALC_SUBC_INC0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ch7006_state_load(%struct.i2c_client* %0, %struct.ch7006_state* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ch7006_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.ch7006_state* %1, %struct.ch7006_state** %4, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %7 = load i32, i32* @CH7006_POWER, align 4
  %8 = call i32 @ch7006_load_reg(%struct.i2c_client* %5, %struct.ch7006_state* %6, i32 %7)
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %11 = load i32, i32* @CH7006_DISPMODE, align 4
  %12 = call i32 @ch7006_load_reg(%struct.i2c_client* %9, %struct.ch7006_state* %10, i32 %11)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %15 = load i32, i32* @CH7006_FFILTER, align 4
  %16 = call i32 @ch7006_load_reg(%struct.i2c_client* %13, %struct.ch7006_state* %14, i32 %15)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %19 = load i32, i32* @CH7006_BWIDTH, align 4
  %20 = call i32 @ch7006_load_reg(%struct.i2c_client* %17, %struct.ch7006_state* %18, i32 %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %23 = load i32, i32* @CH7006_INPUT_FORMAT, align 4
  %24 = call i32 @ch7006_load_reg(%struct.i2c_client* %21, %struct.ch7006_state* %22, i32 %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %27 = load i32, i32* @CH7006_CLKMODE, align 4
  %28 = call i32 @ch7006_load_reg(%struct.i2c_client* %25, %struct.ch7006_state* %26, i32 %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %31 = load i32, i32* @CH7006_START_ACTIVE, align 4
  %32 = call i32 @ch7006_load_reg(%struct.i2c_client* %29, %struct.ch7006_state* %30, i32 %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %35 = load i32, i32* @CH7006_POV, align 4
  %36 = call i32 @ch7006_load_reg(%struct.i2c_client* %33, %struct.ch7006_state* %34, i32 %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %39 = load i32, i32* @CH7006_BLACK_LEVEL, align 4
  %40 = call i32 @ch7006_load_reg(%struct.i2c_client* %37, %struct.ch7006_state* %38, i32 %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %43 = load i32, i32* @CH7006_HPOS, align 4
  %44 = call i32 @ch7006_load_reg(%struct.i2c_client* %41, %struct.ch7006_state* %42, i32 %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %47 = load i32, i32* @CH7006_VPOS, align 4
  %48 = call i32 @ch7006_load_reg(%struct.i2c_client* %45, %struct.ch7006_state* %46, i32 %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %50 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %51 = load i32, i32* @CH7006_INPUT_SYNC, align 4
  %52 = call i32 @ch7006_load_reg(%struct.i2c_client* %49, %struct.ch7006_state* %50, i32 %51)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %55 = load i32, i32* @CH7006_DETECT, align 4
  %56 = call i32 @ch7006_load_reg(%struct.i2c_client* %53, %struct.ch7006_state* %54, i32 %55)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %58 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %59 = load i32, i32* @CH7006_CONTRAST, align 4
  %60 = call i32 @ch7006_load_reg(%struct.i2c_client* %57, %struct.ch7006_state* %58, i32 %59)
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %63 = load i32, i32* @CH7006_PLLOV, align 4
  %64 = call i32 @ch7006_load_reg(%struct.i2c_client* %61, %struct.ch7006_state* %62, i32 %63)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %66 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %67 = load i32, i32* @CH7006_PLLM, align 4
  %68 = call i32 @ch7006_load_reg(%struct.i2c_client* %65, %struct.ch7006_state* %66, i32 %67)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %70 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %71 = load i32, i32* @CH7006_PLLN, align 4
  %72 = call i32 @ch7006_load_reg(%struct.i2c_client* %69, %struct.ch7006_state* %70, i32 %71)
  %73 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %74 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %75 = load i32, i32* @CH7006_BCLKOUT, align 4
  %76 = call i32 @ch7006_load_reg(%struct.i2c_client* %73, %struct.ch7006_state* %74, i32 %75)
  %77 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %78 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %79 = load i32, i32* @CH7006_SUBC_INC0, align 4
  %80 = call i32 @ch7006_load_reg(%struct.i2c_client* %77, %struct.ch7006_state* %78, i32 %79)
  %81 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %82 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %83 = load i32, i32* @CH7006_SUBC_INC1, align 4
  %84 = call i32 @ch7006_load_reg(%struct.i2c_client* %81, %struct.ch7006_state* %82, i32 %83)
  %85 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %86 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %87 = load i32, i32* @CH7006_SUBC_INC2, align 4
  %88 = call i32 @ch7006_load_reg(%struct.i2c_client* %85, %struct.ch7006_state* %86, i32 %87)
  %89 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %90 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %91 = load i32, i32* @CH7006_SUBC_INC3, align 4
  %92 = call i32 @ch7006_load_reg(%struct.i2c_client* %89, %struct.ch7006_state* %90, i32 %91)
  %93 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %94 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %95 = load i32, i32* @CH7006_SUBC_INC4, align 4
  %96 = call i32 @ch7006_load_reg(%struct.i2c_client* %93, %struct.ch7006_state* %94, i32 %95)
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %99 = load i32, i32* @CH7006_SUBC_INC5, align 4
  %100 = call i32 @ch7006_load_reg(%struct.i2c_client* %97, %struct.ch7006_state* %98, i32 %99)
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %103 = load i32, i32* @CH7006_SUBC_INC6, align 4
  %104 = call i32 @ch7006_load_reg(%struct.i2c_client* %101, %struct.ch7006_state* %102, i32 %103)
  %105 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %106 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %107 = load i32, i32* @CH7006_SUBC_INC7, align 4
  %108 = call i32 @ch7006_load_reg(%struct.i2c_client* %105, %struct.ch7006_state* %106, i32 %107)
  %109 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %110 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %111 = load i32, i32* @CH7006_PLL_CONTROL, align 4
  %112 = call i32 @ch7006_load_reg(%struct.i2c_client* %109, %struct.ch7006_state* %110, i32 %111)
  %113 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %114 = load %struct.ch7006_state*, %struct.ch7006_state** %4, align 8
  %115 = load i32, i32* @CH7006_CALC_SUBC_INC0, align 4
  %116 = call i32 @ch7006_load_reg(%struct.i2c_client* %113, %struct.ch7006_state* %114, i32 %115)
  ret void
}

declare dso_local i32 @ch7006_load_reg(%struct.i2c_client*, %struct.ch7006_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
