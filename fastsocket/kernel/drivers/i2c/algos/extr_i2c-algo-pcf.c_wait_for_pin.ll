; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-pcf.c_wait_for_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-pcf.c_wait_for_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_pcf_data = type { i32, i32 (i32)* }

@DEF_TIMEOUT = common dso_local global i32 0, align 4
@I2C_PCF_PIN = common dso_local global i32 0, align 4
@I2C_PCF_LAB = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_pcf_data*, i32*)* @wait_for_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_pin(%struct.i2c_algo_pcf_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_algo_pcf_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_algo_pcf_data* %0, %struct.i2c_algo_pcf_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @DEF_TIMEOUT, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %4, align 8
  %9 = call i32 @get_pcf(%struct.i2c_algo_pcf_data* %8, i32 1)
  %10 = load i32*, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  br label %11

11:                                               ; preds = %23, %2
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I2C_PCF_PIN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i1 [ false, %11 ], [ %20, %17 ]
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_algo_pcf_data, %struct.i2c_algo_pcf_data* %24, i32 0, i32 1
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_algo_pcf_data, %struct.i2c_algo_pcf_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %26(i32 %29)
  %31 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %4, align 8
  %32 = call i32 @get_pcf(%struct.i2c_algo_pcf_data* %31, i32 1)
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %11

34:                                               ; preds = %21
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @I2C_PCF_LAB, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @handle_lab(%struct.i2c_algo_pcf_data* %41, i32* %42)
  %44 = load i32, i32* @EINTR, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %53

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49, %40
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @get_pcf(%struct.i2c_algo_pcf_data*, i32) #1

declare dso_local i32 @handle_lab(%struct.i2c_algo_pcf_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
