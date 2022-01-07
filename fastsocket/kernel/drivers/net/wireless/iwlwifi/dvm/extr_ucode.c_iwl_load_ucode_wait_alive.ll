; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_ucode.c_iwl_load_ucode_wait_alive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_ucode.c_iwl_load_ucode_wait_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, i32 }
%struct.iwl_notification_wait = type { i32 }
%struct.iwl_alive_data = type { i32 }
%struct.fw_img = type { i32 }

@iwl_load_ucode_wait_alive.alive_cmd = internal constant [1 x i32] [i32 128], align 4
@EINVAL = common dso_local global i32 0, align 4
@iwl_alive_fn = common dso_local global i32 0, align 4
@UCODE_ALIVE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Loaded ucode is not valid!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IWL_UCODE_WOWLAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not complete ALIVE transition: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_load_ucode_wait_alive(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_notification_wait, align 4
  %7 = alloca %struct.iwl_alive_data, align 4
  %8 = alloca %struct.fw_img*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.fw_img* @iwl_get_ucode_image(%struct.iwl_priv* %17, i32 %18)
  store %struct.fw_img* %19, %struct.fw_img** %8, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.fw_img*, %struct.fw_img** %8, align 8
  %23 = icmp ne %struct.fw_img* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %94

27:                                               ; preds = %2
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 2
  %30 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_load_ucode_wait_alive.alive_cmd, i64 0, i64 0))
  %31 = load i32, i32* @iwl_alive_fn, align 4
  %32 = call i32 @iwl_init_notification_wait(i32* %29, %struct.iwl_notification_wait* %6, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_load_ucode_wait_alive.alive_cmd, i64 0, i64 0), i32 %30, i32 %31, %struct.iwl_alive_data* %7)
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fw_img*, %struct.fw_img** %8, align 8
  %37 = call i32 @iwl_trans_start_fw(i32 %35, %struct.fw_img* %36, i32 0)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %45 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %44, i32 0, i32 2
  %46 = call i32 @iwl_remove_notification(i32* %45, %struct.iwl_notification_wait* %6)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %94

48:                                               ; preds = %27
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 2
  %51 = load i32, i32* @UCODE_ALIVE_TIMEOUT, align 4
  %52 = call i32 @iwl_wait_notification(i32* %50, %struct.iwl_notification_wait* %6, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %58 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %94

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.iwl_alive_data, %struct.iwl_alive_data* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %66 = call i32 @IWL_ERR(%struct.iwl_priv* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %69 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %94

72:                                               ; preds = %60
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %74 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @IWL_UCODE_WOWLAN, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 @msleep(i32 5)
  br label %80

80:                                               ; preds = %78, %72
  %81 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %82 = call i32 @iwl_alive_notify(%struct.iwl_priv* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @IWL_WARN(%struct.iwl_priv* %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %91 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %85, %64, %55, %40, %24
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.fw_img* @iwl_get_ucode_image(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_init_notification_wait(i32*, %struct.iwl_notification_wait*, i32*, i32, i32, %struct.iwl_alive_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @iwl_trans_start_fw(i32, %struct.fw_img*, i32) #1

declare dso_local i32 @iwl_remove_notification(i32*, %struct.iwl_notification_wait*) #1

declare dso_local i32 @iwl_wait_notification(i32*, %struct.iwl_notification_wait*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @iwl_alive_notify(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
