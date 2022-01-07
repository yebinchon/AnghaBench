; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_oid_mgt.c_channel_of_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_oid_mgt.c_channel_of_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frequency_list_bg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @channel_of_freq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 2412
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %8, 2484
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 14
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** @frequency_list_bg, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %15, %20
  br label %22

22:                                               ; preds = %14, %11
  %23 = phi i1 [ false, %11 ], [ %21, %14 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 14
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %30
  %35 = phi i32 [ 0, %30 ], [ %33, %31 ]
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %7, %1
  %37 = load i32, i32* %3, align 4
  %38 = icmp sge i32 %37, 5000
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = icmp sle i32 %40, 6000
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = sub nsw i32 %43, 5000
  %45 = sdiv i32 %44, 5
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %39, %36
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %42, %34
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
