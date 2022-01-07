; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_crunch.c_crunch_do.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_crunch.c_crunch_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crunch_state = type { i32 }
%struct.notifier_block = type { i32 }
%struct.thread_info = type { %struct.crunch_state }

@EP93XX_SYSCON_DEVCFG = common dso_local global i32 0, align 4
@crunch_owner = common dso_local global %struct.crunch_state* null, align 8
@EP93XX_SYSCON_DEVCFG_CPENA = common dso_local global i32 0, align 4
@EP93XX_SYSCON_SWLOCK = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @crunch_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crunch_do(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.thread_info*, align 8
  %8 = alloca %struct.crunch_state*, align 8
  %9 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.thread_info*
  store %struct.thread_info* %11, %struct.thread_info** %7, align 8
  %12 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %13 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %12, i32 0, i32 0
  store %struct.crunch_state* %13, %struct.crunch_state** %8, align 8
  %14 = load i64, i64* %5, align 8
  switch i64 %14, label %41 [
    i64 130, label %15
    i64 129, label %18
    i64 128, label %21
  ]

15:                                               ; preds = %3
  %16 = load %struct.crunch_state*, %struct.crunch_state** %8, align 8
  %17 = call i32 @memset(%struct.crunch_state* %16, i32 0, i32 4)
  br label %18

18:                                               ; preds = %3, %15
  %19 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %20 = call i32 @crunch_task_release(%struct.thread_info* %19)
  br label %41

21:                                               ; preds = %3
  %22 = load i32, i32* @EP93XX_SYSCON_DEVCFG, align 4
  %23 = call i32 @__raw_readl(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @crunch_enabled(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.crunch_state*, %struct.crunch_state** @crunch_owner, align 8
  %29 = load %struct.crunch_state*, %struct.crunch_state** %8, align 8
  %30 = icmp eq %struct.crunch_state* %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27, %21
  %32 = load i32, i32* @EP93XX_SYSCON_DEVCFG_CPENA, align 4
  %33 = load i32, i32* %9, align 4
  %34 = xor i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @EP93XX_SYSCON_SWLOCK, align 4
  %36 = call i32 @__raw_writel(i32 170, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @EP93XX_SYSCON_DEVCFG, align 4
  %39 = call i32 @__raw_writel(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %27
  br label %41

41:                                               ; preds = %3, %40, %18
  %42 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.crunch_state*, i32, i32) #1

declare dso_local i32 @crunch_task_release(%struct.thread_info*) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @crunch_enabled(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
