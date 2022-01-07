; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-gpio.c_ivtv_reset_ir_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-gpio.c_ivtv_reset_ir_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IVTV_CARD_PVR_150 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Resetting PVR150 IR\0A\00", align 1
@IVTV_REG_GPIO_OUT = common dso_local global i32 0, align 4
@IVTV_REG_GPIO_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_reset_ir_gpio(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %5 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %6 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IVTV_CARD_PVR_150, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @IVTV_REG_GPIO_OUT, align 4
  %16 = call i32 @read_reg(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @IVTV_REG_GPIO_DIR, align 4
  %18 = call i32 @read_reg(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, 128
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @IVTV_REG_GPIO_DIR, align 4
  %23 = call i32 @write_reg(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, -16
  %26 = or i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IVTV_REG_GPIO_OUT, align 4
  %29 = call i32 @write_reg(i32 %27, i32 %28)
  %30 = call i32 @msecs_to_jiffies(i32 1)
  %31 = call i32 @schedule_timeout_interruptible(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, 2
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IVTV_REG_GPIO_OUT, align 4
  %36 = call i32 @write_reg(i32 %34, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, -129
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @IVTV_REG_GPIO_DIR, align 4
  %41 = call i32 @write_reg(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %13, %12
  ret void
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
