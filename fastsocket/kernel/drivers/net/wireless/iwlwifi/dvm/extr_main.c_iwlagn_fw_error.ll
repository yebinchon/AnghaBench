; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwlagn_fw_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_main.c_iwlagn_fw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.iwl_priv = type { i32, i64, i64, i32, i32, i32, i32 }

@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@STATUS_READY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IWL_MIN_RELOAD_DURATION = common dso_local global i32 0, align 4
@IWL_MAX_CONTINUE_RELOAD_CNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"BUG_ON, Stop restarting\0A\00", align 1
@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Restarting adapter due to uCode error.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Detected FW error, but not restarting\0A\00", align 1
@IWL_DL_FW_ERRORS = common dso_local global i32 0, align 4
@IWL_RXON_CTX_BSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i32)* @iwlagn_fw_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_fw_error(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load i32, i32* @STATUS_FW_ERROR, align 4
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 5
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 6
  %15 = call i32 @iwl_abort_notification_waits(i32* %14)
  %16 = load i32, i32* @STATUS_READY, align 4
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 5
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %2
  %23 = load i64, i64* @jiffies, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = call i32 @jiffies_to_msecs(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @IWL_MIN_RELOAD_DURATION, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %22
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IWL_MAX_CONTINUE_RELOAD_CNT, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %48 = call i32 @IWL_ERR(%struct.iwl_priv* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %76

49:                                               ; preds = %36
  br label %53

50:                                               ; preds = %22
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %52 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %49
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %57 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %56, i32 0, i32 5
  %58 = call i32 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %65 = call i32 @IWL_DEBUG_FW_ERRORS(%struct.iwl_priv* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %67 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %70 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %69, i32 0, i32 3
  %71 = call i32 @queue_work(i32 %68, i32* %70)
  br label %75

72:                                               ; preds = %60
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %74 = call i32 @IWL_DEBUG_FW_ERRORS(%struct.iwl_priv* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %63
  br label %76

76:                                               ; preds = %46, %75, %54
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iwl_abort_notification_waits(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_FW_ERRORS(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
