; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_dp_helper.c_i2c_algo_dp_aux_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_dp_helper.c_i2c_algo_dp_aux_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_algo_dp_aux_data* }
%struct.i2c_algo_dp_aux_data = type { i32, i32 }

@MODE_I2C_START = common dso_local global i32 0, align 4
@MODE_I2C_READ = common dso_local global i32 0, align 4
@MODE_I2C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32)* @i2c_algo_dp_aux_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_algo_dp_aux_address(%struct.i2c_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_algo_dp_aux_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 0
  %12 = load %struct.i2c_algo_dp_aux_data*, %struct.i2c_algo_dp_aux_data** %11, align 8
  store %struct.i2c_algo_dp_aux_data* %12, %struct.i2c_algo_dp_aux_data** %7, align 8
  %13 = load i32, i32* @MODE_I2C_START, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @MODE_I2C_READ, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @MODE_I2C_WRITE, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.i2c_algo_dp_aux_data*, %struct.i2c_algo_dp_aux_data** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_algo_dp_aux_data, %struct.i2c_algo_dp_aux_data* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.i2c_algo_dp_aux_data*, %struct.i2c_algo_dp_aux_data** %7, align 8
  %29 = getelementptr inbounds %struct.i2c_algo_dp_aux_data, %struct.i2c_algo_dp_aux_data* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @i2c_algo_dp_aux_transaction(%struct.i2c_adapter* %30, i32 %31, i32 0, i32* null)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @i2c_algo_dp_aux_transaction(%struct.i2c_adapter*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
