; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-pxa/extr_pwm.c_pwm_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-pxa/extr_pwm.c_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PWMDCR_FD = common dso_local global i64 0, align 8
@PWMCR = common dso_local global i64 0, align 8
@PWMDCR = common dso_local global i64 0, align 8
@PWMPCR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwm_config(%struct.pwm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pwm_device* %0, %struct.pwm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %14 = icmp eq %struct.pwm_device* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %15, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %99

25:                                               ; preds = %18
  %26 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %27 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @clk_get_rate(i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %30, %32
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @do_div(i64 %34, i32 1000000000)
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i64 1, i64* %9, align 8
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i64, i64* %9, align 8
  %42 = sub i64 %41, 1
  %43 = udiv i64 %42, 1024
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  %47 = udiv i64 %44, %46
  %48 = sub i64 %47, 1
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ugt i64 %49, 63
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %99

54:                                               ; preds = %40
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* @PWMDCR_FD, align 8
  store i64 %59, i64* %12, align 8
  br label %69

60:                                               ; preds = %54
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %62, %64
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %65, %67
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %60, %58
  %70 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %71 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @clk_enable(i32 %72)
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %76 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PWMCR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @__raw_writel(i64 %74, i64 %79)
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %83 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PWMDCR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @__raw_writel(i64 %81, i64 %86)
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %90 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PWMPCR, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @__raw_writel(i64 %88, i64 %93)
  %95 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %96 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @clk_disable(i32 %97)
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %69, %51, %22
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
