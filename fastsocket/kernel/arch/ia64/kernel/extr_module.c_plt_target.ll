; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_module.c_plt_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_module.c_plt_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plt_entry = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @plt_target(%struct.plt_entry* %0) #0 {
  %2 = alloca %struct.plt_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.plt_entry* %0, %struct.plt_entry** %2, align 8
  %7 = load %struct.plt_entry*, %struct.plt_entry** %2, align 8
  %8 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = and i64 %20, 72057525318451200
  %22 = lshr i64 %21, 36
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 48
  %25 = shl i32 %24, 20
  %26 = sext i32 %25 to i64
  %27 = or i64 %22, %26
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 8388607
  %31 = shl i64 %30, 36
  %32 = or i64 %27, %31
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = and i64 %34, 576460752303423488
  %36 = shl i64 %35, 0
  %37 = or i64 %32, %36
  store i64 %37, i64* %6, align 8
  %38 = load %struct.plt_entry*, %struct.plt_entry** %2, align 8
  %39 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = mul nsw i64 16, %43
  %45 = add nsw i64 %42, %44
  ret i64 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
