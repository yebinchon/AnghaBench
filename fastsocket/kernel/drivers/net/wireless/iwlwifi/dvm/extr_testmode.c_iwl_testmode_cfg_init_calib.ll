; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_testmode.c_iwl_testmode_cfg_init_calib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_testmode.c_iwl_testmode_cfg_init_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_notification_wait = type { i32 }

@iwl_testmode_cfg_init_calib.calib_complete = internal constant [1 x i32] [i32 128], align 4
@.str = private unnamed_addr constant [27 x i8] c"Fail init calibration: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Error detecting CALIBRATION_COMPLETE_NOTIFICATION: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_testmode_cfg_init_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_testmode_cfg_init_calib(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_notification_wait, align 4
  %5 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 0
  %8 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_testmode_cfg_init_calib.calib_complete, i64 0, i64 0))
  %9 = call i32 @iwl_init_notification_wait(i32* %7, %struct.iwl_notification_wait* %4, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_testmode_cfg_init_calib.calib_complete, i64 0, i64 0), i32 %8, i32* null, i32* null)
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %11 = call i32 @iwl_init_alive_start(%struct.iwl_priv* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @IWL_ERR(%struct.iwl_priv* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %19, i32 0, i32 0
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 2, %21
  %23 = call i32 @iwl_wait_notification(i32* %20, %struct.iwl_notification_wait* %4, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @IWL_ERR(%struct.iwl_priv* %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %18
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %14
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 0
  %35 = call i32 @iwl_remove_notification(i32* %34, %struct.iwl_notification_wait* %4)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %30
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_init_alive_start(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #1

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
