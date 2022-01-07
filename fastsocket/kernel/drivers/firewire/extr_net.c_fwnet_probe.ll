; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fw_unit = type { i32 }
%struct.fw_device = type { %struct.fw_card* }
%struct.fw_card = type { i32, i64, i32 }
%struct.net_device = type { i32, i32, i32, i32 }
%struct.fwnet_device = type { i32, %struct.net_device*, %struct.fw_card*, i32, i32, i32, i32, i32, i64, i64, i32*, i32, i32 }

@fwnet_device_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"firewire%d\00", align 1
@fwnet_init_dev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FWNET_BROADCAST_ERROR = common dso_local global i32 0, align 4
@FWNET_NO_FIFO_ADDR = common dso_local global i32 0, align 4
@IEEE1394_GASP_HDR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot register the driver\0A\00", align 1
@fwnet_device_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: IPv4 over FireWire on device %016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @fwnet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwnet_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.fw_unit*, align 8
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca %struct.fw_card*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fwnet_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call %struct.fw_unit* @fw_unit(%struct.device* %11)
  store %struct.fw_unit* %12, %struct.fw_unit** %3, align 8
  %13 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %14 = call %struct.fw_device* @fw_parent_device(%struct.fw_unit* %13)
  store %struct.fw_device* %14, %struct.fw_device** %4, align 8
  %15 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %16 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %15, i32 0, i32 0
  %17 = load %struct.fw_card*, %struct.fw_card** %16, align 8
  store %struct.fw_card* %17, %struct.fw_card** %5, align 8
  store i32 0, i32* %7, align 4
  %18 = call i32 @mutex_lock(i32* @fwnet_device_mutex)
  %19 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %20 = call %struct.fwnet_device* @fwnet_dev_find(%struct.fw_card* %19)
  store %struct.fwnet_device* %20, %struct.fwnet_device** %8, align 8
  %21 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %22 = icmp ne %struct.fwnet_device* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %25 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %24, i32 0, i32 1
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %6, align 8
  br label %119

27:                                               ; preds = %1
  %28 = load i32, i32* @fwnet_init_dev, align 4
  %29 = call %struct.net_device* @alloc_netdev(i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %28)
  store %struct.net_device* %29, %struct.net_device** %6, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = icmp eq %struct.net_device* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %136

35:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %38 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @SET_NETDEV_DEV(%struct.net_device* %36, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call %struct.fwnet_device* @netdev_priv(%struct.net_device* %41)
  store %struct.fwnet_device* %42, %struct.fwnet_device** %8, align 8
  %43 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %44 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %43, i32 0, i32 12
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load i32, i32* @FWNET_BROADCAST_ERROR, align 4
  %47 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %48 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %47, i32 0, i32 11
  store i32 %46, i32* %48, align 8
  %49 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %50 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %49, i32 0, i32 10
  store i32* null, i32** %50, align 8
  %51 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %52 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %51, i32 0, i32 9
  store i64 0, i64* %52, align 8
  %53 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %54 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @FWNET_NO_FIFO_ADDR, align 4
  %56 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %57 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %59 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %58, i32 0, i32 6
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %62 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %61, i32 0, i32 5
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %65 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %64, i32 0, i32 4
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %68 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %67, i32 0, i32 3
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %71 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %72 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %71, i32 0, i32 2
  store %struct.fw_card* %70, %struct.fw_card** %72, align 8
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %75 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %74, i32 0, i32 1
  store %struct.net_device* %73, %struct.net_device** %75, align 8
  %76 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %77 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  %80 = shl i32 1, %79
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, 4
  %83 = load i32, i32* @IEEE1394_GASP_HDR_SIZE, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %82, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @min(i32 1500, i32 %87)
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %92 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @put_unaligned_be64(i64 %93, i32 %96)
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @put_unaligned_be64(i64 -1, i32 %100)
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = call i32 @register_netdev(%struct.net_device* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %35
  %107 = call i32 @fw_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %136

108:                                              ; preds = %35
  %109 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %110 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %109, i32 0, i32 0
  %111 = call i32 @list_add_tail(i32* %110, i32* @fwnet_device_list)
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %116 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @fw_notify(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %114, i64 %117)
  br label %119

119:                                              ; preds = %108, %23
  %120 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %121 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %122 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %123 = call i32 @fwnet_add_peer(%struct.fwnet_device* %120, %struct.fw_unit* %121, %struct.fw_device* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.net_device*, %struct.net_device** %6, align 8
  %131 = call i32 @unregister_netdev(%struct.net_device* %130)
  %132 = load %struct.fwnet_device*, %struct.fwnet_device** %8, align 8
  %133 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %132, i32 0, i32 0
  %134 = call i32 @list_del(i32* %133)
  br label %135

135:                                              ; preds = %129, %126, %119
  br label %136

136:                                              ; preds = %135, %106, %32
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = call i32 @free_netdev(%struct.net_device* %143)
  br label %145

145:                                              ; preds = %142, %139, %136
  %146 = call i32 @mutex_unlock(i32* @fwnet_device_mutex)
  %147 = load i32, i32* %10, align 4
  ret i32 %147
}

declare dso_local %struct.fw_unit* @fw_unit(%struct.device*) #1

declare dso_local %struct.fw_device* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fwnet_device* @fwnet_dev_find(%struct.fw_card*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local %struct.fwnet_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @put_unaligned_be64(i64, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @fw_error(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @fw_notify(i8*, i32, i64) #1

declare dso_local i32 @fwnet_add_peer(%struct.fwnet_device*, %struct.fw_unit*, %struct.fw_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
