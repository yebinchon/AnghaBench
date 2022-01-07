; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_isr_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_isr_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { %struct.cond_wait* }
%struct.cond_wait = type { i32, %struct.cond_wait*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*, i32, i32)* @isr_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_gpio(%struct.slgt_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.slgt_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cond_wait*, align 8
  %8 = alloca %struct.cond_wait*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %10 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %9, i32 0, i32 0
  %11 = load %struct.cond_wait*, %struct.cond_wait** %10, align 8
  store %struct.cond_wait* %11, %struct.cond_wait** %7, align 8
  store %struct.cond_wait* null, %struct.cond_wait** %8, align 8
  br label %12

12:                                               ; preds = %47, %3
  %13 = load %struct.cond_wait*, %struct.cond_wait** %7, align 8
  %14 = icmp ne %struct.cond_wait* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = load %struct.cond_wait*, %struct.cond_wait** %7, align 8
  %17 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.cond_wait*, %struct.cond_wait** %7, align 8
  %25 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.cond_wait*, %struct.cond_wait** %7, align 8
  %27 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %26, i32 0, i32 2
  %28 = call i32 @wake_up_interruptible(i32* %27)
  %29 = load %struct.cond_wait*, %struct.cond_wait** %8, align 8
  %30 = icmp ne %struct.cond_wait* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.cond_wait*, %struct.cond_wait** %7, align 8
  %33 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %32, i32 0, i32 1
  %34 = load %struct.cond_wait*, %struct.cond_wait** %33, align 8
  %35 = load %struct.cond_wait*, %struct.cond_wait** %8, align 8
  %36 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %35, i32 0, i32 1
  store %struct.cond_wait* %34, %struct.cond_wait** %36, align 8
  br label %43

37:                                               ; preds = %22
  %38 = load %struct.cond_wait*, %struct.cond_wait** %7, align 8
  %39 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %38, i32 0, i32 1
  %40 = load %struct.cond_wait*, %struct.cond_wait** %39, align 8
  %41 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %42 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %41, i32 0, i32 0
  store %struct.cond_wait* %40, %struct.cond_wait** %42, align 8
  br label %43

43:                                               ; preds = %37, %31
  br label %46

44:                                               ; preds = %15
  %45 = load %struct.cond_wait*, %struct.cond_wait** %7, align 8
  store %struct.cond_wait* %45, %struct.cond_wait** %8, align 8
  br label %46

46:                                               ; preds = %44, %43
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.cond_wait*, %struct.cond_wait** %7, align 8
  %49 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %48, i32 0, i32 1
  %50 = load %struct.cond_wait*, %struct.cond_wait** %49, align 8
  store %struct.cond_wait* %50, %struct.cond_wait** %7, align 8
  br label %12

51:                                               ; preds = %12
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
