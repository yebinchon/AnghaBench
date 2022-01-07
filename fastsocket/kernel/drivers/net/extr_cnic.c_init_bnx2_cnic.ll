; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_init_bnx2_cnic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_init_bnx2_cnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.pci_dev*, %struct.cnic_local*, i32, i32 }
%struct.pci_dev = type { i64 }
%struct.cnic_local = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32, i32, %struct.pci_dev* }
%struct.net_device = type { i32 }
%struct.bnx2 = type { %struct.cnic_eth_dev* (%struct.net_device*)* }

@PCI_DEVICE_ID_NX2_5709 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NX2_5709S = common dso_local global i64 0, align 8
@PCI_REVISION_ID = common dso_local global i32 0, align 4
@CNIC_F_BNX2_CLASS = common dso_local global i32 0, align 4
@cnic_submit_bnx2_kwqes = common dso_local global i32 0, align 4
@cnic_bnx2_ops = common dso_local global i32 0, align 4
@cnic_start_bnx2_hw = common dso_local global i32 0, align 4
@cnic_stop_bnx2_hw = common dso_local global i32 0, align 4
@cnic_setup_page_tbl = common dso_local global i32 0, align 4
@cnic_alloc_bnx2_resc = common dso_local global i32 0, align 4
@cnic_free_resc = common dso_local global i32 0, align 4
@cnic_cm_init_bnx2_hw = common dso_local global i32 0, align 4
@cnic_cm_stop_bnx2_hw = common dso_local global i32 0, align 4
@cnic_enable_bnx2_int = common dso_local global i32 0, align 4
@cnic_disable_bnx2_int_sync = common dso_local global i32 0, align 4
@cnic_close_bnx2_conn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cnic_dev* (%struct.net_device*)* @init_bnx2_cnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cnic_dev* @init_bnx2_cnic(%struct.net_device* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca %struct.cnic_local*, align 8
  %7 = alloca %struct.bnx2*, align 8
  %8 = alloca %struct.cnic_eth_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.bnx2* @netdev_priv(%struct.net_device* %10)
  store %struct.bnx2* %11, %struct.bnx2** %7, align 8
  store %struct.cnic_eth_dev* null, %struct.cnic_eth_dev** %8, align 8
  %12 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 0
  %14 = load %struct.cnic_eth_dev* (%struct.net_device*)*, %struct.cnic_eth_dev* (%struct.net_device*)** %13, align 8
  %15 = icmp ne %struct.cnic_eth_dev* (%struct.net_device*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %18 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %17, i32 0, i32 0
  %19 = load %struct.cnic_eth_dev* (%struct.net_device*)*, %struct.cnic_eth_dev* (%struct.net_device*)** %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call %struct.cnic_eth_dev* %19(%struct.net_device* %20)
  store %struct.cnic_eth_dev* %21, %struct.cnic_eth_dev** %8, align 8
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %24 = icmp ne %struct.cnic_eth_dev* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store %struct.cnic_dev* null, %struct.cnic_dev** %2, align 8
  br label %131

26:                                               ; preds = %22
  %27 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %28 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %27, i32 0, i32 2
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %4, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = icmp ne %struct.pci_dev* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store %struct.cnic_dev* null, %struct.cnic_dev** %2, align 8
  br label %131

33:                                               ; preds = %26
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @dev_hold(%struct.net_device* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @pci_dev_get(%struct.pci_dev* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCI_DEVICE_ID_NX2_5709, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCI_DEVICE_ID_NX2_5709S, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43, %33
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load i32, i32* @PCI_REVISION_ID, align 4
  %52 = call i32 @pci_read_config_byte(%struct.pci_dev* %50, i32 %51, i32* %9)
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 16
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = call i32 @pci_dev_put(%struct.pci_dev* %56)
  br label %128

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = call i32 @pci_dev_put(%struct.pci_dev* %60)
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = call %struct.cnic_dev* @cnic_alloc_dev(%struct.net_device* %62, %struct.pci_dev* %63)
  store %struct.cnic_dev* %64, %struct.cnic_dev** %5, align 8
  %65 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %66 = icmp eq %struct.cnic_dev* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %128

68:                                               ; preds = %59
  %69 = load i32, i32* @CNIC_F_BNX2_CLASS, align 4
  %70 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %71 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %70, i32 0, i32 4
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  %73 = load i32, i32* @cnic_submit_bnx2_kwqes, align 4
  %74 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %75 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %77 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %76, i32 0, i32 2
  %78 = load %struct.cnic_local*, %struct.cnic_local** %77, align 8
  store %struct.cnic_local* %78, %struct.cnic_local** %6, align 8
  %79 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %80 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %81 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %80, i32 0, i32 12
  store %struct.cnic_eth_dev* %79, %struct.cnic_eth_dev** %81, align 8
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %84 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %83, i32 0, i32 1
  store %struct.pci_dev* %82, %struct.pci_dev** %84, align 8
  %85 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %86 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %89 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %88, i32 0, i32 11
  store i32 %87, i32* %89, align 8
  %90 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %91 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %94 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %96 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %95, i32 0, i32 10
  store i32* @cnic_bnx2_ops, i32** %96, align 8
  %97 = load i32, i32* @cnic_start_bnx2_hw, align 4
  %98 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %99 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @cnic_stop_bnx2_hw, align 4
  %101 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %102 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @cnic_setup_page_tbl, align 4
  %104 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %105 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @cnic_alloc_bnx2_resc, align 4
  %107 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %108 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @cnic_free_resc, align 4
  %110 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %111 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @cnic_cm_init_bnx2_hw, align 4
  %113 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %114 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @cnic_cm_stop_bnx2_hw, align 4
  %116 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %117 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @cnic_enable_bnx2_int, align 4
  %119 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %120 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @cnic_disable_bnx2_int_sync, align 4
  %122 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %123 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @cnic_close_bnx2_conn, align 4
  %125 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %126 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  store %struct.cnic_dev* %127, %struct.cnic_dev** %2, align 8
  br label %131

128:                                              ; preds = %67, %55
  %129 = load %struct.net_device*, %struct.net_device** %3, align 8
  %130 = call i32 @dev_put(%struct.net_device* %129)
  store %struct.cnic_dev* null, %struct.cnic_dev** %2, align 8
  br label %131

131:                                              ; preds = %128, %68, %32, %25
  %132 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  ret %struct.cnic_dev* %132
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local %struct.cnic_dev* @cnic_alloc_dev(%struct.net_device*, %struct.pci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
