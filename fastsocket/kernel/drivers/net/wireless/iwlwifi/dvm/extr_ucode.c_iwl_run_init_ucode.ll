; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_ucode.c_iwl_run_init_ucode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_ucode.c_iwl_run_init_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_notification_wait = type { i32 }

@iwl_run_init_ucode.calib_complete = internal constant [2 x i32] [i32 128, i32 129], align 4
@IWL_UCODE_INIT = common dso_local global i64 0, align 8
@iwlagn_wait_calib = common dso_local global i32 0, align 4
@UCODE_CALIB_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_run_init_ucode(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_notification_wait, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 5
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i64, i64* @IWL_UCODE_INIT, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

23:                                               ; preds = %1
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %71

29:                                               ; preds = %23
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 3
  %32 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @iwl_run_init_ucode.calib_complete, i64 0, i64 0))
  %33 = load i32, i32* @iwlagn_wait_calib, align 4
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %35 = call i32 @iwl_init_notification_wait(i32* %31, %struct.iwl_notification_wait* %4, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @iwl_run_init_ucode.calib_complete, i64 0, i64 0), i32 %32, i32 %33, %struct.iwl_priv* %34)
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %37 = load i64, i64* @IWL_UCODE_INIT, align 8
  %38 = call i32 @iwl_load_ucode_wait_alive(%struct.iwl_priv* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %59

42:                                               ; preds = %29
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %44 = call i32 @iwl_init_alive_start(%struct.iwl_priv* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %59

48:                                               ; preds = %42
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 3
  %51 = load i32, i32* @UCODE_CALIB_TIMEOUT, align 4
  %52 = call i32 @iwl_wait_notification(i32* %50, %struct.iwl_notification_wait* %4, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %57 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %48
  br label %63

59:                                               ; preds = %47, %41
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 3
  %62 = call i32 @iwl_remove_notification(i32* %61, %struct.iwl_notification_wait* %4)
  br label %63

63:                                               ; preds = %59, %58
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @iwl_trans_stop_device(i32 %66)
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %69 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %63, %28, %22
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, %struct.iwl_priv*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_load_ucode_wait_alive(%struct.iwl_priv*, i64) #1

declare dso_local i32 @iwl_init_alive_start(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #1

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #1

declare dso_local i32 @iwl_trans_stop_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
