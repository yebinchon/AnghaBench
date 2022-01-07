; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77105.c_idt77105_stats_timer_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77105.c_idt77105_stats_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77105_priv = type { %struct.idt77105_stats, %struct.atm_dev*, %struct.idt77105_priv* }
%struct.idt77105_stats = type { i32, i32, i32, i32 }
%struct.atm_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"IDT77105 gathering statistics\0A\00", align 1
@idt77105_all = common dso_local global %struct.idt77105_priv* null, align 8
@IDT77105_CTRSEL_SEC = common dso_local global i32 0, align 4
@IDT77105_CTRSEL_TCC = common dso_local global i32 0, align 4
@IDT77105_CTRSEL_RCC = common dso_local global i32 0, align 4
@IDT77105_CTRSEL_RHEC = common dso_local global i32 0, align 4
@start_timer = common dso_local global i32 0, align 4
@stats_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IDT77105_STATS_TIMER_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @idt77105_stats_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt77105_stats_timer_func(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.idt77105_priv*, align 8
  %4 = alloca %struct.atm_dev*, align 8
  %5 = alloca %struct.idt77105_stats*, align 8
  store i64 %0, i64* %2, align 8
  %6 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.idt77105_priv*, %struct.idt77105_priv** @idt77105_all, align 8
  store %struct.idt77105_priv* %7, %struct.idt77105_priv** %3, align 8
  br label %8

8:                                                ; preds = %53, %1
  %9 = load %struct.idt77105_priv*, %struct.idt77105_priv** %3, align 8
  %10 = icmp ne %struct.idt77105_priv* %9, null
  br i1 %10, label %11, label %57

11:                                               ; preds = %8
  %12 = load %struct.idt77105_priv*, %struct.idt77105_priv** %3, align 8
  %13 = getelementptr inbounds %struct.idt77105_priv, %struct.idt77105_priv* %12, i32 0, i32 1
  %14 = load %struct.atm_dev*, %struct.atm_dev** %13, align 8
  store %struct.atm_dev* %14, %struct.atm_dev** %4, align 8
  %15 = load %struct.idt77105_priv*, %struct.idt77105_priv** %3, align 8
  %16 = getelementptr inbounds %struct.idt77105_priv, %struct.idt77105_priv* %15, i32 0, i32 0
  store %struct.idt77105_stats* %16, %struct.idt77105_stats** %5, align 8
  %17 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %18 = load i32, i32* @IDT77105_CTRSEL_SEC, align 4
  %19 = call i64 @get_counter(%struct.atm_dev* %17, i32 %18)
  %20 = load %struct.idt77105_stats*, %struct.idt77105_stats** %5, align 8
  %21 = getelementptr inbounds %struct.idt77105_stats, %struct.idt77105_stats* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %27 = load i32, i32* @IDT77105_CTRSEL_TCC, align 4
  %28 = call i64 @get_counter(%struct.atm_dev* %26, i32 %27)
  %29 = load %struct.idt77105_stats*, %struct.idt77105_stats** %5, align 8
  %30 = getelementptr inbounds %struct.idt77105_stats, %struct.idt77105_stats* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %36 = load i32, i32* @IDT77105_CTRSEL_RCC, align 4
  %37 = call i64 @get_counter(%struct.atm_dev* %35, i32 %36)
  %38 = load %struct.idt77105_stats*, %struct.idt77105_stats** %5, align 8
  %39 = getelementptr inbounds %struct.idt77105_stats, %struct.idt77105_stats* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %45 = load i32, i32* @IDT77105_CTRSEL_RHEC, align 4
  %46 = call i64 @get_counter(%struct.atm_dev* %44, i32 %45)
  %47 = load %struct.idt77105_stats*, %struct.idt77105_stats** %5, align 8
  %48 = getelementptr inbounds %struct.idt77105_stats, %struct.idt77105_stats* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  br label %53

53:                                               ; preds = %11
  %54 = load %struct.idt77105_priv*, %struct.idt77105_priv** %3, align 8
  %55 = getelementptr inbounds %struct.idt77105_priv, %struct.idt77105_priv* %54, i32 0, i32 2
  %56 = load %struct.idt77105_priv*, %struct.idt77105_priv** %55, align 8
  store %struct.idt77105_priv* %56, %struct.idt77105_priv** %3, align 8
  br label %8

57:                                               ; preds = %8
  %58 = load i32, i32* @start_timer, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i64, i64* @IDT77105_STATS_TIMER_PERIOD, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @mod_timer(i32* @stats_timer, i64 %63)
  br label %65

65:                                               ; preds = %60, %57
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i64 @get_counter(%struct.atm_dev*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
