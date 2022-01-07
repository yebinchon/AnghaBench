; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_ktest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_ktest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gru_ktest(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @EINVAL, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* %2, align 8
  %7 = and i64 %6, 255
  switch i64 %7, label %22 [
    i64 0, label %8
    i64 1, label %11
    i64 2, label %14
    i64 3, label %17
    i64 99, label %20
  ]

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @quicktest0(i64 %9)
  store i32 %10, i32* %3, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @quicktest1(i64 %12)
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @quicktest2(i64 %15)
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @quicktest3(i64 %18)
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %1
  %21 = call i32 (...) @gru_free_kernel_contexts()
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %1, %20, %17, %14, %11, %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @quicktest0(i64) #1

declare dso_local i32 @quicktest1(i64) #1

declare dso_local i32 @quicktest2(i64) #1

declare dso_local i32 @quicktest3(i64) #1

declare dso_local i32 @gru_free_kernel_contexts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
