; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_stats_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_stats_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_stats_cmd = type { i32 }

@IL_STATS_CONF_CLEAR_STATS = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@C_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_send_stats_request(%struct.il_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_stats_cmd, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = getelementptr inbounds %struct.il_stats_cmd, %struct.il_stats_cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @IL_STATS_CONF_CLEAR_STATS, align 4
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @CMD_ASYNC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %23 = load i32, i32* @C_STATS, align 4
  %24 = call i32 @il_send_cmd_pdu_async(%struct.il_priv* %22, i32 %23, i32 4, %struct.il_stats_cmd* %8, i32* null)
  store i32 %24, i32* %4, align 4
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %27 = load i32, i32* @C_STATS, align 4
  %28 = call i32 @il_send_cmd_pdu(%struct.il_priv* %26, i32 %27, i32 4, %struct.il_stats_cmd* %8)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @il_send_cmd_pdu_async(%struct.il_priv*, i32, i32, %struct.il_stats_cmd*, i32*) #1

declare dso_local i32 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, %struct.il_stats_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
