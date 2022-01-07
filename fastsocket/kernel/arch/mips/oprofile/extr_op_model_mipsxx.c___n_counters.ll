; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_mipsxx.c___n_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_mipsxx.c___n_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_CONFIG1_PC = common dso_local global i32 0, align 4
@M_PERFCTL_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__n_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__n_counters() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @read_c0_config1()
  %3 = load i32, i32* @M_CONFIG1_PC, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %26

7:                                                ; preds = %0
  %8 = call i32 (...) @read_c0_perfctrl0()
  %9 = load i32, i32* @M_PERFCTL_MORE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  br label %26

13:                                               ; preds = %7
  %14 = call i32 (...) @read_c0_perfctrl1()
  %15 = load i32, i32* @M_PERFCTL_MORE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 2, i32* %1, align 4
  br label %26

19:                                               ; preds = %13
  %20 = call i32 (...) @read_c0_perfctrl2()
  %21 = load i32, i32* @M_PERFCTL_MORE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 3, i32* %1, align 4
  br label %26

25:                                               ; preds = %19
  store i32 4, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %24, %18, %12, %6
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @read_c0_config1(...) #1

declare dso_local i32 @read_c0_perfctrl0(...) #1

declare dso_local i32 @read_c0_perfctrl1(...) #1

declare dso_local i32 @read_c0_perfctrl2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
