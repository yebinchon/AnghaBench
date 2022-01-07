; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7751/extr_io.c_sh7751se_inw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7751/extr_io.c_sh7751se_inw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @sh7751se_inw(i64 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @PXSEG(i64 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to i16*
  %10 = load volatile i16, i16* %9, align 2
  store i16 %10, i16* %2, align 2
  br label %23

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = icmp uge i64 %12, 8192
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = call i16* @port2adr(i64 %15)
  %17 = load i16, i16* %16, align 2
  store i16 %17, i16* %2, align 2
  br label %23

18:                                               ; preds = %11
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @maybebadio(i64 %19)
  br label %21

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21
  store i16 0, i16* %2, align 2
  br label %23

23:                                               ; preds = %22, %14, %7
  %24 = load i16, i16* %2, align 2
  ret i16 %24
}

declare dso_local i64 @PXSEG(i64) #1

declare dso_local i16* @port2adr(i64) #1

declare dso_local i32 @maybebadio(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
