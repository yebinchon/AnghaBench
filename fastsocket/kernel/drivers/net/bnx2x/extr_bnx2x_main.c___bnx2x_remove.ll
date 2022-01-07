; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c___bnx2x_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c___bnx2x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.bnx2x = type { i32, i64, i64, i32, i32, i32, i32 }

@NETDEV_HW_ADDR_T_SAN = common dso_local global i32 0, align 4
@BC_SUPPORTS_RMMOD_CMD = common dso_local global i32 0, align 4
@DRV_MSG_CODE_RMMOD = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@system_state = common dso_local global i64 0, align 8
@SYSTEM_POWER_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.net_device*, %struct.bnx2x*, i32)* @__bnx2x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnx2x_remove(%struct.pci_dev* %0, %struct.net_device* %1, %struct.bnx2x* %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.bnx2x* %2, %struct.bnx2x** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %10 = call i32 @NO_FCOE(%struct.bnx2x* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  %13 = call i32 (...) @rtnl_lock()
  %14 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NETDEV_HW_ADDR_T_SAN, align 4
  %21 = call i32 @dev_addr_del(i32 %16, i32 %19, i32 %20)
  %22 = call i32 (...) @rtnl_unlock()
  br label %23

23:                                               ; preds = %12, %4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %25 = call i64 @IS_PF(%struct.bnx2x* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %29 = call i32 @BP_NOMCP(%struct.bnx2x* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BC_SUPPORTS_RMMOD_CMD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %40 = load i32, i32* @DRV_MSG_CODE_RMMOD, align 4
  %41 = call i32 @bnx2x_fw_command(%struct.bnx2x* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %38, %31, %27, %23
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = call i32 @unregister_netdev(%struct.net_device* %46)
  br label %53

48:                                               ; preds = %42
  %49 = call i32 (...) @rtnl_lock()
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = call i32 @dev_close(%struct.net_device* %50)
  %52 = call i32 (...) @rtnl_unlock()
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %55 = call i32 @bnx2x_iov_remove_one(%struct.bnx2x* %54)
  %56 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %57 = call i64 @IS_PF(%struct.bnx2x* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %61 = load i32, i32* @PCI_D0, align 4
  %62 = call i32 @bnx2x_set_power_state(%struct.bnx2x* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %53
  %64 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %65 = call i32 @bnx2x_disable_msi(%struct.bnx2x* %64)
  %66 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %67 = call i64 @IS_PF(%struct.bnx2x* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %71 = load i32, i32* @PCI_D3hot, align 4
  %72 = call i32 @bnx2x_set_power_state(%struct.bnx2x* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %75 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %74, i32 0, i32 4
  %76 = call i32 @cancel_delayed_work_sync(i32* %75)
  %77 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %78 = call i64 @IS_VF(%struct.bnx2x* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %82 = call i32 @bnx2x_vfpf_release(%struct.bnx2x* %81)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i64, i64* @system_state, align 8
  %85 = load i64, i64* @SYSTEM_POWER_OFF, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pci_wake_from_d3(%struct.pci_dev* %88, i32 %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %94 = load i32, i32* @PCI_D3hot, align 4
  %95 = call i32 @pci_set_power_state(%struct.pci_dev* %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %83
  %97 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %98 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %103 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @iounmap(i64 %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %108 = call i64 @IS_PF(%struct.bnx2x* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %112 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %117 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @iounmap(i64 %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %122 = call i32 @bnx2x_release_firmware(%struct.bnx2x* %121)
  br label %123

123:                                              ; preds = %120, %106
  %124 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %125 = call i32 @bnx2x_free_mem_bp(%struct.bnx2x* %124)
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.net_device*, %struct.net_device** %6, align 8
  %130 = call i32 @free_netdev(%struct.net_device* %129)
  br label %131

131:                                              ; preds = %128, %123
  %132 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %133 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %132, i32 0, i32 0
  %134 = call i32 @atomic_read(i32* %133)
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %138 = call i32 @pci_release_regions(%struct.pci_dev* %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %141 = call i32 @pci_disable_device(%struct.pci_dev* %140)
  %142 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %143 = call i32 @pci_set_drvdata(%struct.pci_dev* %142, i32* null)
  ret void
}

declare dso_local i32 @NO_FCOE(%struct.bnx2x*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_addr_del(i32, i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @bnx2x_iov_remove_one(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_power_state(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_disable_msi(%struct.bnx2x*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_vfpf_release(%struct.bnx2x*) #1

declare dso_local i32 @pci_wake_from_d3(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @bnx2x_release_firmware(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_free_mem_bp(%struct.bnx2x*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
