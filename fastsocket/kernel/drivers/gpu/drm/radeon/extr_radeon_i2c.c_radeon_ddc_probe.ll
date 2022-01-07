; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_ddc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_ddc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_connector = type { %struct.TYPE_6__*, %struct.radeon_connector_atom_dig*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.radeon_connector_atom_dig = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@DDC_ADDR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ddc_probe(%struct.radeon_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.i2c_msg], align 16
  %10 = alloca %struct.radeon_connector_atom_dig*, align 8
  store %struct.radeon_connector* %0, %struct.radeon_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i32* %6, i32** %13, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  %16 = load i32, i32* @DDC_ADDR, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i64 1
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  store i32 8, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 1
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 2
  %22 = load i32, i32* @I2C_M_RD, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 3
  %24 = load i32, i32* @DDC_ADDR, align 4
  store i32 %24, i32* %23, align 4
  %25 = load %struct.radeon_connector*, %struct.radeon_connector** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.radeon_connector*, %struct.radeon_connector** %4, align 8
  %32 = call i32 @radeon_router_select_ddc_port(%struct.radeon_connector* %31)
  br label %33

33:                                               ; preds = %30, %2
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.radeon_connector*, %struct.radeon_connector** %4, align 8
  %38 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %37, i32 0, i32 1
  %39 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %38, align 8
  store %struct.radeon_connector_atom_dig* %39, %struct.radeon_connector_atom_dig** %10, align 8
  %40 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %10, align 8
  %41 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %45 = call i32 @i2c_transfer(i32* %43, %struct.i2c_msg* %44, i32 2)
  store i32 %45, i32* %8, align 4
  br label %53

46:                                               ; preds = %33
  %47 = load %struct.radeon_connector*, %struct.radeon_connector** %4, align 8
  %48 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %52 = call i32 @i2c_transfer(i32* %50, %struct.i2c_msg* %51, i32 2)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %46, %36
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %63

57:                                               ; preds = %53
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %59 = call i32 @drm_edid_header_is_valid(i32* %58)
  %60 = icmp slt i32 %59, 6
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61, %56
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @radeon_router_select_ddc_port(%struct.radeon_connector*) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @drm_edid_header_is_valid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
