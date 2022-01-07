; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_main.c_ixgb_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_main.c_ixgb_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, i32, i32, i32, %struct.TYPE_3__*, %struct.ixgb_hw, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.ixgb_hw = type { i32 }
%struct.net_device = type { i32, i32, i32 }

@IRQF_SHARED = common dso_local global i32 0, align 4
@ENET_HEADER_SIZE = common dso_local global i32 0, align 4
@ENET_FCS_LENGTH = common dso_local global i32 0, align 4
@IMC = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@IXGB_STATUS_PCIX_MODE = common dso_local global i32 0, align 4
@ixgb_intr = common dso_local global i32 0, align 4
@PROBE = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate interrupt Error: %d\0A\00", align 1
@MFS = common dso_local global i32 0, align 4
@IXGB_MFS_SHIFT = common dso_local global i32 0, align 4
@IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS = common dso_local global i32 0, align 4
@CTRL0 = common dso_local global i32 0, align 4
@IXGB_CTRL0_JFE = common dso_local global i32 0, align 4
@__IXGB_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgb_up(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgb_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgb_hw*, align 8
  %9 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %3, align 8
  %10 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %10, i32 0, i32 7
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load i32, i32* @IRQF_SHARED, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ENET_HEADER_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @ENET_FCS_LENGTH, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %21, i32 0, i32 5
  store %struct.ixgb_hw* %22, %struct.ixgb_hw** %8, align 8
  %23 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ixgb_rar_set(%struct.ixgb_hw* %23, i32 %26, i32 0)
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @ixgb_set_multi(%struct.net_device* %28)
  %30 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %31 = call i32 @ixgb_restore_vlan(%struct.ixgb_adapter* %30)
  %32 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %33 = call i32 @ixgb_configure_tx(%struct.ixgb_adapter* %32)
  %34 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %35 = call i32 @ixgb_setup_rctl(%struct.ixgb_adapter* %34)
  %36 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %37 = call i32 @ixgb_configure_rx(%struct.ixgb_adapter* %36)
  %38 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %39 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %39, i32 0, i32 6
  %41 = call i32 @IXGB_DESC_UNUSED(i32* %40)
  %42 = call i32 @ixgb_alloc_rx_buffers(%struct.ixgb_adapter* %38, i32 %41)
  %43 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %43, i32 0, i32 5
  %45 = load i32, i32* @IMC, align 4
  %46 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %44, i32 %45, i32 -1)
  %47 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %47, i32 0, i32 5
  %49 = load i32, i32* @STATUS, align 4
  %50 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %48, i32 %49)
  %51 = load i32, i32* @IXGB_STATUS_PCIX_MODE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %1
  %55 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %55, i32 0, i32 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = call i32 @pci_enable_msi(%struct.TYPE_3__* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %66, i32 0, i32 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = call i32 @request_irq(i32 %70, i32* @ixgb_intr, i32 %71, i32 %74, %struct.net_device* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %65
  %80 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %85, i32 0, i32 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = call i32 @pci_disable_msi(%struct.TYPE_3__* %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* @PROBE, align 4
  %91 = load i32, i32* @ERR, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @DPRINTK(i32 %90, i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %164

95:                                               ; preds = %65
  %96 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %97 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %111, label %101

101:                                              ; preds = %95
  %102 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %103 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %106 = load i32, i32* @MFS, align 4
  %107 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %105, i32 %106)
  %108 = load i32, i32* @IXGB_MFS_SHIFT, align 4
  %109 = ashr i32 %107, %108
  %110 = icmp ne i32 %104, %109
  br i1 %110, label %111, label %148

111:                                              ; preds = %101, %95
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %114 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %116 = load i32, i32* @MFS, align 4
  %117 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %118 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IXGB_MFS_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %115, i32 %116, i32 %121)
  %123 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %124 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS, align 4
  %127 = load i32, i32* @ENET_FCS_LENGTH, align 4
  %128 = add nsw i32 %126, %127
  %129 = icmp sgt i32 %125, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %111
  %131 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %132 = load i32, i32* @CTRL0, align 4
  %133 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %131, i32 %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @IXGB_CTRL0_JFE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* @IXGB_CTRL0_JFE, align 4
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %9, align 4
  %142 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %143 = load i32, i32* @CTRL0, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %138, %130
  br label %147

147:                                              ; preds = %146, %111
  br label %148

148:                                              ; preds = %147, %101
  %149 = load i32, i32* @__IXGB_DOWN, align 4
  %150 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %150, i32 0, i32 3
  %152 = call i32 @clear_bit(i32 %149, i32* %151)
  %153 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %154 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %153, i32 0, i32 2
  %155 = call i32 @napi_enable(i32* %154)
  %156 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %157 = call i32 @ixgb_irq_enable(%struct.ixgb_adapter* %156)
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = call i32 @netif_wake_queue(%struct.net_device* %158)
  %160 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %161 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %160, i32 0, i32 1
  %162 = load i32, i32* @jiffies, align 4
  %163 = call i32 @mod_timer(i32* %161, i32 %162)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %148, %89
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @ixgb_rar_set(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @ixgb_set_multi(%struct.net_device*) #1

declare dso_local i32 @ixgb_restore_vlan(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_configure_tx(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_setup_rctl(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_configure_rx(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_alloc_rx_buffers(%struct.ixgb_adapter*, i32) #1

declare dso_local i32 @IXGB_DESC_UNUSED(i32*) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @DPRINTK(i32, i32, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @ixgb_irq_enable(%struct.ixgb_adapter*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
