; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_tosa.c_tosa_tc6393xb_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_tosa.c_tosa_tc6393xb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@TOSA_GPIO_TC6393XB_REST_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"tc6393xb #pclr\00", align 1
@TOSA_GPIO_TC6393XB_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"tc6393xb #suspend\00", align 1
@TOSA_GPIO_TC6393XB_L3V_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"tc6393xb l3v\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tosa_tc6393xb_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_tc6393xb_enable(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load i32, i32* @TOSA_GPIO_TC6393XB_REST_IN, align 4
  %6 = call i32 @gpio_request(i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %60

10:                                               ; preds = %1
  %11 = load i32, i32* @TOSA_GPIO_TC6393XB_SUSPEND, align 4
  %12 = call i32 @gpio_request(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %57

16:                                               ; preds = %10
  %17 = load i32, i32* @TOSA_GPIO_TC6393XB_L3V_ON, align 4
  %18 = call i32 @gpio_request(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %54

22:                                               ; preds = %16
  %23 = load i32, i32* @TOSA_GPIO_TC6393XB_L3V_ON, align 4
  %24 = call i32 @gpio_direction_output(i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %51

28:                                               ; preds = %22
  %29 = load i32, i32* @TOSA_GPIO_TC6393XB_SUSPEND, align 4
  %30 = call i32 @gpio_direction_output(i32 %29, i32 0)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %50

34:                                               ; preds = %28
  %35 = load i32, i32* @TOSA_GPIO_TC6393XB_REST_IN, align 4
  %36 = call i32 @gpio_direction_output(i32 %35, i32 0)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %49

40:                                               ; preds = %34
  %41 = call i32 @mdelay(i32 1)
  %42 = load i32, i32* @TOSA_GPIO_TC6393XB_SUSPEND, align 4
  %43 = call i32 @gpio_set_value(i32 %42, i32 1)
  %44 = call i32 @mdelay(i32 10)
  %45 = load i32, i32* @TOSA_GPIO_TC6393XB_REST_IN, align 4
  %46 = call i32 @gpio_set_value(i32 %45, i32 1)
  %47 = load i32, i32* @TOSA_GPIO_TC6393XB_L3V_ON, align 4
  %48 = call i32 @gpio_set_value(i32 %47, i32 1)
  store i32 0, i32* %2, align 4
  br label %62

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i32, i32* @TOSA_GPIO_TC6393XB_L3V_ON, align 4
  %53 = call i32 @gpio_free(i32 %52)
  br label %54

54:                                               ; preds = %51, %21
  %55 = load i32, i32* @TOSA_GPIO_TC6393XB_SUSPEND, align 4
  %56 = call i32 @gpio_free(i32 %55)
  br label %57

57:                                               ; preds = %54, %15
  %58 = load i32, i32* @TOSA_GPIO_TC6393XB_REST_IN, align 4
  %59 = call i32 @gpio_free(i32 %58)
  br label %60

60:                                               ; preds = %57, %9
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %40
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
