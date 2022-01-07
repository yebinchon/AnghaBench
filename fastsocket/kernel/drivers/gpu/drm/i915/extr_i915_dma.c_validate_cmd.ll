; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_validate_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_validate_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @validate_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_cmd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = ashr i32 %4, 29
  %6 = and i32 %5, 7
  switch i32 %6, label %80 [
    i32 0, label %7
    i32 1, label %14
    i32 2, label %15
    i32 3, label %19
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 23
  %10 = and i32 %9, 63
  switch i32 %10, label %13 [
    i32 0, label %11
    i32 4, label %12
  ]

11:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %81

12:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %81

13:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %81

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 255
  %18 = add nsw i32 %17, 2
  store i32 %18, i32* %2, align 4
  br label %81

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = ashr i32 %20, 24
  %22 = and i32 %21, 31
  %23 = icmp sle i32 %22, 24
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %81

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 31
  switch i32 %28, label %79 [
    i32 28, label %29
    i32 29, label %30
    i32 30, label %46
    i32 31, label %55
  ]

29:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %81

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 255
  switch i32 %33, label %42 [
    i32 3, label %34
    i32 4, label %38
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 31
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %2, align 4
  br label %81

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 15
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %2, align 4
  br label %81

42:                                               ; preds = %30
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 65535
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %2, align 4
  br label %81

46:                                               ; preds = %25
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 8388608
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %81

54:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %81

55:                                               ; preds = %25
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, 8388608
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, 131071
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %2, align 4
  br label %81

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, 131072
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %81

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, 65535
  %75 = add nsw i32 %74, 1
  %76 = sdiv i32 %75, 2
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %81

78:                                               ; preds = %63
  store i32 2, i32* %2, align 4
  br label %81

79:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %81

80:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %79, %78, %72, %71, %59, %54, %50, %42, %38, %34, %29, %24, %15, %14, %13, %12, %11
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
