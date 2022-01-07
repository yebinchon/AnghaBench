; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hpsb_host = type { i32 }
%struct.eth1394_priv = type { %struct.hpsb_host* }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Timeout, resetting host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ether1394_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether1394_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hpsb_host*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i64 @netdev_priv(%struct.net_device* %4)
  %6 = inttoptr i64 %5 to %struct.eth1394_priv*
  %7 = getelementptr inbounds %struct.eth1394_priv, %struct.eth1394_priv* %6, i32 0, i32 0
  %8 = load %struct.hpsb_host*, %struct.hpsb_host** %7, align 8
  store %struct.hpsb_host* %8, %struct.hpsb_host** %3, align 8
  %9 = load i32, i32* @KERN_ERR, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ETH1394_PRINT(i32 %9, i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %15 = call i32 @ether1394_host_reset(%struct.hpsb_host* %14)
  ret void
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ETH1394_PRINT(i32, i32, i8*) #1

declare dso_local i32 @ether1394_host_reset(%struct.hpsb_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
