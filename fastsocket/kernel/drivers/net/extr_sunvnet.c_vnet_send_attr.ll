; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_send_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_send_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }
%struct.vnet_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i64* }
%struct.vio_net_attr_info = type { i32, i64, i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@VIO_TYPE_CTRL = common dso_local global i32 0, align 4
@VIO_SUBTYPE_INFO = common dso_local global i32 0, align 4
@VIO_ATTR_INFO = common dso_local global i32 0, align 4
@VIO_DRING_MODE = common dso_local global i32 0, align 4
@VNET_ADDR_ETHERMAC = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i64 0, align 8
@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"SEND NET ATTR xmode[0x%x] atype[0x%x] addr[%llx] ackfreq[%u] mtu[%llu]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*)* @vnet_send_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_send_attr(%struct.vio_driver_state* %0) #0 {
  %2 = alloca %struct.vio_driver_state*, align 8
  %3 = alloca %struct.vnet_port*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.vio_net_attr_info, align 8
  %6 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %2, align 8
  %7 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %8 = call %struct.vnet_port* @to_vnet_port(%struct.vio_driver_state* %7)
  store %struct.vnet_port* %8, %struct.vnet_port** %3, align 8
  %9 = load %struct.vnet_port*, %struct.vnet_port** %3, align 8
  %10 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = call i32 @memset(%struct.vio_net_attr_info* %5, i32 0, i32 48)
  %15 = load i32, i32* @VIO_TYPE_CTRL, align 4
  %16 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @VIO_SUBTYPE_INFO, align 4
  %19 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @VIO_ATTR_INFO, align 4
  %22 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %25 = call i32 @vio_send_sid(%struct.vio_driver_state* %24)
  %26 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @VIO_DRING_MODE, align 4
  %29 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @VNET_ADDR_ETHERMAC, align 4
  %31 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 2
  store i64 0, i64* %32, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %52, %1
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 5, %45
  %47 = mul nsw i32 %46, 8
  %48 = shl i32 %44, %47
  %49 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %36
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %33

55:                                               ; preds = %33
  %56 = load i64, i64* @ETH_FRAME_LEN, align 8
  %57 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* @HS, align 4
  %59 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %5, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @viodbg(i32 %58, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %62, i64 %65, i64 %67, i64 %69)
  %71 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %72 = call i32 @vio_ldc_send(%struct.vio_driver_state* %71, %struct.vio_net_attr_info* %5, i32 48)
  ret i32 %72
}

declare dso_local %struct.vnet_port* @to_vnet_port(%struct.vio_driver_state*) #1

declare dso_local i32 @memset(%struct.vio_net_attr_info*, i32, i32) #1

declare dso_local i32 @vio_send_sid(%struct.vio_driver_state*) #1

declare dso_local i32 @viodbg(i32, i8*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @vio_ldc_send(%struct.vio_driver_state*, %struct.vio_net_attr_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
