; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_mac_intf_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_pasemi_mac_intf_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac = type { i32 }

@PAS_MAC_CFG_PCFG = common dso_local global i32 0, align 4
@PAS_MAC_CFG_PCFG_PE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pasemi_mac*)* @pasemi_mac_intf_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasemi_mac_intf_disable(%struct.pasemi_mac* %0) #0 {
  %2 = alloca %struct.pasemi_mac*, align 8
  %3 = alloca i32, align 4
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %2, align 8
  %4 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %5 = load i32, i32* @PAS_MAC_CFG_PCFG, align 4
  %6 = call i32 @read_mac_reg(%struct.pasemi_mac* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @PAS_MAC_CFG_PCFG_PE, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %12 = load i32, i32* @PAS_MAC_CFG_PCFG, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @write_mac_reg(%struct.pasemi_mac* %11, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @read_mac_reg(%struct.pasemi_mac*, i32) #1

declare dso_local i32 @write_mac_reg(%struct.pasemi_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
