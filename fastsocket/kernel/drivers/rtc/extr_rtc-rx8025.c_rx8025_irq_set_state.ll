; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rx8025.c_rx8025_irq_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rx8025.c_rx8025_irq_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i64 }
%struct.rx8025_data = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL1_CT = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL1_CT_1HZ = common dso_local global i32 0, align 4
@RX8025_REG_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @rx8025_irq_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8025_irq_set_state(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.rx8025_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.rx8025_data* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.rx8025_data* %13, %struct.rx8025_data** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.rx8025_data*, %struct.rx8025_data** %7, align 8
  %23 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RX8025_BIT_CTRL1_CT, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @RX8025_BIT_CTRL1_CT_1HZ, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.rx8025_data*, %struct.rx8025_data** %7, align 8
  %37 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.rx8025_data*, %struct.rx8025_data** %7, align 8
  %43 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rx8025_data*, %struct.rx8025_data** %7, align 8
  %45 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RX8025_REG_CTRL1, align 4
  %48 = load %struct.rx8025_data*, %struct.rx8025_data** %7, align 8
  %49 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rx8025_write_reg(i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %34
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %54, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.rx8025_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @rx8025_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
