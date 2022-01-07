; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_cmd.c_wl1271_cmd_ext_radio_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_cmd.c_wl1271_cmd_ext_radio_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, %struct.wl12xx_priv* }
%struct.wl12xx_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.wl12xx_conf_rf }
%struct.wl12xx_conf_rf = type { i32, i32 }
%struct.wl1271_ext_radio_parms_cmd = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TEST_CMD_INI_FILE_RF_EXTENDED_PARAM = common dso_local global i32 0, align 4
@CONF_TX_PWR_COMPENSATION_LEN_2 = common dso_local global i32 0, align 4
@CONF_TX_PWR_COMPENSATION_LEN_5 = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"TEST_CMD_INI_FILE_EXT_RADIO_PARAM: \00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"TEST_CMD_INI_FILE_RF_EXTENDED_PARAM failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_cmd_ext_radio_parms(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl1271_ext_radio_parms_cmd*, align 8
  %5 = alloca %struct.wl12xx_priv*, align 8
  %6 = alloca %struct.wl12xx_conf_rf*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %8 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %9 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %8, i32 0, i32 1
  %10 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %9, align 8
  store %struct.wl12xx_priv* %10, %struct.wl12xx_priv** %5, align 8
  %11 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %5, align 8
  %12 = getelementptr inbounds %struct.wl12xx_priv, %struct.wl12xx_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.wl12xx_conf_rf* %13, %struct.wl12xx_conf_rf** %6, align 8
  %14 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %64

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.wl1271_ext_radio_parms_cmd* @kzalloc(i32 12, i32 %22)
  store %struct.wl1271_ext_radio_parms_cmd* %23, %struct.wl1271_ext_radio_parms_cmd** %4, align 8
  %24 = load %struct.wl1271_ext_radio_parms_cmd*, %struct.wl1271_ext_radio_parms_cmd** %4, align 8
  %25 = icmp ne %struct.wl1271_ext_radio_parms_cmd* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %64

29:                                               ; preds = %21
  %30 = load i32, i32* @TEST_CMD_INI_FILE_RF_EXTENDED_PARAM, align 4
  %31 = load %struct.wl1271_ext_radio_parms_cmd*, %struct.wl1271_ext_radio_parms_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.wl1271_ext_radio_parms_cmd, %struct.wl1271_ext_radio_parms_cmd* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.wl1271_ext_radio_parms_cmd*, %struct.wl1271_ext_radio_parms_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.wl1271_ext_radio_parms_cmd, %struct.wl1271_ext_radio_parms_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wl12xx_conf_rf*, %struct.wl12xx_conf_rf** %6, align 8
  %38 = getelementptr inbounds %struct.wl12xx_conf_rf, %struct.wl12xx_conf_rf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CONF_TX_PWR_COMPENSATION_LEN_2, align 4
  %41 = call i32 @memcpy(i32 %36, i32 %39, i32 %40)
  %42 = load %struct.wl1271_ext_radio_parms_cmd*, %struct.wl1271_ext_radio_parms_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.wl1271_ext_radio_parms_cmd, %struct.wl1271_ext_radio_parms_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wl12xx_conf_rf*, %struct.wl12xx_conf_rf** %6, align 8
  %46 = getelementptr inbounds %struct.wl12xx_conf_rf, %struct.wl12xx_conf_rf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CONF_TX_PWR_COMPENSATION_LEN_5, align 4
  %49 = call i32 @memcpy(i32 %44, i32 %47, i32 %48)
  %50 = load i32, i32* @DEBUG_CMD, align 4
  %51 = load %struct.wl1271_ext_radio_parms_cmd*, %struct.wl1271_ext_radio_parms_cmd** %4, align 8
  %52 = call i32 @wl1271_dump(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.wl1271_ext_radio_parms_cmd* %51, i32 12)
  %53 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %54 = load %struct.wl1271_ext_radio_parms_cmd*, %struct.wl1271_ext_radio_parms_cmd** %4, align 8
  %55 = call i32 @wl1271_cmd_test(%struct.wl1271* %53, %struct.wl1271_ext_radio_parms_cmd* %54, i32 12, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %29
  %59 = call i32 @wl1271_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %29
  %61 = load %struct.wl1271_ext_radio_parms_cmd*, %struct.wl1271_ext_radio_parms_cmd** %4, align 8
  %62 = call i32 @kfree(%struct.wl1271_ext_radio_parms_cmd* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %26, %18
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.wl1271_ext_radio_parms_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wl1271_dump(i32, i8*, %struct.wl1271_ext_radio_parms_cmd*, i32) #1

declare dso_local i32 @wl1271_cmd_test(%struct.wl1271*, %struct.wl1271_ext_radio_parms_cmd*, i32, i32) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @kfree(%struct.wl1271_ext_radio_parms_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
