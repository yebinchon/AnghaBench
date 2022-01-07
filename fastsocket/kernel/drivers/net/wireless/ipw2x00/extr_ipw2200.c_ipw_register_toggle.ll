; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_register_toggle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_register_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPW_START_STANDBY = common dso_local global i32 0, align 4
@IPW_GATE_ODMA = common dso_local global i32 0, align 4
@IPW_GATE_IDMA = common dso_local global i32 0, align 4
@IPW_GATE_ADMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipw_register_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_register_toggle(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @IPW_START_STANDBY, align 4
  %4 = xor i32 %3, -1
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @IPW_GATE_ODMA, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @IPW_GATE_ODMA, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @IPW_GATE_IDMA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @IPW_GATE_IDMA, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %2, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @IPW_GATE_ADMA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @IPW_GATE_ADMA, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %2, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
