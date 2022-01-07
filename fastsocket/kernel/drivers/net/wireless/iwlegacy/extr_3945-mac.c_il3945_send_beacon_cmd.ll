; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_send_beacon_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_send_beacon_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il3945_frame = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [56 x i8] c"Could not obtain free frame buffer for beacon command.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@C_TX_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il3945_send_beacon_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_send_beacon_cmd(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il3945_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = call %struct.il3945_frame* @il3945_get_free_frame(%struct.il_priv* %8)
  store %struct.il3945_frame* %9, %struct.il3945_frame** %4, align 8
  %10 = load %struct.il3945_frame*, %struct.il3945_frame** %4, align 8
  %11 = icmp ne %struct.il3945_frame* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @IL_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %18 = call i32 @il_get_lowest_plcp(%struct.il_priv* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %20 = load %struct.il3945_frame*, %struct.il3945_frame** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @il3945_hw_get_beacon_cmd(%struct.il_priv* %19, %struct.il3945_frame* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = load i32, i32* @C_TX_BEACON, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.il3945_frame*, %struct.il3945_frame** %4, align 8
  %27 = getelementptr inbounds %struct.il3945_frame, %struct.il3945_frame* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @il_send_cmd_pdu(%struct.il_priv* %23, i32 %24, i32 %25, i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %33 = load %struct.il3945_frame*, %struct.il3945_frame** %4, align 8
  %34 = call i32 @il3945_free_frame(%struct.il_priv* %32, %struct.il3945_frame* %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %16, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.il3945_frame* @il3945_get_free_frame(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @il_get_lowest_plcp(%struct.il_priv*) #1

declare dso_local i32 @il3945_hw_get_beacon_cmd(%struct.il_priv*, %struct.il3945_frame*, i32) #1

declare dso_local i32 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, i32*) #1

declare dso_local i32 @il3945_free_frame(%struct.il_priv*, %struct.il3945_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
