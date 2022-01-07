; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-pca.c_pca_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-pca.c_pca_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_pca_data = type { i32 }
%struct.i2c_msg = type { i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"=== SLAVE ADDRESS %#04x+%c=%#04x\0A\00", align 1
@I2C_PCA_DAT = common dso_local global i32 0, align 4
@I2C_PCA_CON_STO = common dso_local global i32 0, align 4
@I2C_PCA_CON_STA = common dso_local global i32 0, align 4
@I2C_PCA_CON_SI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_pca_data*, %struct.i2c_msg*)* @pca_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca_address(%struct.i2c_algo_pca_data* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.i2c_algo_pca_data*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_algo_pca_data* %0, %struct.i2c_algo_pca_data** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %7 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %3, align 8
  %8 = call i32 @pca_get_con(%struct.i2c_algo_pca_data* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 127, %11
  %13 = shl i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @I2C_M_RD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I2C_M_RD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 82, i32 87
  %35 = trunc i32 %34 to i8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @DEB2(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26, i8 signext %35, i32 %36)
  %38 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %3, align 8
  %39 = load i32, i32* @I2C_PCA_DAT, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @pca_outw(%struct.i2c_algo_pca_data* %38, i32 %39, i32 %40)
  %42 = load i32, i32* @I2C_PCA_CON_STO, align 4
  %43 = load i32, i32* @I2C_PCA_CON_STA, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @I2C_PCA_CON_SI, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @pca_set_con(%struct.i2c_algo_pca_data* %50, i32 %51)
  %53 = load %struct.i2c_algo_pca_data*, %struct.i2c_algo_pca_data** %3, align 8
  %54 = call i32 @pca_wait(%struct.i2c_algo_pca_data* %53)
  ret i32 %54
}

declare dso_local i32 @pca_get_con(%struct.i2c_algo_pca_data*) #1

declare dso_local i32 @DEB2(i8*, i32, i8 signext, i32) #1

declare dso_local i32 @pca_outw(%struct.i2c_algo_pca_data*, i32, i32) #1

declare dso_local i32 @pca_set_con(%struct.i2c_algo_pca_data*, i32) #1

declare dso_local i32 @pca_wait(%struct.i2c_algo_pca_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
