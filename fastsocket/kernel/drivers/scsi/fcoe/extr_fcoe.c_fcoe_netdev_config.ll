; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_netdev_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_netdev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.fcoe_interface = type { i32 }
%struct.fcoe_ctlr = type { i32 }
%struct.fcoe_port = type { i32, i64, i32, %struct.fcoe_interface* }

@NETIF_F_FCOE_MTU = common dso_local global i32 0, align 4
@FCOE_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Supports FCOE_MTU of %d bytes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fcoe_queue_timer = common dso_local global i32 0, align 4
@NETDEV_FCOE_WWNN = common dso_local global i32 0, align 4
@NETDEV_FCOE_WWPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.net_device*)* @fcoe_netdev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_netdev_config(%struct.fc_lport* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fcoe_interface*, align 8
  %10 = alloca %struct.fcoe_ctlr*, align 8
  %11 = alloca %struct.fcoe_port*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %13 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %12)
  store %struct.fcoe_port* %13, %struct.fcoe_port** %11, align 8
  %14 = load %struct.fcoe_port*, %struct.fcoe_port** %11, align 8
  %15 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %14, i32 0, i32 3
  %16 = load %struct.fcoe_interface*, %struct.fcoe_interface** %15, align 8
  store %struct.fcoe_interface* %16, %struct.fcoe_interface** %9, align 8
  %17 = load %struct.fcoe_interface*, %struct.fcoe_interface** %9, align 8
  %18 = call %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface* %17)
  store %struct.fcoe_ctlr* %18, %struct.fcoe_ctlr** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NETIF_F_FCOE_MTU, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @FCOE_MTU, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @FCOE_NETDEV_DBG(%struct.net_device* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %2
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @fc_set_mfs(%struct.fc_lport* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %94

45:                                               ; preds = %33
  %46 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @fcoe_netdev_features_change(%struct.fc_lport* %46, %struct.net_device* %47)
  %49 = load %struct.fcoe_port*, %struct.fcoe_port** %11, align 8
  %50 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %49, i32 0, i32 2
  %51 = call i32 @skb_queue_head_init(i32* %50)
  %52 = load %struct.fcoe_port*, %struct.fcoe_port** %11, align 8
  %53 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.fcoe_port*, %struct.fcoe_port** %11, align 8
  %55 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %54, i32 0, i32 0
  %56 = load i32, i32* @fcoe_queue_timer, align 4
  %57 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %58 = ptrtoint %struct.fc_lport* %57 to i64
  %59 = call i32 @setup_timer(i32* %55, i32 %56, i64 %58)
  %60 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %61 = call i32 @fcoe_link_speed_update(%struct.fc_lport* %60)
  %62 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %63 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %45
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = load i32, i32* @NETDEV_FCOE_WWNN, align 4
  %69 = call i64 @fcoe_get_wwn(%struct.net_device* %67, i32* %7, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %10, align 8
  %73 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @fcoe_wwn_from_mac(i32 %74, i32 1, i32 0)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @fc_set_wwnn(%struct.fc_lport* %77, i32 %78)
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = load i32, i32* @NETDEV_FCOE_WWPN, align 4
  %82 = call i64 @fcoe_get_wwn(%struct.net_device* %80, i32* %8, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %10, align 8
  %86 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @fcoe_wwn_from_mac(i32 %87, i32 2, i32 0)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %84, %76
  %90 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @fc_set_wwpn(%struct.fc_lport* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %45
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %42
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local %struct.fcoe_ctlr* @fcoe_to_ctlr(%struct.fcoe_interface*) #1

declare dso_local i32 @FCOE_NETDEV_DBG(%struct.net_device*, i8*, i32) #1

declare dso_local i64 @fc_set_mfs(%struct.fc_lport*, i32) #1

declare dso_local i32 @fcoe_netdev_features_change(%struct.fc_lport*, %struct.net_device*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @fcoe_link_speed_update(%struct.fc_lport*) #1

declare dso_local i64 @fcoe_get_wwn(%struct.net_device*, i32*, i32) #1

declare dso_local i32 @fcoe_wwn_from_mac(i32, i32, i32) #1

declare dso_local i32 @fc_set_wwnn(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_set_wwpn(%struct.fc_lport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
