; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/lib/extr_csum_partial_copy.c_from64to16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/lib/extr_csum_partial_copy.c_from64to16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i64)* @from64to16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @from64to16(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %union.anon, align 8
  %4 = alloca %union.anon, align 8
  %5 = alloca %union.anon, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = bitcast %union.anon* %3 to i64*
  store i64 %6, i64* %7, align 8
  %8 = bitcast %union.anon* %3 to [2 x i32]*
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = bitcast %union.anon* %3 to [2 x i32]*
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  %16 = add i64 %11, %15
  %17 = bitcast %union.anon* %4 to i64*
  store i64 %16, i64* %17, align 8
  %18 = bitcast %union.anon* %4 to [4 x i16]*
  %19 = getelementptr inbounds [4 x i16], [4 x i16]* %18, i64 0, i64 0
  %20 = load i16, i16* %19, align 8
  %21 = zext i16 %20 to i64
  %22 = bitcast %union.anon* %4 to [4 x i16]*
  %23 = getelementptr inbounds [4 x i16], [4 x i16]* %22, i64 0, i64 1
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i64
  %26 = add i64 %21, %25
  %27 = bitcast %union.anon* %4 to [4 x i16]*
  %28 = getelementptr inbounds [4 x i16], [4 x i16]* %27, i64 0, i64 2
  %29 = load i16, i16* %28, align 4
  %30 = zext i16 %29 to i64
  %31 = add i64 %26, %30
  %32 = bitcast %union.anon* %5 to i64*
  store i64 %31, i64* %32, align 8
  %33 = bitcast %union.anon* %5 to [4 x i16]*
  %34 = getelementptr inbounds [4 x i16], [4 x i16]* %33, i64 0, i64 0
  %35 = load i16, i16* %34, align 8
  %36 = zext i16 %35 to i32
  %37 = bitcast %union.anon* %5 to [4 x i16]*
  %38 = getelementptr inbounds [4 x i16], [4 x i16]* %37, i64 0, i64 1
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = add nsw i32 %36, %40
  %42 = trunc i32 %41 to i16
  ret i16 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
