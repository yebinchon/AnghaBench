; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/lib/extr_code-patching.c_create_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/lib/extr_code-patching.c_create_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BRANCH_ABSOLUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_branch(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @BRANCH_ABSOLUTE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = sub i64 %16, %18
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i64, i64* %9, align 8
  %22 = icmp slt i64 %21, -33554432
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = icmp sgt i64 %24, 33554428
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = and i64 %27, 3
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23, %20
  store i32 0, i32* %4, align 4
  br label %41

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 3
  %34 = or i32 1207959552, %33
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %9, align 8
  %37 = and i64 %36, 67108860
  %38 = or i64 %35, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %30
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
