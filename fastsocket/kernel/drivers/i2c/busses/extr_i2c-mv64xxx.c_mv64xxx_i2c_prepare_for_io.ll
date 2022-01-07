; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_prepare_for_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_prepare_for_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i32, i32, i32, i64, i64, i32, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i64, i32 }

@MV64XXX_I2C_REG_CONTROL_ACK = common dso_local global i32 0, align 4
@MV64XXX_I2C_REG_CONTROL_INTEN = common dso_local global i32 0, align 4
@MV64XXX_I2C_REG_CONTROL_TWSIEN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_M_REV_DIR_ADDR = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv64xxx_i2c_data*, %struct.i2c_msg*)* @mv64xxx_i2c_prepare_for_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64xxx_i2c_prepare_for_io(%struct.mv64xxx_i2c_data* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.mv64xxx_i2c_data*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %7 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %8 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %7, i32 0, i32 7
  store %struct.i2c_msg* %6, %struct.i2c_msg** %8, align 8
  %9 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %10 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %15 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %17 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %19 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_ACK, align 4
  %21 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_INTEN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_TWSIEN, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %26 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @I2C_M_RD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @I2C_M_REV_DIR_ADDR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = xor i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @I2C_M_TEN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 768
  %57 = ashr i32 %56, 7
  %58 = or i32 240, %57
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %62 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = and i32 %66, 255
  %68 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %69 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  br label %83

70:                                               ; preds = %44
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = and i32 %74, 127
  %76 = shl i32 %75, 1
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %80 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %82 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %81, i32 0, i32 2
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %70, %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
