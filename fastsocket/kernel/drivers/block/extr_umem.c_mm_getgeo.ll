; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_mm_getgeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_mm_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cardinfo* }
%struct.cardinfo = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }

@MM_HARDSECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @mm_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mm_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_geometry*, align 8
  %5 = alloca %struct.cardinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %4, align 8
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.cardinfo*, %struct.cardinfo** %10, align 8
  store %struct.cardinfo* %11, %struct.cardinfo** %5, align 8
  %12 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %13 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MM_HARDSECT, align 4
  %16 = sdiv i32 1024, %15
  %17 = mul nsw i32 %14, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %19 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %18, i32 0, i32 0
  store i32 64, i32* %19, align 4
  %20 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %21 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %20, i32 0, i32 1
  store i32 32, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %24 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %27 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = sdiv i32 %22, %29
  %31 = load %struct.hd_geometry*, %struct.hd_geometry** %4, align 8
  %32 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
