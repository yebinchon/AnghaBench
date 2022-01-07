; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-davinci.c_i2c_davinci_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-davinci.c_i2c_davinci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_i2c_platform_data = type { i32, i32 }
%struct.davinci_i2c_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.davinci_i2c_platform_data* }

@davinci_i2c_platform_data_default = common dso_local global %struct.davinci_i2c_platform_data zeroinitializer, align 4
@DAVINCI_I2C_MDR_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_MDR_IRS = common dso_local global i32 0, align 4
@DAVINCI_I2C_PSC_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_CLKH_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_CLKL_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_OAR_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"input_clock = %d, CLK = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"PSC  = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"CLKL = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"CLKH = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"bus_freq = %dkHz, bus_delay = %d\0A\00", align 1
@DAVINCI_I2C_IMR_REG = common dso_local global i32 0, align 4
@I2C_DAVINCI_INTR_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_i2c_dev*)* @i2c_davinci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_davinci_init(%struct.davinci_i2c_dev* %0) #0 {
  %2 = alloca %struct.davinci_i2c_dev*, align 8
  %3 = alloca %struct.davinci_i2c_platform_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.davinci_i2c_dev* %0, %struct.davinci_i2c_dev** %2, align 8
  %11 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %12 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %14, align 8
  store %struct.davinci_i2c_platform_data* %15, %struct.davinci_i2c_platform_data** %3, align 8
  %16 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %17 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @clk_get_rate(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %3, align 8
  %21 = icmp ne %struct.davinci_i2c_platform_data* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store %struct.davinci_i2c_platform_data* @davinci_i2c_platform_data_default, %struct.davinci_i2c_platform_data** %3, align 8
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %25 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %26 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @DAVINCI_I2C_MDR_IRS, align 4
  %29 = call i32 @MOD_REG_BIT(i32 %27, i32 %28, i32 0)
  %30 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %31 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = sdiv i32 %34, 7000000
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  %40 = sdiv i32 %37, %39
  %41 = icmp sgt i32 %40, 12000000
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %23
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 7, %50
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ 5, %48 ], [ %51, %49 ]
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  %57 = sdiv i32 %54, %56
  %58 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %3, align 8
  %59 = getelementptr inbounds %struct.davinci_i2c_platform_data, %struct.davinci_i2c_platform_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 1000
  %62 = sdiv i32 %57, %61
  %63 = load i32, i32* %6, align 4
  %64 = shl i32 %63, 1
  %65 = sub nsw i32 %62, %64
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %8, align 4
  %71 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %72 = load i32, i32* @DAVINCI_I2C_PSC_REG, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %71, i32 %72, i32 %73)
  %75 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %76 = load i32, i32* @DAVINCI_I2C_CLKH_REG, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %80 = load i32, i32* @DAVINCI_I2C_CLKL_REG, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %84 = load i32, i32* @DAVINCI_I2C_OAR_REG, align 4
  %85 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %83, i32 %84, i32 8)
  %86 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %87 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_2__* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %93 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %96 = load i32, i32* @DAVINCI_I2C_PSC_REG, align 4
  %97 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %95, i32 %96)
  %98 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_2__* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %100 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %103 = load i32, i32* @DAVINCI_I2C_CLKL_REG, align 4
  %104 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %102, i32 %103)
  %105 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_2__* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %107 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %110 = load i32, i32* @DAVINCI_I2C_CLKH_REG, align 4
  %111 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %109, i32 %110)
  %112 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_2__* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %114 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %3, align 8
  %117 = getelementptr inbounds %struct.davinci_i2c_platform_data, %struct.davinci_i2c_platform_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.davinci_i2c_platform_data*, %struct.davinci_i2c_platform_data** %3, align 8
  %120 = getelementptr inbounds %struct.davinci_i2c_platform_data, %struct.davinci_i2c_platform_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_2__* %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %121)
  %123 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %124 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %125 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %123, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @DAVINCI_I2C_MDR_IRS, align 4
  %128 = call i32 @MOD_REG_BIT(i32 %126, i32 %127, i32 1)
  %129 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %130 = load i32, i32* @DAVINCI_I2C_MDR_REG, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %129, i32 %130, i32 %131)
  %133 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %2, align 8
  %134 = load i32, i32* @DAVINCI_I2C_IMR_REG, align 4
  %135 = load i32, i32* @I2C_DAVINCI_INTR_ALL, align 4
  %136 = call i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev* %133, i32 %134, i32 %135)
  ret i32 0
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev*, i32) #1

declare dso_local i32 @MOD_REG_BIT(i32, i32, i32) #1

declare dso_local i32 @davinci_i2c_write_reg(%struct.davinci_i2c_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
