; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-pca.c_pca_rx_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-pca.c_pca_rx_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_pca_data = type { i32 }

@I2C_PCA_CON_STO = common dso_local global i32 0, align 4
@I2C_PCA_CON_STA = common dso_local global i32 0, align 4
@I2C_PCA_CON_SI = common dso_local global i32 0, align 4
@I2C_PCA_CON_AA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_pca_data*, i32)* @pca_rx_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca_rx_ack(%struct.i2c_algo_pca_data* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_algo_pca_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_algo_pca_data* %0, %struct.i2c_algo_pca_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %3, align 8
  %7 = call i32 @pca_get_con(%struct.i2c_algo_pca_data* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @I2C_PCA_CON_STO, align 4
  %9 = load i32, i32* @I2C_PCA_CON_STA, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @I2C_PCA_CON_SI, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @I2C_PCA_CON_AA, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @I2C_PCA_CON_AA, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pca_set_con(%struct.i2c_algo_pca_data* %25, i32 %26)
  %28 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %3, align 8
  %29 = call i32 @pca_wait(%struct.i2c_algo_pca_data* %28)
  ret i32 %29
}

declare dso_local i32 @pca_get_con(%struct.i2c_algo_pca_data*) #1

declare dso_local i32 @pca_set_con(%struct.i2c_algo_pca_data*, i32) #1

declare dso_local i32 @pca_wait(%struct.i2c_algo_pca_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
