; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_master_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_master_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.pmac_i2c_bus = type { i32 }

@I2C_M_TEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_M_REV_DIR_ADDR = common dso_local global i32 0, align 4
@pmac_i2c_mode_std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_powermac_master_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_powermac_master_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmac_i2c_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.pmac_i2c_bus* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.pmac_i2c_bus* %13, %struct.pmac_i2c_bus** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @I2C_M_TEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %80

23:                                               ; preds = %3
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @I2C_M_RD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 1
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I2C_M_REV_DIR_ADDR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load i32, i32* %11, align 4
  %45 = xor i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %23
  %47 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %48 = call i32 @pmac_i2c_open(%struct.pmac_i2c_bus* %47, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %80

53:                                               ; preds = %46
  %54 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %55 = load i32, i32* @pmac_i2c_mode_std, align 4
  %56 = call i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %70

60:                                               ; preds = %53
  %61 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus* %61, i32 %62, i32 0, i32 0, i32 %65, i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %60, %59
  %71 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %8, align 8
  %72 = call i32 @pmac_i2c_close(%struct.pmac_i2c_bus* %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  br label %78

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 1, %77 ]
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %51, %20
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.pmac_i2c_bus* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pmac_i2c_open(%struct.pmac_i2c_bus*, i32) #1

declare dso_local i32 @pmac_i2c_setmode(%struct.pmac_i2c_bus*, i32) #1

declare dso_local i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pmac_i2c_close(%struct.pmac_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
