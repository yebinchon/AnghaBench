; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_if_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_if_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i64 }
%struct.fcoe_port = type { i32, i32, %struct.fcoe_interface* }
%struct.fcoe_interface = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Destroying interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*)* @fcoe_if_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_if_destroy(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  %3 = alloca %struct.fcoe_port*, align 8
  %4 = alloca %struct.fcoe_interface*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %7 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %6)
  store %struct.fcoe_port* %7, %struct.fcoe_port** %3, align 8
  %8 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %9 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %8, i32 0, i32 2
  %10 = load %struct.fcoe_interface*, %struct.fcoe_interface** %9, align 8
  store %struct.fcoe_interface* %10, %struct.fcoe_interface** %4, align 8
  %11 = load %struct.fcoe_interface*, %struct.fcoe_interface** %4, align 8
  %12 = getelementptr inbounds %struct.fcoe_interface, %struct.fcoe_interface* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @FCOE_NETDEV_DBG(%struct.net_device* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %17 = call i32 @fc_fabric_logoff(%struct.fc_lport* %16)
  %18 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %19 = call i32 @fc_lport_destroy(%struct.fc_lport* %18)
  %20 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %21 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %20, i32 0, i32 1
  %22 = call i32 @del_timer_sync(i32* %21)
  %23 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %24 = call i32 @fcoe_clean_pending_queue(%struct.fc_lport* %23)
  %25 = call i32 (...) @rtnl_lock()
  %26 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %27 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @is_zero_ether_addr(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %1
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load %struct.fcoe_port*, %struct.fcoe_port** %3, align 8
  %34 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_unicast_delete(%struct.net_device* %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %1
  %38 = call i32 (...) @rtnl_unlock()
  %39 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %40 = call i32 @fcoe_percpu_clean(%struct.fc_lport* %39)
  %41 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %42 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @fc_remove_host(i32 %43)
  %45 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %46 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @scsi_remove_host(i32 %47)
  %49 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %50 = call i32 @fc_fcp_destroy(%struct.fc_lport* %49)
  %51 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %52 = call i32 @fc_exch_mgr_free(%struct.fc_lport* %51)
  %53 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %54 = call i32 @fc_lport_free_stats(%struct.fc_lport* %53)
  %55 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %56 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %37
  %60 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %61 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @scsi_host_put(i32 %62)
  br label %64

64:                                               ; preds = %59, %37
  ret void
}

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @FCOE_NETDEV_DBG(%struct.net_device*, i8*) #1

declare dso_local i32 @fc_fabric_logoff(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_destroy(%struct.fc_lport*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @fcoe_clean_pending_queue(%struct.fc_lport*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @dev_unicast_delete(%struct.net_device*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @fcoe_percpu_clean(%struct.fc_lport*) #1

declare dso_local i32 @fc_remove_host(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @fc_fcp_destroy(%struct.fc_lport*) #1

declare dso_local i32 @fc_exch_mgr_free(%struct.fc_lport*) #1

declare dso_local i32 @fc_lport_free_stats(%struct.fc_lport*) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
