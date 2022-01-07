; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_islpci_dev.c_islpci_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_islpci_dev.c_islpci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64, %struct.TYPE_6__*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.pci_dev = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i64, %struct.TYPE_6__, i32, i32, %struct.net_device*, %struct.pci_dev* }

@islpci_netdev_ops = common dso_local global i32 0, align 4
@prism54_handler_def = common dso_local global i32 0, align 4
@islpci_ethtool_ops = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@dummy_mac = common dso_local global i32 0, align 4
@ISLPCI_TX_TIMEOUT = common dso_local global i32 0, align 4
@ARPHRD_IEEE80211 = common dso_local global i32 0, align 4
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ISL38XX_PCI_MEM_SIZE = common dso_local global i64 0, align 8
@PRV_STATE_OFF = common dso_local global i32 0, align 4
@prism54_update_stats = common dso_local global i32 0, align 4
@islpci_do_reset_and_wake = common dso_local global i32 0, align 4
@ISL3877_IMAGE_FILE = common dso_local global i32 0, align 4
@ISL3886_IMAGE_FILE = common dso_local global i32 0, align 4
@ISL3890_IMAGE_FILE = common dso_local global i32 0, align 4
@SHOW_ERROR_MESSAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ERROR: register_netdev() failed \0A\00", align 1
@SHOW_TRACING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @islpci_setup(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = call %struct.net_device* @alloc_etherdev(i32 120)
  store %struct.net_device* %6, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %10, %struct.net_device** %2, align 8
  br label %167

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i32 @pci_set_drvdata(%struct.pci_dev* %12, %struct.net_device* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = call i32 @pci_resource_start(%struct.pci_dev* %15, i32 0)
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 9
  store i32* @islpci_netdev_ops, i32** %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 8
  store i32* @prism54_handler_def, i32** %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 7
  store i32* @islpci_ethtool_ops, i32** %29, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @dummy_mac, align 4
  %37 = call i32 @memcpy(i32 %35, i32 %36, i32 6)
  %38 = load i32, i32* @ISLPCI_TX_TIMEOUT, align 4
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %41)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %4, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 18
  store %struct.net_device* %43, %struct.net_device** %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 19
  store %struct.pci_dev* %46, %struct.pci_dev** %48, align 8
  %49 = load i32, i32* @ARPHRD_IEEE80211, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 17
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IW_MODE_MONITOR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %11
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 17
  %60 = load i32, i32* %59, align 4
  br label %63

61:                                               ; preds = %11
  %62 = load i32, i32* @ARPHRD_ETHER, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi i32 [ %60, %57 ], [ %62, %61 ]
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 18
  %67 = load %struct.net_device*, %struct.net_device** %66, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 3
  store i32 %64, i32* %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 16
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 15
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32* %70, i32** %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 15
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 2
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 14
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ISL38XX_PCI_MEM_SIZE, align 8
  %87 = add i64 %85, %86
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 13
  %92 = call i32 @init_waitqueue_head(i32* %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 12
  %95 = call i32 @mutex_init(i32* %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 11
  store i32* null, i32** %97, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 10
  %100 = call i32 @init_waitqueue_head(i32* %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 9
  %103 = call i32 @mutex_init(i32* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 8
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load i32, i32* @PRV_STATE_OFF, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 1, i32* %111, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 6
  %114 = load i32, i32* @prism54_update_stats, align 4
  %115 = call i32 @INIT_WORK(i32* %113, i32 %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 5
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load i32, i32* @islpci_do_reset_and_wake, align 4
  %121 = call i32 @INIT_WORK(i32* %119, i32 %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = call i64 @islpci_alloc_memory(%struct.TYPE_7__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %63
  br label %162

128:                                              ; preds = %63
  %129 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %130 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  switch i32 %131, label %144 [
    i32 14455, label %132
    i32 14470, label %138
  ]

132:                                              ; preds = %128
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ISL3877_IMAGE_FILE, align 4
  %137 = call i32 @strcpy(i32 %135, i32 %136)
  br label %150

138:                                              ; preds = %128
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ISL3886_IMAGE_FILE, align 4
  %143 = call i32 @strcpy(i32 %141, i32 %142)
  br label %150

144:                                              ; preds = %128
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ISL3890_IMAGE_FILE, align 4
  %149 = call i32 @strcpy(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %144, %138, %132
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = call i64 @register_netdev(%struct.net_device* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i32, i32* @SHOW_ERROR_MESSAGES, align 4
  %156 = call i32 (i32, i8*, ...) @DEBUG(i32 %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %159

157:                                              ; preds = %150
  %158 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %158, %struct.net_device** %2, align 8
  br label %167

159:                                              ; preds = %154
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = call i32 @islpci_free_memory(%struct.TYPE_7__* %160)
  br label %162

162:                                              ; preds = %159, %127
  %163 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %164 = call i32 @pci_set_drvdata(%struct.pci_dev* %163, %struct.net_device* null)
  %165 = load %struct.net_device*, %struct.net_device** %5, align 8
  %166 = call i32 @free_netdev(%struct.net_device* %165)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %167

167:                                              ; preds = %162, %157, %9
  %168 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %168
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @islpci_alloc_memory(%struct.TYPE_7__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @islpci_free_memory(%struct.TYPE_7__*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
