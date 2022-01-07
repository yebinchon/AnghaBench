; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-gpio.c_ivtv_reset_tuner_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-gpio.c_ivtv_reset_tuner_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_bit_data = type { %struct.ivtv* }
%struct.ivtv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XC2028_TUNER_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Resetting tuner\0A\00", align 1
@IVTV_REG_GPIO_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_reset_tuner_gpio(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_algo_bit_data*, align 8
  %11 = alloca %struct.ivtv*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.i2c_algo_bit_data*
  store %struct.i2c_algo_bit_data* %14, %struct.i2c_algo_bit_data** %10, align 8
  %15 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %10, align 8
  %16 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %15, i32 0, i32 0
  %17 = load %struct.ivtv*, %struct.ivtv** %16, align 8
  store %struct.ivtv* %17, %struct.ivtv** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @XC2028_TUNER_RESET, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %53

22:                                               ; preds = %4
  %23 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @IVTV_REG_GPIO_OUT, align 4
  %25 = call i32 @read_reg(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  %27 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @IVTV_REG_GPIO_OUT, align 4
  %37 = call i32 @write_reg(i32 %35, i32 %36)
  %38 = call i32 @msecs_to_jiffies(i32 1)
  %39 = call i32 @schedule_timeout_interruptible(i32 %38)
  %40 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  %41 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @IVTV_REG_GPIO_OUT, align 4
  %50 = call i32 @write_reg(i32 %48, i32 %49)
  %51 = call i32 @msecs_to_jiffies(i32 1)
  %52 = call i32 @schedule_timeout_interruptible(i32 %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %22, %21
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
