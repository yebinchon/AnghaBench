; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_configure_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_configure_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32 }

@Gi_Read_Acknowledges_Irq = common dso_local global i32 0, align 4
@Gi_Write_Acknowledges_Irq = common dso_local global i32 0, align 4
@Gi_DMA_Enable_Bit = common dso_local global i32 0, align 4
@Gi_DMA_Int_Bit = common dso_local global i32 0, align 4
@Gi_DMA_Write_Bit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ni_gpct*, i16, i16)* @ni_tio_configure_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_tio_configure_dma(%struct.ni_gpct* %0, i16 signext %1, i16 signext %2) #0 {
  %4 = alloca %struct.ni_gpct*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.ni_gpct_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %10 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %11 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %10, i32 0, i32 1
  %12 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %11, align 8
  store %struct.ni_gpct_device* %12, %struct.ni_gpct_device** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i16, i16* %5, align 2
  %14 = icmp ne i16 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load i16, i16* %6, align 2
  %17 = icmp ne i16 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @Gi_Read_Acknowledges_Irq, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @Gi_Write_Acknowledges_Irq, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %29 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %30 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @NITIO_Gi_Input_Select_Reg(i32 %31)
  %33 = load i32, i32* @Gi_Read_Acknowledges_Irq, align 4
  %34 = load i32, i32* @Gi_Write_Acknowledges_Irq, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %28, i32 %32, i32 %35, i32 %36)
  %38 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %7, align 8
  %39 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %73 [
    i32 129, label %41
    i32 128, label %42
    i32 130, label %42
  ]

41:                                               ; preds = %27
  br label %73

42:                                               ; preds = %27, %27
  store i32 0, i32* %9, align 4
  %43 = load i16, i16* %5, align 2
  %44 = icmp ne i16 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* @Gi_DMA_Enable_Bit, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @Gi_DMA_Int_Bit, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i16, i16* %6, align 2
  %54 = sext i16 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @Gi_DMA_Write_Bit, align 4
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %62 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %63 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @NITIO_Gi_DMA_Config_Reg(i32 %64)
  %66 = load i32, i32* @Gi_DMA_Enable_Bit, align 4
  %67 = load i32, i32* @Gi_DMA_Int_Bit, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @Gi_DMA_Write_Bit, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %61, i32 %65, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %27, %60, %41
  ret void
}

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Input_Select_Reg(i32) #1

declare dso_local i32 @NITIO_Gi_DMA_Config_Reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
