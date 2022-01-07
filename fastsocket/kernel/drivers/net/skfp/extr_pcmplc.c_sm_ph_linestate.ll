; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_sm_ph_linestate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_pcmplc.c_sm_ph_linestate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }

@PL_CNTRL_B = common dso_local global i32 0, align 4
@PL_MAINT_LS = common dso_local global i32 0, align 4
@PL_PCM_STOP = common dso_local global i32 0, align 4
@PL_MAINT = common dso_local global i32 0, align 4
@PL_M_QUI0 = common dso_local global i32 0, align 4
@PL_M_MASTR = common dso_local global i32 0, align 4
@PL_M_HALT = common dso_local global i32 0, align 4
@PL_M_IDLE = common dso_local global i32 0, align 4
@PL_M_TPDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, i32, i32)* @sm_ph_linestate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm_ph_linestate(%struct.s_smc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %9 = call i32 @SK_UNUSED(%struct.s_smc* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PL_CNTRL_B, align 4
  %12 = call i32 @PLC(i32 %10, i32 %11)
  %13 = call i32 @inpw(i32 %12)
  %14 = load i32, i32* @PL_MAINT_LS, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, i32* @PL_PCM_STOP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PL_MAINT, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %34 [
    i32 128, label %22
    i32 129, label %26
    i32 132, label %30
    i32 131, label %35
    i32 130, label %39
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* @PL_M_QUI0, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %43

26:                                               ; preds = %3
  %27 = load i32, i32* @PL_M_MASTR, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %43

30:                                               ; preds = %3
  %31 = load i32, i32* @PL_M_HALT, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %43

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %3, %34
  %36 = load i32, i32* @PL_M_IDLE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %43

39:                                               ; preds = %3
  %40 = load i32, i32* @PL_M_TPDR, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %35, %30, %26, %22
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PL_CNTRL_B, align 4
  %46 = call i32 @PLC(i32 %44, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @outpw(i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @SK_UNUSED(%struct.s_smc*) #1

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @PLC(i32, i32) #1

declare dso_local i32 @outpw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
