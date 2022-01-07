; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_ctlr_power_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_ctlr_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32 }

@REG_CTRL1 = common dso_local global i32 0, align 4
@C1_PWRDWN = common dso_local global i32 0, align 4
@REG_GL_FCR = common dso_local global i32 0, align 4
@GFCR_GPIO_ON = common dso_local global i32 0, align 4
@REG_GL_GPIOR = common dso_local global i32 0, align 4
@GGPIO_OUT = common dso_local global i32 0, align 4
@GGPIO_VAL = common dso_local global i32 0, align 4
@REG_GPR = common dso_local global i32 0, align 4
@GPR_C1EN = common dso_local global i32 0, align 4
@GPR_C0EN = common dso_local global i32 0, align 4
@GPR_C0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cafe_camera*)* @cafe_ctlr_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_ctlr_power_up(%struct.cafe_camera* %0) #0 {
  %2 = alloca %struct.cafe_camera*, align 8
  %3 = alloca i64, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %2, align 8
  %4 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %5 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %9 = load i32, i32* @REG_CTRL1, align 4
  %10 = load i32, i32* @C1_PWRDWN, align 4
  %11 = call i32 @cafe_reg_clear_bit(%struct.cafe_camera* %8, i32 %9, i32 %10)
  %12 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %13 = load i32, i32* @REG_GL_FCR, align 4
  %14 = load i32, i32* @GFCR_GPIO_ON, align 4
  %15 = call i32 @cafe_reg_write(%struct.cafe_camera* %12, i32 %13, i32 %14)
  %16 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %17 = load i32, i32* @REG_GL_GPIOR, align 4
  %18 = load i32, i32* @GGPIO_OUT, align 4
  %19 = load i32, i32* @GGPIO_VAL, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @cafe_reg_write(%struct.cafe_camera* %16, i32 %17, i32 %20)
  %22 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %23 = load i32, i32* @REG_GPR, align 4
  %24 = load i32, i32* @GPR_C1EN, align 4
  %25 = load i32, i32* @GPR_C0EN, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @cafe_reg_write(%struct.cafe_camera* %22, i32 %23, i32 %26)
  %28 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %29 = load i32, i32* @REG_GPR, align 4
  %30 = load i32, i32* @GPR_C1EN, align 4
  %31 = load i32, i32* @GPR_C0EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GPR_C0, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cafe_reg_write(%struct.cafe_camera* %28, i32 %29, i32 %34)
  %36 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %37 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %36, i32 0, i32 0
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = call i32 @msleep(i32 5)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cafe_reg_clear_bit(%struct.cafe_camera*, i32, i32) #1

declare dso_local i32 @cafe_reg_write(%struct.cafe_camera*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
