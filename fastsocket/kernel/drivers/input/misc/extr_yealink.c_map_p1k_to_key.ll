; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_yealink.c_map_p1k_to_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_yealink.c_map_p1k_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_LEFT = common dso_local global i32 0, align 4
@KEY_UP = common dso_local global i32 0, align 4
@KEY_RIGHT = common dso_local global i32 0, align 4
@KEY_DOWN = common dso_local global i32 0, align 4
@KEY_ENTER = common dso_local global i32 0, align 4
@KEY_BACKSPACE = common dso_local global i32 0, align 4
@KEY_ESC = common dso_local global i32 0, align 4
@KEY_1 = common dso_local global i32 0, align 4
@KEY_2 = common dso_local global i32 0, align 4
@KEY_3 = common dso_local global i32 0, align 4
@KEY_4 = common dso_local global i32 0, align 4
@KEY_5 = common dso_local global i32 0, align 4
@KEY_6 = common dso_local global i32 0, align 4
@KEY_7 = common dso_local global i32 0, align 4
@KEY_8 = common dso_local global i32 0, align 4
@KEY_9 = common dso_local global i32 0, align 4
@KEY_KPASTERISK = common dso_local global i32 0, align 4
@KEY_0 = common dso_local global i32 0, align 4
@KEY_LEFTSHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @map_p1k_to_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_p1k_to_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %46 [
    i32 35, label %5
    i32 51, label %7
    i32 4, label %9
    i32 36, label %11
    i32 3, label %13
    i32 20, label %15
    i32 19, label %17
    i32 0, label %19
    i32 1, label %21
    i32 2, label %23
    i32 16, label %25
    i32 17, label %27
    i32 18, label %29
    i32 32, label %31
    i32 33, label %33
    i32 34, label %35
    i32 48, label %37
    i32 49, label %39
    i32 50, label %41
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @KEY_LEFT, align 4
  store i32 %6, i32* %2, align 4
  br label %49

7:                                                ; preds = %1
  %8 = load i32, i32* @KEY_UP, align 4
  store i32 %8, i32* %2, align 4
  br label %49

9:                                                ; preds = %1
  %10 = load i32, i32* @KEY_RIGHT, align 4
  store i32 %10, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load i32, i32* @KEY_DOWN, align 4
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load i32, i32* @KEY_ENTER, align 4
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load i32, i32* @KEY_BACKSPACE, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load i32, i32* @KEY_ESC, align 4
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %1
  %20 = load i32, i32* @KEY_1, align 4
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %1
  %22 = load i32, i32* @KEY_2, align 4
  store i32 %22, i32* %2, align 4
  br label %49

23:                                               ; preds = %1
  %24 = load i32, i32* @KEY_3, align 4
  store i32 %24, i32* %2, align 4
  br label %49

25:                                               ; preds = %1
  %26 = load i32, i32* @KEY_4, align 4
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %1
  %28 = load i32, i32* @KEY_5, align 4
  store i32 %28, i32* %2, align 4
  br label %49

29:                                               ; preds = %1
  %30 = load i32, i32* @KEY_6, align 4
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %1
  %32 = load i32, i32* @KEY_7, align 4
  store i32 %32, i32* %2, align 4
  br label %49

33:                                               ; preds = %1
  %34 = load i32, i32* @KEY_8, align 4
  store i32 %34, i32* %2, align 4
  br label %49

35:                                               ; preds = %1
  %36 = load i32, i32* @KEY_9, align 4
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %1
  %38 = load i32, i32* @KEY_KPASTERISK, align 4
  store i32 %38, i32* %2, align 4
  br label %49

39:                                               ; preds = %1
  %40 = load i32, i32* @KEY_0, align 4
  store i32 %40, i32* %2, align 4
  br label %49

41:                                               ; preds = %1
  %42 = load i32, i32* @KEY_LEFTSHIFT, align 4
  %43 = load i32, i32* @KEY_3, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %42, %44
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %1
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
