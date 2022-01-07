; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_bt_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_bt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_bt_cmd = type { i64, i32, i32, i32, i32 }

@BT_MAX_KILL_DEF = common dso_local global i32 0, align 4
@BT_LEAD_TIME_DEF = common dso_local global i32 0, align 4
@bt_coex_active = common dso_local global i32 0, align 4
@BT_COEX_DISABLE = common dso_local global i64 0, align 8
@BT_COEX_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"BT coex %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@C_BT_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to send BT Coex Config\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_send_bt_config(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca %struct.il_bt_cmd, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %4 = getelementptr inbounds %struct.il_bt_cmd, %struct.il_bt_cmd* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.il_bt_cmd, %struct.il_bt_cmd* %3, i32 0, i32 1
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %struct.il_bt_cmd, %struct.il_bt_cmd* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.il_bt_cmd, %struct.il_bt_cmd* %3, i32 0, i32 3
  %8 = load i32, i32* @BT_MAX_KILL_DEF, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.il_bt_cmd, %struct.il_bt_cmd* %3, i32 0, i32 4
  %10 = load i32, i32* @BT_LEAD_TIME_DEF, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @bt_coex_active, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* @BT_COEX_DISABLE, align 8
  %15 = getelementptr inbounds %struct.il_bt_cmd, %struct.il_bt_cmd* %3, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load i64, i64* @BT_COEX_ENABLE, align 8
  %18 = getelementptr inbounds %struct.il_bt_cmd, %struct.il_bt_cmd* %3, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = getelementptr inbounds %struct.il_bt_cmd, %struct.il_bt_cmd* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BT_COEX_DISABLE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 @D_INFO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %28 = load i32, i32* @C_BT_CONFIG, align 4
  %29 = call i64 @il_send_cmd_pdu(%struct.il_priv* %27, i32 %28, i32 24, %struct.il_bt_cmd* %3)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = call i32 @IL_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %19
  ret void
}

declare dso_local i32 @D_INFO(i8*, i8*) #1

declare dso_local i64 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, %struct.il_bt_cmd*) #1

declare dso_local i32 @IL_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
