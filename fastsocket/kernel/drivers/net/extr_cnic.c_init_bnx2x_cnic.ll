; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_init_bnx2x_cnic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_init_bnx2x_cnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i64, i32, i32, i32, i32, %struct.pci_dev*, %struct.cnic_local*, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.cnic_local = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32, i64, i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.net_device = type { i32 }
%struct.bnx2x = type { %struct.cnic_eth_dev* (%struct.net_device*)* }

@CNIC_F_BNX2X_CLASS = common dso_local global i32 0, align 4
@cnic_submit_bnx2x_kwqes = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_NO_ISCSI = common dso_local global i32 0, align 4
@BNX2X_FCOE_NUM_CONNECTIONS = common dso_local global i64 0, align 8
@cnic_bnx2x_ops = common dso_local global i32 0, align 4
@cnic_start_bnx2x_hw = common dso_local global i32 0, align 4
@cnic_stop_bnx2x_hw = common dso_local global i32 0, align 4
@cnic_setup_page_tbl_le = common dso_local global i32 0, align 4
@cnic_alloc_bnx2x_resc = common dso_local global i32 0, align 4
@cnic_free_resc = common dso_local global i32 0, align 4
@cnic_cm_init_bnx2x_hw = common dso_local global i32 0, align 4
@cnic_cm_stop_bnx2x_hw = common dso_local global i32 0, align 4
@cnic_enable_bnx2x_int = common dso_local global i32 0, align 4
@cnic_disable_bnx2x_int_sync = common dso_local global i32 0, align 4
@cnic_ack_bnx2x_e2_msix = common dso_local global i32 0, align 4
@cnic_arm_bnx2x_e2_msix = common dso_local global i32 0, align 4
@cnic_ack_bnx2x_msix = common dso_local global i32 0, align 4
@cnic_arm_bnx2x_msix = common dso_local global i32 0, align 4
@cnic_close_bnx2x_conn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cnic_dev* (%struct.net_device*)* @init_bnx2x_cnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cnic_dev* @init_bnx2x_cnic(%struct.net_device* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca %struct.cnic_local*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.cnic_eth_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %9)
  store %struct.bnx2x* %10, %struct.bnx2x** %7, align 8
  store %struct.cnic_eth_dev* null, %struct.cnic_eth_dev** %8, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 0
  %13 = load %struct.cnic_eth_dev* (%struct.net_device*)*, %struct.cnic_eth_dev* (%struct.net_device*)** %12, align 8
  %14 = icmp ne %struct.cnic_eth_dev* (%struct.net_device*)* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 0
  %18 = load %struct.cnic_eth_dev* (%struct.net_device*)*, %struct.cnic_eth_dev* (%struct.net_device*)** %17, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call %struct.cnic_eth_dev* %18(%struct.net_device* %19)
  store %struct.cnic_eth_dev* %20, %struct.cnic_eth_dev** %8, align 8
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %23 = icmp ne %struct.cnic_eth_dev* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store %struct.cnic_dev* null, %struct.cnic_dev** %2, align 8
  br label %166

25:                                               ; preds = %21
  %26 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %27 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %26, i32 0, i32 7
  %28 = load %struct.pci_dev*, %struct.pci_dev** %27, align 8
  store %struct.pci_dev* %28, %struct.pci_dev** %4, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = icmp ne %struct.pci_dev* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store %struct.cnic_dev* null, %struct.cnic_dev** %2, align 8
  br label %166

32:                                               ; preds = %25
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @dev_hold(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call %struct.cnic_dev* @cnic_alloc_dev(%struct.net_device* %35, %struct.pci_dev* %36)
  store %struct.cnic_dev* %37, %struct.cnic_dev** %5, align 8
  %38 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %39 = icmp eq %struct.cnic_dev* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @dev_put(%struct.net_device* %41)
  store %struct.cnic_dev* null, %struct.cnic_dev** %2, align 8
  br label %166

43:                                               ; preds = %32
  %44 = load i32, i32* @CNIC_F_BNX2X_CLASS, align 4
  %45 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %46 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %45, i32 0, i32 8
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  %48 = load i32, i32* @cnic_submit_bnx2x_kwqes, align 4
  %49 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %50 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %52 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %51, i32 0, i32 6
  %53 = load %struct.cnic_local*, %struct.cnic_local** %52, align 8
  store %struct.cnic_local* %53, %struct.cnic_local** %6, align 8
  %54 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %55 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %56 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %55, i32 0, i32 14
  store %struct.cnic_eth_dev* %54, %struct.cnic_eth_dev** %56, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %59 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %58, i32 0, i32 5
  store %struct.pci_dev* %57, %struct.pci_dev** %59, align 8
  %60 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %61 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %64 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 8
  %65 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %66 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %69 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %71 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CNIC_DRV_STATE_NO_ISCSI, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %43
  %77 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %78 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %81 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %76, %43
  %83 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %84 = call i64 @CNIC_SUPPORTS_FCOE(%struct.bnx2x* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %88 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %91 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %93 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %96 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %86, %82
  %98 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %99 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @BNX2X_FCOE_NUM_CONNECTIONS, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i64, i64* @BNX2X_FCOE_NUM_CONNECTIONS, align 8
  %105 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %106 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %97
  %108 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %109 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %112 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @memcpy(i32 %110, i32 %113, i32 6)
  %115 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %116 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %115, i32 0, i32 12
  store i32* @cnic_bnx2x_ops, i32** %116, align 8
  %117 = load i32, i32* @cnic_start_bnx2x_hw, align 4
  %118 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %119 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %118, i32 0, i32 11
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @cnic_stop_bnx2x_hw, align 4
  %121 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %122 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %121, i32 0, i32 10
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* @cnic_setup_page_tbl_le, align 4
  %124 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %125 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %124, i32 0, i32 9
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @cnic_alloc_bnx2x_resc, align 4
  %127 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %128 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @cnic_free_resc, align 4
  %130 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %131 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @cnic_cm_init_bnx2x_hw, align 4
  %133 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %134 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @cnic_cm_stop_bnx2x_hw, align 4
  %136 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %137 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @cnic_enable_bnx2x_int, align 4
  %139 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %140 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @cnic_disable_bnx2x_int_sync, align 4
  %142 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %143 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %145 = call i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %107
  %148 = load i32, i32* @cnic_ack_bnx2x_e2_msix, align 4
  %149 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %150 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @cnic_arm_bnx2x_e2_msix, align 4
  %152 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %153 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  br label %161

154:                                              ; preds = %107
  %155 = load i32, i32* @cnic_ack_bnx2x_msix, align 4
  %156 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %157 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* @cnic_arm_bnx2x_msix, align 4
  %159 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %160 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %154, %147
  %162 = load i32, i32* @cnic_close_bnx2x_conn, align 4
  %163 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %164 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  store %struct.cnic_dev* %165, %struct.cnic_dev** %2, align 8
  br label %166

166:                                              ; preds = %161, %40, %31, %24
  %167 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  ret %struct.cnic_dev* %167
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local %struct.cnic_dev* @cnic_alloc_dev(%struct.net_device*, %struct.pci_dev*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @CNIC_SUPPORTS_FCOE(%struct.bnx2x*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
