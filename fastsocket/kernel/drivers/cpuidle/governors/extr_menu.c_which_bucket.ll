; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/governors/extr_menu.c_which_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpuidle/governors/extr_menu.c_which_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @which_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @which_bucket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 (...) @smp_processor_id()
  %6 = call i64 @nr_iowait_cpu(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @BUCKETS, align 4
  %10 = sdiv i32 %9, 2
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ult i32 %12, 10
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = icmp ult i32 %17, 100
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %43

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = icmp ult i32 %23, 1000
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %2, align 4
  br label %43

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = icmp ult i32 %29, 10000
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 3
  store i32 %33, i32* %2, align 4
  br label %43

34:                                               ; preds = %28
  %35 = load i32, i32* %3, align 4
  %36 = icmp ult i32 %35, 100000
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 5
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %37, %31, %25, %19, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @nr_iowait_cpu(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
