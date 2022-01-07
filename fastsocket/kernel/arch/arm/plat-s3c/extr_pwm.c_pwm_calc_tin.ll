; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pwm.c_pwm_calc_tin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c/extr_pwm.c_pwm_calc_tin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"tin parent at %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pwm_device*, i64)* @pwm_calc_tin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwm_calc_tin(%struct.pwm_device* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pwm_device* %0, %struct.pwm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %9 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_get_parent(i32 %10)
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @pwm_dbg(%struct.pwm_device* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %14)
  store i32 2, i32* %7, align 4
  br label %16

16:                                               ; preds = %33, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp ule i32 %17, 16
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 16
  %23 = zext i32 %22 to i64
  %24 = udiv i64 %20, %23
  %25 = load i64, i64* %5, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = udiv i64 %28, %30
  store i64 %31, i64* %3, align 8
  br label %39

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = mul i32 %34, 2
  store i32 %35, i32* %7, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load i64, i64* %6, align 8
  %38 = udiv i64 %37, 16
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @clk_get_parent(i32) #1

declare dso_local i32 @pwm_dbg(%struct.pwm_device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
