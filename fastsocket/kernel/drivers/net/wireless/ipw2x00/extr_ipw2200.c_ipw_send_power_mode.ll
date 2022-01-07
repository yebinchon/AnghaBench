; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_send_power_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_send_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Invalid args\0A\00", align 1
@IPW_POWER_INDEX_3 = common dso_local global i32 0, align 4
@IPW_POWER_MODE_CAM = common dso_local global i32 0, align 4
@IPW_CMD_POWER_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i32)* @ipw_send_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_send_power_mode(%struct.ipw_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %8 = icmp ne %struct.ipw_priv* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %26

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %19 [
    i32 128, label %13
    i32 129, label %16
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @IPW_POWER_INDEX_3, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  store i32 %15, i32* %6, align 4
  br label %22

16:                                               ; preds = %11
  %17 = load i32, i32* @IPW_POWER_MODE_CAM, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  store i32 %18, i32* %6, align 4
  br label %22

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @cpu_to_le32(i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %16, %13
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %24 = load i32, i32* @IPW_CMD_POWER_MODE, align 4
  %25 = call i32 @ipw_send_cmd_pdu(%struct.ipw_priv* %23, i32 %24, i32 4, i32* %6)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @IPW_ERROR(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ipw_send_cmd_pdu(%struct.ipw_priv*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
