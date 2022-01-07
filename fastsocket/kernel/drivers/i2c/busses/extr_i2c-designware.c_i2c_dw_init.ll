; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-designware.c_i2c_dw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-designware.c_i2c_dw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i64, i32 }

@DW_IC_ENABLE = common dso_local global i64 0, align 8
@DW_IC_SS_SCL_HCNT = common dso_local global i64 0, align 8
@DW_IC_SS_SCL_LCNT = common dso_local global i64 0, align 8
@DW_IC_FS_SCL_HCNT = common dso_local global i64 0, align 8
@DW_IC_FS_SCL_LCNT = common dso_local global i64 0, align 8
@DW_IC_CON_MASTER = common dso_local global i32 0, align 4
@DW_IC_CON_SLAVE_DISABLE = common dso_local global i32 0, align 4
@DW_IC_CON_RESTART_EN = common dso_local global i32 0, align 4
@DW_IC_CON_SPEED_FAST = common dso_local global i32 0, align 4
@DW_IC_CON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2c_dev*)* @i2c_dw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_dw_init(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  %5 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %6 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @clk_get_rate(i32 %7)
  %9 = sdiv i32 %8, 1000
  store i32 %9, i32* %3, align 4
  %10 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %11 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DW_IC_ENABLE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writeb(i32 0, i64 %14)
  %16 = load i32, i32* %3, align 4
  %17 = mul nsw i32 %16, 40
  %18 = sdiv i32 %17, 10000
  %19 = add nsw i32 %18, 1
  %20 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %21 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DW_IC_SS_SCL_HCNT, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writew(i32 %19, i64 %24)
  %26 = load i32, i32* %3, align 4
  %27 = mul nsw i32 %26, 47
  %28 = sdiv i32 %27, 10000
  %29 = add nsw i32 %28, 1
  %30 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %31 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DW_IC_SS_SCL_LCNT, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writew(i32 %29, i64 %34)
  %36 = load i32, i32* %3, align 4
  %37 = mul nsw i32 %36, 6
  %38 = sdiv i32 %37, 10000
  %39 = add nsw i32 %38, 1
  %40 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %41 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DW_IC_FS_SCL_HCNT, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writew(i32 %39, i64 %44)
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 %46, 13
  %48 = sdiv i32 %47, 10000
  %49 = add nsw i32 %48, 1
  %50 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %51 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DW_IC_FS_SCL_LCNT, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writew(i32 %49, i64 %54)
  %56 = load i32, i32* @DW_IC_CON_MASTER, align 4
  %57 = load i32, i32* @DW_IC_CON_SLAVE_DISABLE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @DW_IC_CON_RESTART_EN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @DW_IC_CON_SPEED_FAST, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %65 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DW_IC_CON, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writew(i32 %63, i64 %68)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
