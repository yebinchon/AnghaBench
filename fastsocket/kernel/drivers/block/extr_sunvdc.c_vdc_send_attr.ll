; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_vdc_send_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sunvdc.c_vdc_send_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }
%struct.vdc_port = type { i32, i32, i32 }
%struct.vio_disk_attr_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@VIO_TYPE_CTRL = common dso_local global i32 0, align 4
@VIO_SUBTYPE_INFO = common dso_local global i32 0, align 4
@VIO_ATTR_INFO = common dso_local global i32 0, align 4
@VIO_DRING_MODE = common dso_local global i32 0, align 4
@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"SEND ATTR xfer_mode[0x%x] blksz[%u] max_xfer[%llu]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*)* @vdc_send_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdc_send_attr(%struct.vio_driver_state* %0) #0 {
  %2 = alloca %struct.vio_driver_state*, align 8
  %3 = alloca %struct.vdc_port*, align 8
  %4 = alloca %struct.vio_disk_attr_info, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %2, align 8
  %5 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %6 = call %struct.vdc_port* @to_vdc_port(%struct.vio_driver_state* %5)
  store %struct.vdc_port* %6, %struct.vdc_port** %3, align 8
  %7 = call i32 @memset(%struct.vio_disk_attr_info* %4, i32 0, i32 28)
  %8 = load i32, i32* @VIO_TYPE_CTRL, align 4
  %9 = getelementptr inbounds %struct.vio_disk_attr_info, %struct.vio_disk_attr_info* %4, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @VIO_SUBTYPE_INFO, align 4
  %12 = getelementptr inbounds %struct.vio_disk_attr_info, %struct.vio_disk_attr_info* %4, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @VIO_ATTR_INFO, align 4
  %15 = getelementptr inbounds %struct.vio_disk_attr_info, %struct.vio_disk_attr_info* %4, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.vio_driver_state*, %struct.vio_driver_state** %2, align 8
  %18 = call i32 @vio_send_sid(%struct.vio_driver_state* %17)
  %19 = getelementptr inbounds %struct.vio_disk_attr_info, %struct.vio_disk_attr_info* %4, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @VIO_DRING_MODE, align 4
  %22 = getelementptr inbounds %struct.vio_disk_attr_info, %struct.vio_disk_attr_info* %4, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %24 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.vio_disk_attr_info, %struct.vio_disk_attr_info* %4, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %28 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.vio_disk_attr_info, %struct.vio_disk_attr_info* %4, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @HS, align 4
  %32 = getelementptr inbounds %struct.vio_disk_attr_info, %struct.vio_disk_attr_info* %4, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.vio_disk_attr_info, %struct.vio_disk_attr_info* %4, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.vio_disk_attr_info, %struct.vio_disk_attr_info* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @viodbg(i32 %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35, i32 %37)
  %39 = load %struct.vdc_port*, %struct.vdc_port** %3, align 8
  %40 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %39, i32 0, i32 0
  %41 = call i32 @vio_ldc_send(i32* %40, %struct.vio_disk_attr_info* %4, i32 28)
  ret i32 %41
}

declare dso_local %struct.vdc_port* @to_vdc_port(%struct.vio_driver_state*) #1

declare dso_local i32 @memset(%struct.vio_disk_attr_info*, i32, i32) #1

declare dso_local i32 @vio_send_sid(%struct.vio_driver_state*) #1

declare dso_local i32 @viodbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @vio_ldc_send(i32*, %struct.vio_disk_attr_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
