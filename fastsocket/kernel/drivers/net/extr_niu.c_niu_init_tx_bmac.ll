; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_tx_bmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_tx_bmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@BMAC_MIN_FRAME = common dso_local global i32 0, align 4
@BMAC_MAX_FRAME = common dso_local global i32 0, align 4
@BTXMAC_STATUS_MASK = common dso_local global i32 0, align 4
@BMAC_CTRL_TYPE = common dso_local global i32 0, align 4
@BMAC_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@BTXMAC_CONFIG = common dso_local global i32 0, align 4
@BTXMAC_CONFIG_FCS_DISABLE = common dso_local global i32 0, align 4
@BTXMAC_CONFIG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, i32, i32)* @niu_init_tx_bmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_init_tx_bmac(%struct.niu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @BMAC_MIN_FRAME, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @nw64_mac(i32 %8, i32 %9)
  %11 = load i32, i32* @BMAC_MAX_FRAME, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @nw64_mac(i32 %11, i32 %12)
  %14 = load i32, i32* @BTXMAC_STATUS_MASK, align 4
  %15 = call i32 @nw64_mac(i32 %14, i32 -1)
  %16 = load i32, i32* @BMAC_CTRL_TYPE, align 4
  %17 = call i32 @nw64_mac(i32 %16, i32 34824)
  %18 = load i32, i32* @BMAC_PREAMBLE_SIZE, align 4
  %19 = call i32 @nw64_mac(i32 %18, i32 7)
  %20 = load i32, i32* @BTXMAC_CONFIG, align 4
  %21 = call i32 @nr64_mac(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @BTXMAC_CONFIG_FCS_DISABLE, align 4
  %23 = load i32, i32* @BTXMAC_CONFIG_ENABLE, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @BTXMAC_CONFIG, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @nw64_mac(i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @nw64_mac(i32, i32) #1

declare dso_local i32 @nr64_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
