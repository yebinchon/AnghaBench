; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_sysfs.c_gfar_init_sysfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_sysfs.c_gfar_init_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gfar_private = type { i32, i32, i32 }

@DEFAULT_FIFO_TX_THR = common dso_local global i32 0, align 4
@DEFAULT_FIFO_TX_STARVE = common dso_local global i32 0, align 4
@DEFAULT_FIFO_TX_STARVE_OFF = common dso_local global i32 0, align 4
@dev_attr_bd_stash = common dso_local global i32 0, align 4
@dev_attr_rx_stash_size = common dso_local global i32 0, align 4
@dev_attr_rx_stash_index = common dso_local global i32 0, align 4
@dev_attr_fifo_threshold = common dso_local global i32 0, align 4
@dev_attr_fifo_starve = common dso_local global i32 0, align 4
@dev_attr_fifo_starve_off = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error creating gianfar sysfs files.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfar_init_sysfs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %5)
  store %struct.gfar_private* %6, %struct.gfar_private** %3, align 8
  %7 = load i32, i32* @DEFAULT_FIFO_TX_THR, align 4
  %8 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %9 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @DEFAULT_FIFO_TX_STARVE, align 4
  %11 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %12 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @DEFAULT_FIFO_TX_STARVE_OFF, align 4
  %14 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %15 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = call i32 @device_create_file(i32* %17, i32* @dev_attr_bd_stash)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = call i32 @device_create_file(i32* %20, i32* @dev_attr_rx_stash_size)
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = call i32 @device_create_file(i32* %25, i32* @dev_attr_rx_stash_index)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = call i32 @device_create_file(i32* %30, i32* @dev_attr_fifo_threshold)
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = call i32 @device_create_file(i32* %35, i32* @dev_attr_fifo_starve)
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = call i32 @device_create_file(i32* %40, i32* @dev_attr_fifo_starve_off)
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %1
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %1
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
