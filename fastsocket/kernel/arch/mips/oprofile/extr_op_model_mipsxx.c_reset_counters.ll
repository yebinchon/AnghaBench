; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_mipsxx.c_reset_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_mipsxx.c_reset_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @reset_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_counters(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i64
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %20 [
    i32 4, label %8
    i32 3, label %11
    i32 2, label %14
    i32 1, label %17
  ]

8:                                                ; preds = %1
  %9 = call i32 @w_c0_perfctrl3(i32 0)
  %10 = call i32 @w_c0_perfcntr3(i32 0)
  br label %11

11:                                               ; preds = %1, %8
  %12 = call i32 @w_c0_perfctrl2(i32 0)
  %13 = call i32 @w_c0_perfcntr2(i32 0)
  br label %14

14:                                               ; preds = %1, %11
  %15 = call i32 @w_c0_perfctrl1(i32 0)
  %16 = call i32 @w_c0_perfcntr1(i32 0)
  br label %17

17:                                               ; preds = %1, %14
  %18 = call i32 @w_c0_perfctrl0(i32 0)
  %19 = call i32 @w_c0_perfcntr0(i32 0)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @w_c0_perfctrl3(i32) #1

declare dso_local i32 @w_c0_perfcntr3(i32) #1

declare dso_local i32 @w_c0_perfctrl2(i32) #1

declare dso_local i32 @w_c0_perfcntr2(i32) #1

declare dso_local i32 @w_c0_perfctrl1(i32) #1

declare dso_local i32 @w_c0_perfcntr1(i32) #1

declare dso_local i32 @w_c0_perfctrl0(i32) #1

declare dso_local i32 @w_c0_perfcntr0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
