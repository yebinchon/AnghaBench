; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_link_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_link_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { %struct.bnx2fc_hba* }
%struct.bnx2fc_hba = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@ADAPTER_STATE_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*)* @bnx2fc_link_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_link_ok(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fcoe_port*, align 8
  %4 = alloca %struct.bnx2fc_interface*, align 8
  %5 = alloca %struct.bnx2fc_hba*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %8 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %9 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %8)
  store %struct.fcoe_port* %9, %struct.fcoe_port** %3, align 8
  %10 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %11 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %10, i32 0, i32 0
  %12 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %11, align 8
  store %struct.bnx2fc_interface* %12, %struct.bnx2fc_interface** %4, align 8
  %13 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %13, i32 0, i32 0
  %15 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %14, align 8
  store %struct.bnx2fc_hba* %15, %struct.bnx2fc_hba** %5, align 8
  %16 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %5, align 8
  %17 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_UP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = call i64 @netif_carrier_ok(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* @ADAPTER_STATE_LINK_DOWN, align 4
  %31 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %5, align 8
  %32 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %31, i32 0, i32 0
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  br label %39

34:                                               ; preds = %25, %1
  %35 = load i32, i32* @ADAPTER_STATE_LINK_DOWN, align 4
  %36 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %5, align 8
  %37 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %36, i32 0, i32 0
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  store i32 -1, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
