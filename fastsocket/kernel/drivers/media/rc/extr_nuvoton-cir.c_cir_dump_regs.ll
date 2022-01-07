; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_cir_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_cir_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32 }

@LOGICAL_DEV_CIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: Dump CIR logical device registers:\0A\00", align 1
@NVT_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c" * CR CIR ACTIVE :   0x%x\0A\00", align 1
@CR_LOGICAL_DEV_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c" * CR CIR BASE ADDR: 0x%x\0A\00", align 1
@CR_CIR_BASE_ADDR_HI = common dso_local global i32 0, align 4
@CR_CIR_BASE_ADDR_LO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c" * CR CIR IRQ NUM:   0x%x\0A\00", align 1
@CR_CIR_IRQ_RSRC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: Dump CIR registers:\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c" * IRCON:     0x%x\0A\00", align 1
@CIR_IRCON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c" * IRSTS:     0x%x\0A\00", align 1
@CIR_IRSTS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c" * IREN:      0x%x\0A\00", align 1
@CIR_IREN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c" * RXFCONT:   0x%x\0A\00", align 1
@CIR_RXFCONT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c" * CP:        0x%x\0A\00", align 1
@CIR_CP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c" * CC:        0x%x\0A\00", align 1
@CIR_CC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c" * SLCH:      0x%x\0A\00", align 1
@CIR_SLCH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c" * SLCL:      0x%x\0A\00", align 1
@CIR_SLCL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c" * FIFOCON:   0x%x\0A\00", align 1
@CIR_FIFOCON = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c" * IRFIFOSTS: 0x%x\0A\00", align 1
@CIR_IRFIFOSTS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c" * SRXFIFO:   0x%x\0A\00", align 1
@CIR_SRXFIFO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c" * TXFCONT:   0x%x\0A\00", align 1
@CIR_TXFCONT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c" * STXFIFO:   0x%x\0A\00", align 1
@CIR_STXFIFO = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [20 x i8] c" * FCCH:      0x%x\0A\00", align 1
@CIR_FCCH = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [20 x i8] c" * FCCL:      0x%x\0A\00", align 1
@CIR_FCCL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c" * IRFSM:     0x%x\0A\00", align 1
@CIR_IRFSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvt_dev*)* @cir_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cir_dump_regs(%struct.nvt_dev* %0) #0 {
  %2 = alloca %struct.nvt_dev*, align 8
  store %struct.nvt_dev* %0, %struct.nvt_dev** %2, align 8
  %3 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %4 = call i32 @nvt_efm_enable(%struct.nvt_dev* %3)
  %5 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %6 = load i32, i32* @LOGICAL_DEV_CIR, align 4
  %7 = call i32 @nvt_select_logical_dev(%struct.nvt_dev* %5, i32 %6)
  %8 = load i32, i32* @NVT_DRIVER_NAME, align 4
  %9 = call i32 @pr_reg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %11 = load i32, i32* @CR_LOGICAL_DEV_EN, align 4
  %12 = call i32 @nvt_cr_read(%struct.nvt_dev* %10, i32 %11)
  %13 = call i32 @pr_reg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %15 = load i32, i32* @CR_CIR_BASE_ADDR_HI, align 4
  %16 = call i32 @nvt_cr_read(%struct.nvt_dev* %14, i32 %15)
  %17 = shl i32 %16, 8
  %18 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %19 = load i32, i32* @CR_CIR_BASE_ADDR_LO, align 4
  %20 = call i32 @nvt_cr_read(%struct.nvt_dev* %18, i32 %19)
  %21 = or i32 %17, %20
  %22 = call i32 @pr_reg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %24 = load i32, i32* @CR_CIR_IRQ_RSRC, align 4
  %25 = call i32 @nvt_cr_read(%struct.nvt_dev* %23, i32 %24)
  %26 = call i32 @pr_reg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %28 = call i32 @nvt_efm_disable(%struct.nvt_dev* %27)
  %29 = load i32, i32* @NVT_DRIVER_NAME, align 4
  %30 = call i32 @pr_reg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %32 = load i32, i32* @CIR_IRCON, align 4
  %33 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %31, i32 %32)
  %34 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %36 = load i32, i32* @CIR_IRSTS, align 4
  %37 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %35, i32 %36)
  %38 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  %39 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %40 = load i32, i32* @CIR_IREN, align 4
  %41 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %39, i32 %40)
  %42 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %41)
  %43 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %44 = load i32, i32* @CIR_RXFCONT, align 4
  %45 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %43, i32 %44)
  %46 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %45)
  %47 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %48 = load i32, i32* @CIR_CP, align 4
  %49 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %47, i32 %48)
  %50 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %49)
  %51 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %52 = load i32, i32* @CIR_CC, align 4
  %53 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %51, i32 %52)
  %54 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %53)
  %55 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %56 = load i32, i32* @CIR_SLCH, align 4
  %57 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %55, i32 %56)
  %58 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %57)
  %59 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %60 = load i32, i32* @CIR_SLCL, align 4
  %61 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %59, i32 %60)
  %62 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %61)
  %63 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %64 = load i32, i32* @CIR_FIFOCON, align 4
  %65 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %63, i32 %64)
  %66 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %65)
  %67 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %68 = load i32, i32* @CIR_IRFIFOSTS, align 4
  %69 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %67, i32 %68)
  %70 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %69)
  %71 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %72 = load i32, i32* @CIR_SRXFIFO, align 4
  %73 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %71, i32 %72)
  %74 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %73)
  %75 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %76 = load i32, i32* @CIR_TXFCONT, align 4
  %77 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %75, i32 %76)
  %78 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %77)
  %79 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %80 = load i32, i32* @CIR_STXFIFO, align 4
  %81 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %79, i32 %80)
  %82 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %81)
  %83 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %84 = load i32, i32* @CIR_FCCH, align 4
  %85 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %83, i32 %84)
  %86 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %85)
  %87 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %88 = load i32, i32* @CIR_FCCL, align 4
  %89 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %87, i32 %88)
  %90 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %89)
  %91 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %92 = load i32, i32* @CIR_IRFSM, align 4
  %93 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %91, i32 %92)
  %94 = call i32 @pr_reg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %93)
  ret void
}

declare dso_local i32 @nvt_efm_enable(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_select_logical_dev(%struct.nvt_dev*, i32) #1

declare dso_local i32 @pr_reg(i8*, i32) #1

declare dso_local i32 @nvt_cr_read(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_efm_disable(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_cir_reg_read(%struct.nvt_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
