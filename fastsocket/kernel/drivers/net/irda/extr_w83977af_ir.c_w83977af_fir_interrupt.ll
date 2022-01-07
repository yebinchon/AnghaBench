; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_w83977af_ir.c_w83977af_fir_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_w83977af_ir.c_w83977af_fir_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83977af_ir = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@SSR = common dso_local global i64 0, align 8
@ISR_FEND_I = common dso_local global i32 0, align 4
@ISR_FSF_I = common dso_local global i32 0, align 4
@ICR_EFSFI = common dso_local global i32 0, align 4
@SET4 = common dso_local global i32 0, align 4
@TMRL = common dso_local global i64 0, align 8
@TMRH = common dso_local global i64 0, align 8
@IR_MSL_EN_TMR = common dso_local global i32 0, align 4
@IR_MSL = common dso_local global i64 0, align 8
@ICR_ETMRI = common dso_local global i32 0, align 4
@ISR_TMR_I = common dso_local global i32 0, align 4
@IO_XMIT = common dso_local global i64 0, align 8
@ICR_EDMAI = common dso_local global i32 0, align 4
@ISR_DMA_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w83977af_ir*, i32)* @w83977af_fir_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83977af_fir_interrupt(%struct.w83977af_ir* %0, i32 %1) #0 {
  %3 = alloca %struct.w83977af_ir*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.w83977af_ir* %0, %struct.w83977af_ir** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.w83977af_ir*, %struct.w83977af_ir** %3, align 8
  %9 = getelementptr inbounds %struct.w83977af_ir, %struct.w83977af_ir* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @SSR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inb(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ISR_FEND_I, align 4
  %19 = load i32, i32* @ISR_FSF_I, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %2
  %24 = load %struct.w83977af_ir*, %struct.w83977af_ir** %3, align 8
  %25 = call i64 @w83977af_dma_receive_complete(%struct.w83977af_ir* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @ICR_EFSFI, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %54

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SET4, align 4
  %34 = call i32 @switch_bank(i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @TMRL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i32 1, i64 %38)
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @TMRH, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 0, i64 %43)
  %45 = load i32, i32* @IR_MSL_EN_TMR, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @IR_MSL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outb(i32 %45, i64 %49)
  %51 = load i32, i32* @ICR_ETMRI, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %31, %27
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ISR_TMR_I, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @SET4, align 4
  %63 = call i32 @switch_bank(i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @IR_MSL, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outb(i32 0, i64 %67)
  %69 = load %struct.w83977af_ir*, %struct.w83977af_ir** %3, align 8
  %70 = getelementptr inbounds %struct.w83977af_ir, %struct.w83977af_ir* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IO_XMIT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %60
  %76 = load %struct.w83977af_ir*, %struct.w83977af_ir** %3, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @w83977af_dma_write(%struct.w83977af_ir* %76, i32 %77)
  %79 = load i32, i32* @ICR_EDMAI, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %88

82:                                               ; preds = %60
  %83 = load %struct.w83977af_ir*, %struct.w83977af_ir** %3, align 8
  %84 = call i64 @w83977af_dma_receive_complete(%struct.w83977af_ir* %83)
  %85 = load i32, i32* @ICR_EFSFI, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %75
  br label %89

89:                                               ; preds = %88, %55
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @ISR_DMA_I, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.w83977af_ir*, %struct.w83977af_ir** %3, align 8
  %96 = call i32 @w83977af_dma_xmit_complete(%struct.w83977af_ir* %95)
  %97 = load %struct.w83977af_ir*, %struct.w83977af_ir** %3, align 8
  %98 = call i32 @w83977af_dma_receive(%struct.w83977af_ir* %97)
  %99 = load i32, i32* @ICR_EFSFI, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* @SSR, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @outb(i32 %101, i64 %105)
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @inb(i64) #1

declare dso_local i64 @w83977af_dma_receive_complete(%struct.w83977af_ir*) #1

declare dso_local i32 @switch_bank(i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @w83977af_dma_write(%struct.w83977af_ir*, i32) #1

declare dso_local i32 @w83977af_dma_xmit_complete(%struct.w83977af_ir*) #1

declare dso_local i32 @w83977af_dma_receive(%struct.w83977af_ir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
