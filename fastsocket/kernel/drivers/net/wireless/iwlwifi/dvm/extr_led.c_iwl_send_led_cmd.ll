; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_led.c_iwl_send_led_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_led.c_iwl_send_led_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_led_cmd = type { i32 }
%struct.iwl_host_cmd = type { i32, i32, i32, i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@REPLY_LEDS_CMD = common dso_local global i32 0, align 4
@CSR_LED_REG = common dso_local global i32 0, align 4
@CSR_LED_BSM_CTRL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_led_cmd*)* @iwl_send_led_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_led_cmd(%struct.iwl_priv* %0, %struct.iwl_led_cmd* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_led_cmd*, align 8
  %5 = alloca %struct.iwl_host_cmd, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_led_cmd* %1, %struct.iwl_led_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 0
  %8 = load i32, i32* @CMD_ASYNC, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 1
  %10 = load %struct.iwl_led_cmd*, %struct.iwl_led_cmd** %4, align 8
  %11 = ptrtoint %struct.iwl_led_cmd* %10 to i32
  store i32 %11, i32* %9, align 4
  %12 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 2
  store i32 4, i32* %12, align 4
  %13 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 3
  %14 = load i32, i32* @REPLY_LEDS_CMD, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CSR_LED_REG, align 4
  %19 = call i32 @iwl_read32(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @CSR_LED_BSM_CTRL_MSK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CSR_LED_REG, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CSR_LED_BSM_CTRL_MSK, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @iwl_write32(i32 %28, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %25, %2
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %36 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %35, %struct.iwl_host_cmd* %5)
  ret i32 %36
}

declare dso_local i32 @iwl_read32(i32, i32) #1

declare dso_local i32 @iwl_write32(i32, i32, i32) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
