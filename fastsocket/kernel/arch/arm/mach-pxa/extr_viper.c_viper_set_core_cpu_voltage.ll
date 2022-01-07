; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_viper.c_viper_set_core_cpu_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_viper.c_viper_set_core_cpu_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"viper: setting CPU core voltage to %sV at %d.%03dMHz\0A\00", align 1
@current_voltage_divisor = common dso_local global i32 0, align 4
@VIPER_PSU_CLK_GPIO = common dso_local global i32 0, align 4
@VIPER_PSU_nCS_LD_GPIO = common dso_local global i32 0, align 4
@VIPER_PSU_DATA_GPIO = common dso_local global i32 0, align 4
@STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @viper_set_core_cpu_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viper_set_core_cpu_voltage(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i64, i64* %3, align 8
  %10 = icmp ult i64 %9, 200000
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 4095, i32* %6, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = icmp ult i64 %13, 300000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i32 3557, i32* %6, align 4
  br label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  store i32 805, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %15
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %3, align 8
  %21 = trunc i64 %20 to i32
  %22 = sdiv i32 %21, 1000
  %23 = load i64, i64* %3, align 8
  %24 = trunc i64 %23 to i32
  %25 = srem i32 %24, 1000
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %19, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %84, %18
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %8, align 4
  br label %52

32:                                               ; preds = %27
  %33 = load i32, i32* @current_voltage_divisor, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub i32 %34, 256
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @current_voltage_divisor, align 4
  %39 = add i32 %38, 256
  store i32 %39, i32* %8, align 4
  br label %51

40:                                               ; preds = %32
  %41 = load i32, i32* @current_voltage_divisor, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 256
  %44 = icmp ugt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @current_voltage_divisor, align 4
  %47 = sub i32 %46, 256
  store i32 %47, i32* %8, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %45
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %30
  store i32 0, i32* %4, align 4
  %53 = load i32, i32* @VIPER_PSU_CLK_GPIO, align 4
  %54 = call i32 @gpio_set_value(i32 %53, i32 0)
  %55 = load i32, i32* @VIPER_PSU_nCS_LD_GPIO, align 4
  %56 = call i32 @gpio_set_value(i32 %55, i32 0)
  store i32 2048, i32* %5, align 4
  br label %57

57:                                               ; preds = %73, %52
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = call i32 @udelay(i32 1)
  %62 = load i32, i32* @VIPER_PSU_DATA_GPIO, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %63, %64
  %66 = call i32 @gpio_set_value(i32 %62, i32 %65)
  %67 = call i32 @udelay(i32 1)
  %68 = load i32, i32* @VIPER_PSU_CLK_GPIO, align 4
  %69 = call i32 @gpio_set_value(i32 %68, i32 1)
  %70 = call i32 @udelay(i32 1)
  %71 = load i32, i32* @VIPER_PSU_CLK_GPIO, align 4
  %72 = call i32 @gpio_set_value(i32 %71, i32 0)
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %5, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %57

76:                                               ; preds = %57
  %77 = call i32 @udelay(i32 1)
  %78 = load i32, i32* @VIPER_PSU_nCS_LD_GPIO, align 4
  %79 = call i32 @gpio_set_value(i32 %78, i32 1)
  %80 = call i32 @udelay(i32 1)
  %81 = load i32, i32* @VIPER_PSU_nCS_LD_GPIO, align 4
  %82 = call i32 @gpio_set_value(i32 %81, i32 0)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* @current_voltage_divisor, align 4
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* @current_voltage_divisor, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %27, label %88

88:                                               ; preds = %84
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
