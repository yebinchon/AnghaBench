; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc911x.c_smc911x_ethtool_getregslen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc911x.c_smc911x_ethtool_getregslen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@E2P_CMD = common dso_local global i32 0, align 4
@ID_REV = common dso_local global i32 0, align 4
@WUCSR = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smc911x_ethtool_getregslen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc911x_ethtool_getregslen(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load i32, i32* @E2P_CMD, align 4
  %4 = load i32, i32* @ID_REV, align 4
  %5 = sub nsw i32 %3, %4
  %6 = sdiv i32 %5, 4
  %7 = add nsw i32 %6, 1
  %8 = load i32, i32* @WUCSR, align 4
  %9 = load i32, i32* @MAC_CR, align 4
  %10 = sub nsw i32 %8, %9
  %11 = add nsw i32 %7, %10
  %12 = add nsw i32 %11, 1
  %13 = add nsw i32 %12, 32
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
