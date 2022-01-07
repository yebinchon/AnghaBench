; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm644x-evm.c_evm_u18_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm644x-evm.c_evm_u18_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@sw_gpio = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"user_sw\00", align 1
@dev_attr_user_sw = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pll_fs2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pll_fs1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"pll_sr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i8*)* @evm_u18_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evm_u18_setup(%struct.i2c_client* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 7
  store i32 %11, i32* @sw_gpio, align 4
  %12 = load i32, i32* @sw_gpio, align 4
  %13 = call i32 @gpio_request(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @sw_gpio, align 4
  %18 = call i32 @gpio_direction_input(i32 %17)
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %16, %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @device_create_file(i32* %24, i32* @dev_attr_user_sw)
  store i32 %25, i32* %9, align 4
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @sw_gpio, align 4
  %28 = call i32 @gpio_free(i32 %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* @sw_gpio, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 3
  %38 = call i32 @gpio_request(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 3
  %41 = call i32 @gpio_direction_output(i32 %40, i32 0)
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 2
  %44 = call i32 @gpio_request(i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 2
  %47 = call i32 @gpio_direction_output(i32 %46, i32 0)
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @gpio_request(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @gpio_direction_output(i32 %52, i32 0)
  ret i32 0
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
