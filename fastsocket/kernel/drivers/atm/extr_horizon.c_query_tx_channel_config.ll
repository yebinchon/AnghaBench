; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_query_tx_channel_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_query_tx_channel_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TX_CHANNEL_CONFIG_COMMAND_OFF = common dso_local global i32 0, align 4
@TX_CHANNEL_CONFIG_MULT = common dso_local global i16 0, align 2
@TX_CHANNEL_CONFIG_DATA_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i16, i16)* @query_tx_channel_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_tx_channel_config(i32* %0, i16 signext %1, i16 signext %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store i32* %0, i32** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @TX_CHANNEL_CONFIG_COMMAND_OFF, align 4
  %9 = load i16, i16* %5, align 2
  %10 = sext i16 %9 to i32
  %11 = load i16, i16* @TX_CHANNEL_CONFIG_MULT, align 2
  %12 = sext i16 %11 to i32
  %13 = mul nsw i32 %10, %12
  %14 = load i16, i16* %6, align 2
  %15 = sext i16 %14 to i32
  %16 = or i32 %13, %15
  %17 = trunc i32 %16 to i16
  %18 = call i32 @wr_regw(i32* %7, i32 %8, i16 signext %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @TX_CHANNEL_CONFIG_DATA_OFF, align 4
  %21 = call i32 @rd_regw(i32* %19, i32 %20)
  ret i32 %21
}

declare dso_local i32 @wr_regw(i32*, i32, i16 signext) #1

declare dso_local i32 @rd_regw(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
