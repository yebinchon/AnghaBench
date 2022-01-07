; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_DecodeASyncParams.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_DecodeASyncParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @DecodeASyncParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeASyncParams(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 5
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %31 [
    i32 66, label %9
    i32 88, label %10
    i32 87, label %13
    i32 67, label %16
    i32 69, label %19
    i32 72, label %22
    i32 73, label %25
    i32 75, label %28
  ]

9:                                                ; preds = %2
  br label %31

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 2
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 3
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 5
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 6
  store i32 %27, i32* %3, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 7
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %2, %28, %25, %22, %19, %16, %13, %10, %9
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 7
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 127
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 16
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %39, %31
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 96
  %49 = icmp eq i32 %48, 96
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 16
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 8
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %57, %53
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
