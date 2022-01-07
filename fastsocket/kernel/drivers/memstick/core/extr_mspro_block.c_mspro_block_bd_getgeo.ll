; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_bd_getgeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_bd_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mspro_block_data* }
%struct.mspro_block_data = type { i32, i32, i32 }
%struct.hd_geometry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @mspro_block_bd_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_block_bd_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.mspro_block_data*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %6 = load %struct.block_device*, %struct.block_device** %3, align 8
  %7 = getelementptr inbounds %struct.block_device, %struct.block_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mspro_block_data*, %struct.mspro_block_data** %9, align 8
  store %struct.mspro_block_data* %10, %struct.mspro_block_data** %5, align 8
  %11 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %12 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %15 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %17 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %20 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %22 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %25 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
