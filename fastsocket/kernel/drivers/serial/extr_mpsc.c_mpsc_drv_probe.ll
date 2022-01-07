; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_drv_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i32 }
%struct.platform_device = type { i64 }
%struct.uart_port = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mpsc_drv_probe: Adding MPSC %d\0A\00", align 1
@MPSC_NUM_CTLRS = common dso_local global i64 0, align 8
@mpsc_ports = common dso_local global %struct.mpsc_port_info* null, align 8
@mpsc_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpsc_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpsc_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mpsc_port_info*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load i32, i32* @ENODEV, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MPSC_NUM_CTLRS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %1
  %17 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** @mpsc_ports, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %17, i64 %20
  store %struct.mpsc_port_info* %21, %struct.mpsc_port_info** %3, align 8
  %22 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = call i32 @mpsc_drv_map_regs(%struct.mpsc_port_info* %22, %struct.platform_device* %23)
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %16
  %27 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @mpsc_drv_get_platform_data(%struct.mpsc_port_info* %27, %struct.platform_device* %28, i64 %31)
  %33 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %34 = call i32 @mpsc_make_ready(%struct.mpsc_port_info* %33)
  store i32 %34, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %26
  %37 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %38 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %37, i32 0, i32 1
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %41 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %40, i32 0, i32 0
  %42 = call i32 @uart_add_one_port(i32* @mpsc_reg, i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %51

45:                                               ; preds = %36
  %46 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %47 = bitcast %struct.mpsc_port_info* %46 to %struct.uart_port*
  %48 = call i32 @mpsc_release_port(%struct.uart_port* %47)
  %49 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %50 = call i32 @mpsc_drv_unmap_regs(%struct.mpsc_port_info* %49)
  br label %51

51:                                               ; preds = %45, %44
  br label %55

52:                                               ; preds = %26
  %53 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %54 = call i32 @mpsc_drv_unmap_regs(%struct.mpsc_port_info* %53)
  br label %55

55:                                               ; preds = %52, %51
  br label %56

56:                                               ; preds = %55, %16
  br label %57

57:                                               ; preds = %56, %1
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @mpsc_drv_map_regs(%struct.mpsc_port_info*, %struct.platform_device*) #1

declare dso_local i32 @mpsc_drv_get_platform_data(%struct.mpsc_port_info*, %struct.platform_device*, i64) #1

declare dso_local i32 @mpsc_make_ready(%struct.mpsc_port_info*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @uart_add_one_port(i32*, i32*) #1

declare dso_local i32 @mpsc_release_port(%struct.uart_port*) #1

declare dso_local i32 @mpsc_drv_unmap_regs(%struct.mpsc_port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
