; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_pwm.c_pwm_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_pwm.c_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MX3_PWMSAR = common dso_local global i64 0, align 8
@MX3_PWMPR = common dso_local global i64 0, align 8
@MX3_PWMCR_EN = common dso_local global i32 0, align 4
@MX3_PWMCR_CLKSRC_IPG = common dso_local global i32 0, align 4
@MX3_PWMCR_CLKSRC_IPG_HIGH = common dso_local global i32 0, align 4
@MX3_PWMCR = common dso_local global i64 0, align 8
@MX1_PWMP = common dso_local global i64 0, align 8
@MX1_PWMS = common dso_local global i64 0, align 8

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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pwm_device* %0, %struct.pwm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %16 = icmp eq %struct.pwm_device* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %17, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %131

27:                                               ; preds = %20
  %28 = call i64 (...) @cpu_is_mx27()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = call i64 (...) @cpu_is_mx3()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = call i64 (...) @cpu_is_mx25()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %100

36:                                               ; preds = %33, %30, %27
  %37 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %38 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @clk_get_rate(i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %41, %43
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @do_div(i64 %45, i32 1000000000)
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = udiv i64 %48, 65536
  %50 = add i64 %49, 1
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = udiv i64 %52, %51
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %54, %56
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @do_div(i64 %58, i32 %59)
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %65 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MX3_PWMSAR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load i64, i64* %9, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %73 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MX3_PWMPR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @MX3_PWMCR_PRESCALER(i64 %78)
  %80 = load i32, i32* @MX3_PWMCR_EN, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %12, align 4
  %82 = call i64 (...) @cpu_is_mx25()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %36
  %85 = load i32, i32* @MX3_PWMCR_CLKSRC_IPG, align 4
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %92

88:                                               ; preds = %36
  %89 = load i32, i32* @MX3_PWMCR_CLKSRC_IPG_HIGH, align 4
  %90 = load i32, i32* %12, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %95 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MX3_PWMCR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  br label %130

100:                                              ; preds = %33
  %101 = call i64 (...) @cpu_is_mx1()
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = call i64 (...) @cpu_is_mx21()
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %103, %100
  %107 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %108 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MX1_PWMP, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @readl(i64 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %6, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %7, align 4
  %117 = sdiv i32 %115, %116
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %122 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @MX1_PWMS, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %120, i64 %125)
  br label %129

127:                                              ; preds = %103
  %128 = call i32 (...) @BUG()
  br label %129

129:                                              ; preds = %127, %106
  br label %130

130:                                              ; preds = %129, %92
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %24
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @cpu_is_mx27(...) #1

declare dso_local i64 @cpu_is_mx3(...) #1

declare dso_local i64 @cpu_is_mx25(...) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @MX3_PWMCR_PRESCALER(i64) #1

declare dso_local i64 @cpu_is_mx1(...) #1

declare dso_local i64 @cpu_is_mx21(...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
