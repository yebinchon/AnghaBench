; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_check_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ipg.c_ipg_nic_rx_check_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipg_nic_private = type { i32, i32**, i32, i32, %struct.TYPE_2__, %struct.ipg_rx* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ipg_rx = type { i64, i64 }

@IPG_RFDLIST_LENGTH = common dso_local global i32 0, align 4
@IPG_DROP_ON_RX_ETH_ERRORS = common dso_local global i64 0, align 8
@IPG_RFS_RXFIFOOVERRUN = common dso_local global i32 0, align 4
@IPG_RFS_RXRUNTFRAME = common dso_local global i32 0, align 4
@IPG_RFS_RXALIGNMENTERROR = common dso_local global i32 0, align 4
@IPG_RFS_RXFCSERROR = common dso_local global i32 0, align 4
@IPG_RFS_RXOVERSIZEDFRAME = common dso_local global i32 0, align 4
@IPG_RFS_RXLENGTHERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Rx error, RFS = %16.16lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"RX FIFO overrun occured.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"RX runt occured.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"RX alignment error occured.\0A\00", align 1
@IPG_RFI_FRAGLEN = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ERROR_PACKET = common dso_local global i32 0, align 4
@NORMAL_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipg_nic_rx_check_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipg_nic_rx_check_error(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipg_nic_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipg_rx*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ipg_nic_private* @netdev_priv(%struct.net_device* %7)
  store %struct.ipg_nic_private* %8, %struct.ipg_nic_private** %4, align 8
  %9 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %4, align 8
  %10 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IPG_RFDLIST_LENGTH, align 4
  %13 = urem i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %4, align 8
  %15 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %14, i32 0, i32 5
  %16 = load %struct.ipg_rx*, %struct.ipg_rx** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %16, i64 %18
  store %struct.ipg_rx* %19, %struct.ipg_rx** %6, align 8
  %20 = load i64, i64* @IPG_DROP_ON_RX_ETH_ERRORS, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %135

22:                                               ; preds = %1
  %23 = load %struct.ipg_rx*, %struct.ipg_rx** %6, align 8
  %24 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @le64_to_cpu(i64 %25)
  %27 = load i32, i32* @IPG_RFS_RXFIFOOVERRUN, align 4
  %28 = load i32, i32* @IPG_RFS_RXRUNTFRAME, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IPG_RFS_RXALIGNMENTERROR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IPG_RFS_RXFCSERROR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @IPG_RFS_RXOVERSIZEDFRAME, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IPG_RFS_RXLENGTHERROR, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %26, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %135

40:                                               ; preds = %22
  %41 = load %struct.ipg_rx*, %struct.ipg_rx** %6, align 8
  %42 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, ...) @IPG_DEBUG_MSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %4, align 8
  %46 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.ipg_rx*, %struct.ipg_rx** %6, align 8
  %51 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @le64_to_cpu(i64 %52)
  %54 = load i32, i32* @IPG_RFS_RXFIFOOVERRUN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %40
  %58 = call i32 (i8*, ...) @IPG_DEBUG_MSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %4, align 8
  %60 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %57, %40
  %65 = load %struct.ipg_rx*, %struct.ipg_rx** %6, align 8
  %66 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @le64_to_cpu(i64 %67)
  %69 = load i32, i32* @IPG_RFS_RXRUNTFRAME, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = call i32 (i8*, ...) @IPG_DEBUG_MSG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %4, align 8
  %75 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %64
  %80 = load %struct.ipg_rx*, %struct.ipg_rx** %6, align 8
  %81 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @le64_to_cpu(i64 %82)
  %84 = load i32, i32* @IPG_RFS_RXALIGNMENTERROR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = call i32 (i8*, ...) @IPG_DEBUG_MSG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %4, align 8
  %90 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %87, %79
  %95 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %4, align 8
  %96 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %133

103:                                              ; preds = %94
  %104 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %4, align 8
  %105 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ipg_rx*, %struct.ipg_rx** %6, align 8
  %108 = getelementptr inbounds %struct.ipg_rx, %struct.ipg_rx* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @le64_to_cpu(i64 %109)
  %111 = load i32, i32* @IPG_RFI_FRAGLEN, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %110, %112
  %114 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %4, align 8
  %115 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %118 = call i32 @pci_unmap_single(i32 %106, i32 %113, i32 %116, i32 %117)
  %119 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %4, align 8
  %120 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %119, i32 0, i32 1
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @dev_kfree_skb_irq(i32* %125)
  %127 = load %struct.ipg_nic_private*, %struct.ipg_nic_private** %4, align 8
  %128 = getelementptr inbounds %struct.ipg_nic_private, %struct.ipg_nic_private* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %103, %94
  %134 = load i32, i32* @ERROR_PACKET, align 4
  store i32 %134, i32* %2, align 4
  br label %137

135:                                              ; preds = %22, %1
  %136 = load i32, i32* @NORMAL_PACKET, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.ipg_nic_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @IPG_DEBUG_MSG(i8*, ...) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
