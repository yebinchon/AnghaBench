; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_radio_kill_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_radio_kill_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@STATUS_RF_KILL_SW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Manual SW RF Kill set to: RADIO  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Can not turn radio back on - disabled by HW switch\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i32)* @ipw_radio_kill_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_radio_kill_sw(%struct.ipw_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 1, i32 0
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @STATUS_RF_KILL_SW, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = icmp eq i32 %9, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 (i8*, ...) @IPW_DEBUG_RF_KILL(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = load i32, i32* @STATUS_RF_KILL_SW, align 4
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 7
  %36 = call i32 @cancel_delayed_work(i32* %35)
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %37, i32 0, i32 6
  %39 = call i32 @cancel_delayed_work(i32* %38)
  %40 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %41 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %40, i32 0, i32 5
  %42 = call i32 @cancel_delayed_work(i32* %41)
  %43 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %44 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %43, i32 0, i32 4
  %45 = call i32 @cancel_delayed_work(i32* %44)
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %47 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %46, i32 0, i32 3
  %48 = call i32 @schedule_work(i32* %47)
  br label %75

49:                                               ; preds = %20
  %50 = load i32, i32* @STATUS_RF_KILL_SW, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %53 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %57 = call i64 @rf_kill_active(%struct.ipw_priv* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %49
  %60 = call i32 (i8*, ...) @IPW_DEBUG_RF_KILL(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %62 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %61, i32 0, i32 2
  %63 = call i32 @cancel_delayed_work(i32* %62)
  %64 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %65 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %64, i32 0, i32 2
  %66 = load i32, i32* @HZ, align 4
  %67 = mul nsw i32 2, %66
  %68 = call i32 @round_jiffies_relative(i32 %67)
  %69 = call i32 @schedule_delayed_work(i32* %65, i32 %68)
  br label %74

70:                                               ; preds = %49
  %71 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %72 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %71, i32 0, i32 1
  %73 = call i32 @schedule_work(i32* %72)
  br label %74

74:                                               ; preds = %70, %59
  br label %75

75:                                               ; preds = %74, %28
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %19
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @IPW_DEBUG_RF_KILL(i8*, ...) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @rf_kill_active(%struct.ipw_priv*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
