; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_EncodeSyncParams.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_EncodeSyncParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @EncodeSyncParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EncodeSyncParams(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %40 [
    i32 0, label %7
    i32 1, label %10
    i32 2, label %13
    i32 3, label %16
    i32 4, label %19
    i32 5, label %22
    i32 6, label %25
    i32 7, label %28
    i32 8, label %31
    i32 9, label %34
    i32 15, label %37
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %8, 2
  store i32 %9, i32* %3, align 4
  br label %43

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 24
  store i32 %12, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 23
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 3
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 5
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 8
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 9
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 11
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 14
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 15
  store i32 %36, i32* %3, align 4
  br label %43

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 40
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
