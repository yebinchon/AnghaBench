; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rx8025.c_rx8025_init_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rx8025.c_rx8025_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rx8025_data = type { i32, i32 }

@RX8025_REG_CTRL1 = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL1_TEST = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL2_PON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"power-on reset was detected, you may have to readjust the clock\0A\00", align 1
@RX8025_BIT_CTRL2_VDET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"a power voltage drop was detected, you may have to readjust the clock\0A\00", align 1
@RX8025_BIT_CTRL2_XST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"Oscillation stop was detected,you may have to readjust the clock\0A\00", align 1
@RX8025_BIT_CTRL2_DAFG = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL2_WAFG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Alarm was detected\0A\00", align 1
@RX8025_BIT_CTRL2_CTFG = common dso_local global i32 0, align 4
@RX8025_REG_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32*)* @rx8025_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8025_init_client(%struct.i2c_client* %0, i32* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rx8025_data*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.rx8025_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.rx8025_data* %11, %struct.rx8025_data** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.rx8025_data*, %struct.rx8025_data** %5, align 8
  %13 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RX8025_REG_CTRL1, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %17 = call i32 @rx8025_read_regs(i32 %14, i32 %15, i32 2, i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %110

21:                                               ; preds = %2
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RX8025_BIT_CTRL1_TEST, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load %struct.rx8025_data*, %struct.rx8025_data** %5, align 8
  %28 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RX8025_BIT_CTRL2_PON, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %21
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RX8025_BIT_CTRL2_VDET, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %39
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RX8025_BIT_CTRL2_XST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32*, i32** %4, align 8
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %50
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RX8025_BIT_CTRL2_DAFG, align 4
  %65 = load i32, i32* @RX8025_BIT_CTRL2_WAFG, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = call i32 @dev_warn(i32* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %61
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RX8025_BIT_CTRL2_CTFG, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  store i32 1, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %73
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %84, %80
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @RX8025_BIT_CTRL2_PON, align 4
  %91 = load i32, i32* @RX8025_BIT_CTRL2_VDET, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @RX8025_BIT_CTRL2_CTFG, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @RX8025_BIT_CTRL2_WAFG, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @RX8025_BIT_CTRL2_DAFG, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @RX8025_BIT_CTRL2_XST, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %106 = load i32, i32* @RX8025_REG_CTRL2, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @rx8025_write_reg(%struct.i2c_client* %105, i32 %106, i32 %107)
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %87, %84
  br label %110

110:                                              ; preds = %109, %20
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local %struct.rx8025_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @rx8025_read_regs(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @rx8025_write_reg(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
