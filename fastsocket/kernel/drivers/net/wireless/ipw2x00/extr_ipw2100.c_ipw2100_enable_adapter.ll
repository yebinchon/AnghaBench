; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_enable_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_enable_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.host_command = type { i32, i32, i32 }

@HOST_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"HOST_COMPLETE\0A\00", align 1
@STATUS_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Command aborted due to RF kill active.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to send HOST_COMPLETE command\0A\00", align 1
@IPW_HW_STATE_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: card not responding to init command.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @ipw2100_enable_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_enable_adapter(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca %struct.host_command, align 4
  %5 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  %6 = getelementptr inbounds %struct.host_command, %struct.host_command* %4, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.host_command, %struct.host_command* %4, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.host_command, %struct.host_command* %4, i32 0, i32 2
  %9 = load i32, i32* @HOST_COMPLETE, align 4
  store i32 %9, i32* %8, align 4
  store i32 0, i32* %5, align 4
  %10 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @STATUS_ENABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

18:                                               ; preds = %1
  %19 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %20 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %23 = call i64 @rf_kill_active(%struct.ipw2100_priv* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %61

27:                                               ; preds = %18
  %28 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %29 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %28, %struct.host_command* %4)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %61

34:                                               ; preds = %27
  %35 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %36 = load i32, i32* @IPW_HW_STATE_ENABLED, align 4
  %37 = call i32 @ipw2100_wait_for_card_state(%struct.ipw2100_priv* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %42 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %61

47:                                               ; preds = %34
  %48 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %49 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %55, i32 0, i32 2
  %57 = load i32, i32* @HZ, align 4
  %58 = sdiv i32 %57, 2
  %59 = call i32 @schedule_delayed_work(i32* %56, i32 %58)
  br label %60

60:                                               ; preds = %52, %47
  br label %61

61:                                               ; preds = %60, %40, %32, %25
  %62 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %63 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %17
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @IPW_DEBUG_HC(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rf_kill_active(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @ipw2100_wait_for_card_state(%struct.ipw2100_priv*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
