; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-titan/extr_io.c_titan_inw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-titan/extr_io.c_titan_inw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @titan_inw(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @PXSEG(i64 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @ctrl_inw(i64 %8)
  store i32 %9, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = icmp uge i64 %11, 8192
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @port2adr(i64 %14)
  %16 = call i32 @ctrl_inw(i64 %15)
  store i32 %16, i32* %2, align 4
  br label %22

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @maybebadio(i64 %18)
  br label %20

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %13, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @PXSEG(i64) #1

declare dso_local i32 @ctrl_inw(i64) #1

declare dso_local i64 @port2adr(i64) #1

declare dso_local i32 @maybebadio(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
