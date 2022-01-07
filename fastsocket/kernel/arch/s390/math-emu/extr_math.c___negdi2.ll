; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c___negdi2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c___negdi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.lll = type { [2 x i64] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__negdi2(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %union.lll, align 8
  %4 = alloca %union.lll, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = bitcast %union.lll* %4 to i64*
  store i64 %5, i64* %6, align 8
  %7 = bitcast %union.lll* %4 to [2 x i64]*
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 0, %9
  %11 = bitcast %union.lll* %3 to [2 x i64]*
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 %10, i64* %12, align 8
  %13 = bitcast %union.lll* %4 to [2 x i64]*
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 0, %15
  %17 = bitcast %union.lll* %3 to [2 x i64]*
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %17, i64 0, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %16, %23
  %25 = bitcast %union.lll* %3 to [2 x i64]*
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %25, i64 0, i64 0
  store i64 %24, i64* %26, align 8
  %27 = bitcast %union.lll* %3 to i64*
  %28 = load i64, i64* %27, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
