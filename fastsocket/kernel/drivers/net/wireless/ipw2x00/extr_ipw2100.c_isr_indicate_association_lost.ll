; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_isr_indicate_association_lost.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_isr_indicate_association_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ssid = common dso_local global i32 0, align 4
@IPW_DL_NOTIF = common dso_local global i32 0, align 4
@IPW_DL_STATE = common dso_local global i32 0, align 4
@IPW_DL_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"disassociated: '%s' %pM\0A\00", align 1
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_ASSOCIATING = common dso_local global i32 0, align 4
@STATUS_STOPPING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Card is stopping itself, discard ASSN_LOST.\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@STATUS_RUNNING = common dso_local global i32 0, align 4
@STATUS_SECURITY_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*, i32)* @isr_indicate_association_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_indicate_association_lost(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @ssid, align 4
  %6 = call i32 @DECLARE_SSID_BUF(i32 %5)
  %7 = load i32, i32* @IPW_DL_NOTIF, align 4
  %8 = load i32, i32* @IPW_DL_STATE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @IPW_DL_ASSOC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ssid, align 4
  %13 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @print_ssid(i32 %12, i32 %15, i32 %18)
  %20 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IPW_DEBUG(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %25 = load i32, i32* @STATUS_ASSOCIATING, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @STATUS_STOPPING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %83

40:                                               ; preds = %2
  %41 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %42 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memset(i32 %43, i32 0, i32 %44)
  %46 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memset(i32 %50, i32 0, i32 %51)
  %53 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %54 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netif_carrier_off(i32 %55)
  %57 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @netif_stop_queue(i32 %59)
  %61 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %62 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @STATUS_RUNNING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %40
  br label %83

68:                                               ; preds = %40
  %69 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %70 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %77 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %76, i32 0, i32 2
  %78 = call i32 @schedule_delayed_work(i32* %77, i32 0)
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %81 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %80, i32 0, i32 1
  %82 = call i32 @schedule_delayed_work(i32* %81, i32 0)
  br label %83

83:                                               ; preds = %79, %67, %38
  ret void
}

declare dso_local i32 @DECLARE_SSID_BUF(i32) #1

declare dso_local i32 @IPW_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @print_ssid(i32, i32, i32) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
