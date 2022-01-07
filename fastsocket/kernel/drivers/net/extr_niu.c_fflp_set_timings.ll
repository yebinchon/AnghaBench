; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_fflp_set_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_fflp_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@FFLP_CFG_1 = common dso_local global i32 0, align 4
@FFLP_CFG_1_FFLPINITDONE = common dso_local global i32 0, align 4
@DEFAULT_FCRAMRATIO = common dso_local global i32 0, align 4
@FFLP_CFG_1_FCRAMRATIO_SHIFT = common dso_local global i32 0, align 4
@FCRAM_REF_TMR = common dso_local global i32 0, align 4
@FCRAM_REF_TMR_MAX = common dso_local global i32 0, align 4
@FCRAM_REF_TMR_MIN = common dso_local global i32 0, align 4
@DEFAULT_FCRAM_REFRESH_MAX = common dso_local global i32 0, align 4
@FCRAM_REF_TMR_MAX_SHIFT = common dso_local global i32 0, align 4
@DEFAULT_FCRAM_REFRESH_MIN = common dso_local global i32 0, align 4
@FCRAM_REF_TMR_MIN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @fflp_set_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fflp_set_timings(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %4 = load i32, i32* @FFLP_CFG_1, align 4
  %5 = call i32 @nr64(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @FFLP_CFG_1_FFLPINITDONE, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @DEFAULT_FCRAMRATIO, align 4
  %11 = load i32, i32* @FFLP_CFG_1_FCRAMRATIO_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @FFLP_CFG_1, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @nw64(i32 %15, i32 %16)
  %18 = load i32, i32* @FFLP_CFG_1, align 4
  %19 = call i32 @nr64(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @FFLP_CFG_1_FFLPINITDONE, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @FFLP_CFG_1, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @nw64(i32 %23, i32 %24)
  %26 = load i32, i32* @FCRAM_REF_TMR, align 4
  %27 = call i32 @nr64(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @FCRAM_REF_TMR_MAX, align 4
  %29 = load i32, i32* @FCRAM_REF_TMR_MIN, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @DEFAULT_FCRAM_REFRESH_MAX, align 4
  %35 = load i32, i32* @FCRAM_REF_TMR_MAX_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @DEFAULT_FCRAM_REFRESH_MIN, align 4
  %40 = load i32, i32* @FCRAM_REF_TMR_MIN_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @FCRAM_REF_TMR, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @nw64(i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @nw64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
