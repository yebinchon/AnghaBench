; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i64 }

@EHEA_PORT_DOWN = common dso_local global i64 0, align 8
@H_DEREG_BCMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed freeing resources for %s. ret=%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ehea_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_down(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehea_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %6)
  store %struct.ehea_port* %7, %struct.ehea_port** %5, align 8
  %8 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %9 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EHEA_PORT_DOWN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @ehea_drop_multicast_list(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @ehea_allmulti(%struct.net_device* %17, i32 0)
  %19 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %20 = load i32, i32* @H_DEREG_BCMC, align 4
  %21 = call i32 @ehea_broadcast_reg_helper(%struct.ehea_port* %19, i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @ehea_free_interrupts(%struct.net_device* %22)
  %24 = load i64, i64* @EHEA_PORT_DOWN, align 8
  %25 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %26 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = call i32 (...) @ehea_update_bcmc_registrations()
  %28 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %29 = call i32 @ehea_clean_all_portres(%struct.ehea_port* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %14
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ehea_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %14
  %39 = call i32 (...) @ehea_update_firmware_handles()
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ehea_drop_multicast_list(%struct.net_device*) #1

declare dso_local i32 @ehea_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @ehea_broadcast_reg_helper(%struct.ehea_port*, i32) #1

declare dso_local i32 @ehea_free_interrupts(%struct.net_device*) #1

declare dso_local i32 @ehea_update_bcmc_registrations(...) #1

declare dso_local i32 @ehea_clean_all_portres(%struct.ehea_port*) #1

declare dso_local i32 @ehea_info(i8*, i32, i32) #1

declare dso_local i32 @ehea_update_firmware_handles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
