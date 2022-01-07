; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_ctlr_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_ctlr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32 }

@REG_GL_CSR = common dso_local global i32 0, align 4
@GCSR_SRS = common dso_local global i32 0, align 4
@GCSR_MRS = common dso_local global i32 0, align 4
@GCSR_SRC = common dso_local global i32 0, align 4
@GCSR_MRC = common dso_local global i32 0, align 4
@GCSR_CCIC_EN = common dso_local global i32 0, align 4
@REG_GL_IMASK = common dso_local global i32 0, align 4
@GIMSK_CCIC_EN = common dso_local global i32 0, align 4
@REG_CTRL1 = common dso_local global i32 0, align 4
@C1_PWRDWN = common dso_local global i32 0, align 4
@REG_CTRL0 = common dso_local global i32 0, align 4
@C0_ENABLE = common dso_local global i32 0, align 4
@REG_IRQMASK = common dso_local global i32 0, align 4
@REG_CLKCTRL = common dso_local global i32 0, align 4
@CLK_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cafe_camera*)* @cafe_ctlr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_ctlr_init(%struct.cafe_camera* %0) #0 {
  %2 = alloca %struct.cafe_camera*, align 8
  %3 = alloca i64, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %2, align 8
  %4 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %5 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %9 = call i32 @cafe_reg_write(%struct.cafe_camera* %8, i32 12344, i32 8)
  %10 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %11 = call i32 @cafe_reg_write(%struct.cafe_camera* %10, i32 12636, i32 524296)
  %12 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %13 = load i32, i32* @REG_GL_CSR, align 4
  %14 = load i32, i32* @GCSR_SRS, align 4
  %15 = load i32, i32* @GCSR_MRS, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @cafe_reg_write(%struct.cafe_camera* %12, i32 %13, i32 %16)
  %18 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %19 = load i32, i32* @REG_GL_CSR, align 4
  %20 = load i32, i32* @GCSR_SRC, align 4
  %21 = load i32, i32* @GCSR_MRC, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @cafe_reg_write(%struct.cafe_camera* %18, i32 %19, i32 %22)
  %24 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %25 = load i32, i32* @REG_GL_CSR, align 4
  %26 = load i32, i32* @GCSR_SRC, align 4
  %27 = load i32, i32* @GCSR_MRS, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @cafe_reg_write(%struct.cafe_camera* %24, i32 %25, i32 %28)
  %30 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %31 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %30, i32 0, i32 0
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = call i32 @msleep(i32 5)
  %35 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %36 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %35, i32 0, i32 0
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %40 = load i32, i32* @REG_GL_CSR, align 4
  %41 = load i32, i32* @GCSR_CCIC_EN, align 4
  %42 = load i32, i32* @GCSR_SRC, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @GCSR_MRC, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @cafe_reg_write(%struct.cafe_camera* %39, i32 %40, i32 %45)
  %47 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %48 = load i32, i32* @REG_GL_IMASK, align 4
  %49 = load i32, i32* @GIMSK_CCIC_EN, align 4
  %50 = call i32 @cafe_reg_set_bit(%struct.cafe_camera* %47, i32 %48, i32 %49)
  %51 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %52 = load i32, i32* @REG_CTRL1, align 4
  %53 = load i32, i32* @C1_PWRDWN, align 4
  %54 = call i32 @cafe_reg_clear_bit(%struct.cafe_camera* %51, i32 %52, i32 %53)
  %55 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %56 = load i32, i32* @REG_CTRL0, align 4
  %57 = load i32, i32* @C0_ENABLE, align 4
  %58 = call i32 @cafe_reg_clear_bit(%struct.cafe_camera* %55, i32 %56, i32 %57)
  %59 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %60 = load i32, i32* @REG_IRQMASK, align 4
  %61 = call i32 @cafe_reg_write(%struct.cafe_camera* %59, i32 %60, i32 0)
  %62 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %63 = load i32, i32* @REG_CLKCTRL, align 4
  %64 = load i32, i32* @CLK_DIV_MASK, align 4
  %65 = call i32 @cafe_reg_write_mask(%struct.cafe_camera* %62, i32 %63, i32 2, i32 %64)
  %66 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %67 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %66, i32 0, i32 0
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cafe_reg_write(%struct.cafe_camera*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cafe_reg_set_bit(%struct.cafe_camera*, i32, i32) #1

declare dso_local i32 @cafe_reg_clear_bit(%struct.cafe_camera*, i32, i32) #1

declare dso_local i32 @cafe_reg_write_mask(%struct.cafe_camera*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
