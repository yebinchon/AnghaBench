; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_sw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, i32, i32, i32, %struct.ixgbe_hw, i32, %struct.net_device*, %struct.pci_dev* }
%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.3*)* }
%struct.ixgbe_hw.3 = type opaque
%struct.net_device = type { i32, i32 }
%struct.pci_dev = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"PF still in reset state.  Is the PF interface up?\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"init_shared_code failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Error reading MAC address\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"MAC address not assigned by administrator.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Assigning random MAC address\0A\00", align 1
@IXGBEVF_DEFAULT_TXD = common dso_local global i32 0, align 4
@IXGBEVF_DEFAULT_RXD = common dso_local global i32 0, align 4
@IXGBE_FLAG_RX_CSUM_ENABLED = common dso_local global i32 0, align 4
@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_sw_init(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 6
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %4, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 9
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 8
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %6, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.3*
  %48 = call i32 %45(%struct.ixgbe_hw.3* %47)
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 2, i32* %51, align 8
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 2, i32* %54, align 4
  %55 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %55, i32 0, i32 7
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %61, align 8
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %64 = bitcast %struct.ixgbe_hw* %63 to %struct.ixgbe_hw.0*
  %65 = call i32 %62(%struct.ixgbe_hw.0* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %1
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = call i32 @dev_info(i32* %70, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %132

72:                                               ; preds = %1
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %76, align 8
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %79 = bitcast %struct.ixgbe_hw* %78 to %struct.ixgbe_hw.1*
  %80 = call i32 %77(%struct.ixgbe_hw.1* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %175

86:                                               ; preds = %72
  %87 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %88 = call i32 @ixgbevf_negotiate_api(%struct.ixgbevf_adapter* %87)
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %90 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.2*, i32)** %92, align 8
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %95 = bitcast %struct.ixgbe_hw* %94 to %struct.ixgbe_hw.2*
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 %93(%struct.ixgbe_hw.2* %95, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %86
  %104 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 0
  %106 = call i32 @dev_info(i32* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %120

107:                                              ; preds = %86
  %108 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @is_zero_ether_addr(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = call i32 @dev_info(i32* %117, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %115, %107
  br label %120

120:                                              ; preds = %119, %103
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %125 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.net_device*, %struct.net_device** %6, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @memcpy(i32 %123, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %120, %68
  %133 = load %struct.net_device*, %struct.net_device** %6, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @is_valid_ether_addr(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %155, label %138

138:                                              ; preds = %132
  %139 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 0
  %141 = call i32 @dev_info(i32* %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %142 = load %struct.net_device*, %struct.net_device** %6, align 8
  %143 = call i32 @eth_hw_addr_random(%struct.net_device* %142)
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %145 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.net_device*, %struct.net_device** %6, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.net_device*, %struct.net_device** %6, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @memcpy(i32 %147, i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %138, %132
  %156 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %157 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = load i32, i32* @IXGBEVF_DEFAULT_TXD, align 4
  %161 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @IXGBEVF_DEFAULT_RXD, align 4
  %164 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %165 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* @IXGBE_FLAG_RX_CSUM_ENABLED, align 4
  %167 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %168 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %172 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %172, i32 0, i32 2
  %174 = call i32 @set_bit(i32 %171, i32* %173)
  store i32 0, i32* %2, align 4
  br label %177

175:                                              ; preds = %83
  %176 = load i32, i32* %7, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %175, %155
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ixgbevf_negotiate_api(%struct.ixgbevf_adapter*) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
