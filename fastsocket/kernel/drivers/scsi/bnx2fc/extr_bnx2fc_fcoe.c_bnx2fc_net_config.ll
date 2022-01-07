; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_net_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_net_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.net_device = type { i32 }
%struct.bnx2fc_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2fc_interface = type { %struct.bnx2fc_hba* }
%struct.fcoe_ctlr = type { i32 }
%struct.fcoe_port = type { i32, i64, i32, %struct.bnx2fc_interface* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BNX2FC_MFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fcoe_queue_timer = common dso_local global i32 0, align 4
@NETDEV_FCOE_WWNN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"WWNN = 0x%llx\0A\00", align 1
@NETDEV_FCOE_WWPN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"WWPN = 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.net_device*)* @bnx2fc_net_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_net_config(%struct.fc_lport* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bnx2fc_hba*, align 8
  %7 = alloca %struct.bnx2fc_interface*, align 8
  %8 = alloca %struct.fcoe_ctlr*, align 8
  %9 = alloca %struct.fcoe_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %13 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %12)
  store %struct.fcoe_port* %13, %struct.fcoe_port** %9, align 8
  %14 = load %struct.fcoe_port*, %struct.fcoe_port** %9, align 8
  %15 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %14, i32 0, i32 3
  %16 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %15, align 8
  store %struct.bnx2fc_interface* %16, %struct.bnx2fc_interface** %7, align 8
  %17 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %7, align 8
  %18 = call %struct.fcoe_ctlr* @bnx2fc_to_ctlr(%struct.bnx2fc_interface* %17)
  store %struct.fcoe_ctlr* %18, %struct.fcoe_ctlr** %8, align 8
  %19 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %19, i32 0, i32 0
  %21 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %20, align 8
  store %struct.bnx2fc_hba* %21, %struct.bnx2fc_hba** %6, align 8
  %22 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %6, align 8
  %23 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %6, align 8
  %30 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28, %2
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %100

40:                                               ; preds = %28
  %41 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %42 = load i32, i32* @BNX2FC_MFS, align 4
  %43 = call i64 @fc_set_mfs(%struct.fc_lport* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %100

48:                                               ; preds = %40
  %49 = load %struct.fcoe_port*, %struct.fcoe_port** %9, align 8
  %50 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %49, i32 0, i32 2
  %51 = call i32 @skb_queue_head_init(i32* %50)
  %52 = load %struct.fcoe_port*, %struct.fcoe_port** %9, align 8
  %53 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.fcoe_port*, %struct.fcoe_port** %9, align 8
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
  br i1 %65, label %99, label %66

66:                                               ; preds = %48
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = load i32, i32* @NETDEV_FCOE_WWNN, align 4
  %69 = call i64 @fcoe_get_wwn(%struct.net_device* %67, i32* %10, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %8, align 8
  %73 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @fcoe_wwn_from_mac(i32 %74, i32 1, i32 0)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @BNX2FC_HBA_DBG(%struct.fc_lport* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @fc_set_wwnn(%struct.fc_lport* %80, i32 %81)
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = load i32, i32* @NETDEV_FCOE_WWPN, align 4
  %85 = call i64 @fcoe_get_wwn(%struct.net_device* %83, i32* %11, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %8, align 8
  %89 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @fcoe_wwn_from_mac(i32 %90, i32 2, i32 0)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %87, %76
  %93 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @BNX2FC_HBA_DBG(%struct.fc_lport* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @fc_set_wwpn(%struct.fc_lport* %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %48
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %45, %37
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local %struct.fcoe_ctlr* @bnx2fc_to_ctlr(%struct.bnx2fc_interface*) #1

declare dso_local i64 @fc_set_mfs(%struct.fc_lport*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @fcoe_link_speed_update(%struct.fc_lport*) #1

declare dso_local i64 @fcoe_get_wwn(%struct.net_device*, i32*, i32) #1

declare dso_local i32 @fcoe_wwn_from_mac(i32, i32, i32) #1

declare dso_local i32 @BNX2FC_HBA_DBG(%struct.fc_lport*, i8*, i32) #1

declare dso_local i32 @fc_set_wwnn(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_set_wwpn(%struct.fc_lport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
