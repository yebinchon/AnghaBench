; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_corruption_detected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_corruption_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { %struct.TYPE_7__*, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ipw2100_status* }
%struct.ipw2100_status = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c": PCI latency error detected at 0x%04zX.\0A\00", align 1
@IPW2100_ERR_C3_CORRUPTION = common dso_local global i32 0, align 4
@IPW_AUX_HOST_RESET_REG_MASTER_DISABLED = common dso_local global i32 0, align 4
@IPW_AUX_HOST_RESET_REG_STOP_MASTER = common dso_local global i32 0, align 4
@IPW_REG_RESET_REG = common dso_local global i32 0, align 4
@IPW_WAIT_RESET_MASTER_ASSERT_COMPLETE_DELAY = common dso_local global i32 0, align 4
@RX_QUEUE_LENGTH = common dso_local global i32 0, align 4
@SEARCH_SNAPSHOT = common dso_local global i32 0, align 4
@SEARCH_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*, i32)* @ipw2100_corruption_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw2100_corruption_detected(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = trunc i64 %7 to i32
  %9 = call i32 (i8*, i32, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @IPW2100_ERR_C3_CORRUPTION, align 4
  %11 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %21 = call i32 @schedule_reset(%struct.ipw2100_priv* %20)
  ret void
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i32, ...) #1

declare dso_local i32 @schedule_reset(%struct.ipw2100_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
