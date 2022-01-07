; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_PWM_FREQ_TO_REG.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_PWM_FREQ_TO_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PWM_FREQ = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @PWM_FREQ_TO_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PWM_FREQ_TO_REG(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 27500
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 10, i32* %5, align 4
  br label %41

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 22500
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 11, i32* %5, align 4
  br label %40

13:                                               ; preds = %9
  store i32 9, i32* %5, align 4
  br label %14

14:                                               ; preds = %36, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load i32*, i32** @PWM_FREQ, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @PWM_FREQ, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %23, %29
  %31 = add nsw i32 %30, 1
  %32 = sdiv i32 %31, 2
  %33 = icmp sgt i32 %18, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %17
  br label %39

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  br label %14

39:                                               ; preds = %34, %14
  br label %40

40:                                               ; preds = %39, %12
  br label %41

41:                                               ; preds = %40, %8
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 240
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %43, %44
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
