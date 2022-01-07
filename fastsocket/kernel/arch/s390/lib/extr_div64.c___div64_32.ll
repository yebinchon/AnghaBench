; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_div64.c___div64_32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_div64.c___div64_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__div64_32(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to i64*
  store i64* %9, i64** %7, align 8
  store i64 0, i64* %5, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call { i64, i64 } asm sideeffect "\09dlr\09$0,$2\0A", "={cx},={bx},{dx},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %15, i64 %13, i64 %14) #1, !srcloc !2
  %17 = extractvalue { i64, i64 } %16, 0
  %18 = extractvalue { i64, i64 } %16, 1
  store i64 %17, i64* %5, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 %19, i64* %21, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call { i64, i64 } asm sideeffect "\09dlr\09$0,$2\0A", "={cx},={bx},{dx},0,1,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %27, i64 %25, i64 %26) #1, !srcloc !3
  %29 = extractvalue { i64, i64 } %28, 0
  %30 = extractvalue { i64, i64 } %28, 1
  store i64 %29, i64* %5, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 400}
!3 = !{i32 520}
