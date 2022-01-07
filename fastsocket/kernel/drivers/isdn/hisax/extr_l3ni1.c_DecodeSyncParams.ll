; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_DecodeSyncParams.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_DecodeSyncParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @DecodeSyncParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeSyncParams(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 127
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %39 [
    i32 40, label %9
    i32 15, label %12
    i32 14, label %15
    i32 11, label %18
    i32 9, label %21
    i32 8, label %24
    i32 5, label %27
    i32 3, label %30
    i32 23, label %33
    i32 24, label %36
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 15
  store i32 %11, i32* %3, align 4
  br label %41

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 9
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 8
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 7
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 6
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 5
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %3, align 4
  br label %41

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 3
  store i32 %32, i32* %3, align 4
  br label %41

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 2
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %2
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
