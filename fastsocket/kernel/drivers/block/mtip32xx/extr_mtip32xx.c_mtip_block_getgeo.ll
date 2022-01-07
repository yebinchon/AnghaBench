; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_getgeo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_block_getgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.driver_data* }
%struct.driver_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hd_geometry = type { i32, i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not get drive capacity.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, %struct.hd_geometry*)* @mtip_block_getgeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_block_getgeo(%struct.block_device* %0, %struct.hd_geometry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca %struct.hd_geometry*, align 8
  %6 = alloca %struct.driver_data*, align 8
  %7 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store %struct.hd_geometry* %1, %struct.hd_geometry** %5, align 8
  %8 = load %struct.block_device*, %struct.block_device** %4, align 8
  %9 = getelementptr inbounds %struct.block_device, %struct.block_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.driver_data*, %struct.driver_data** %11, align 8
  store %struct.driver_data* %12, %struct.driver_data** %6, align 8
  %13 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %14 = icmp ne %struct.driver_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOTTY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %20 = call i32 @mtip_hw_get_capacity(%struct.driver_data* %19, i32* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %24 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOTTY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %18
  %31 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %32 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %31, i32 0, i32 0
  store i32 224, i32* %32, align 4
  %33 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %34 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %33, i32 0, i32 1
  store i32 56, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %37 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %40 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = call i32 @sector_div(i32 %35, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.hd_geometry*, %struct.hd_geometry** %5, align 8
  %46 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %30, %22, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mtip_hw_get_capacity(%struct.driver_data*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
