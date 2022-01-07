; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_floppy_grab_irq_and_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_floppy_grab_irq_and_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@floppy_usage_lock = common dso_local global i32 0, align 4
@usage_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unable to grab IRQ%d for the floppy driver\0A\00", align 1
@FLOPPY_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to grab DMA%d for the floppy driver\0A\00", align 1
@FLOPPY_DMA = common dso_local global i32 0, align 4
@can_use_virtual_dma = common dso_local global i32 0, align 4
@use_virtual_dma = common dso_local global i32 0, align 4
@fdc = common dso_local global i64 0, align 8
@N_FDC = common dso_local global i64 0, align 8
@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@FD_DOR = common dso_local global i32 0, align 4
@irqdma_allocated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @floppy_grab_irq_and_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @floppy_grab_irq_and_dma() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @floppy_usage_lock, i64 %3)
  %5 = load i32, i32* @usage_count, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @usage_count, align 4
  %7 = icmp ne i32 %5, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @spin_unlock_irqrestore(i32* @floppy_usage_lock, i64 %9)
  store i32 0, i32* %1, align 4
  br label %129

11:                                               ; preds = %0
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @spin_unlock_irqrestore(i32* @floppy_usage_lock, i64 %12)
  %14 = call i32 (...) @flush_scheduled_work()
  %15 = call i64 (...) @fd_request_irq()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load i32, i32* @FLOPPY_IRQ, align 4
  %19 = call i32 @DPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @floppy_usage_lock, i64 %20)
  %22 = load i32, i32* @usage_count, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @usage_count, align 4
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @floppy_usage_lock, i64 %24)
  store i32 -1, i32* %1, align 4
  br label %129

26:                                               ; preds = %11
  %27 = call i64 (...) @fd_request_dma()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load i32, i32* @FLOPPY_DMA, align 4
  %31 = call i32 @DPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @can_use_virtual_dma, align 4
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* @can_use_virtual_dma, align 4
  store i32 1, i32* @use_virtual_dma, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* @can_use_virtual_dma, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = call i32 (...) @fd_free_irq()
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @spin_lock_irqsave(i32* @floppy_usage_lock, i64 %42)
  %44 = load i32, i32* @usage_count, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* @usage_count, align 4
  %46 = load i64, i64* %2, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @floppy_usage_lock, i64 %46)
  store i32 -1, i32* %1, align 4
  br label %129

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %26
  store i64 0, i64* @fdc, align 8
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i64, i64* @fdc, align 8
  %52 = load i64, i64* @N_FDC, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i64, i64* @fdc, align 8
  %61 = call i64 @floppy_request_regions(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %112

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %54
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* @fdc, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* @fdc, align 8
  br label %50

69:                                               ; preds = %50
  store i64 0, i64* @fdc, align 8
  br label %70

70:                                               ; preds = %87, %69
  %71 = load i64, i64* @fdc, align 8
  %72 = load i64, i64* @N_FDC, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = call i32 @reset_fdc_info(i32 1)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FD_DOR, align 4
  %85 = call i32 @fd_outb(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %74
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* @fdc, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* @fdc, align 8
  br label %70

90:                                               ; preds = %70
  store i64 0, i64* @fdc, align 8
  %91 = call i32 @set_dor(i32 0, i32 -1, i32 8)
  store i64 0, i64* @fdc, align 8
  br label %92

92:                                               ; preds = %108, %90
  %93 = load i64, i64* @fdc, align 8
  %94 = load i64, i64* @N_FDC, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @FD_DOR, align 4
  %106 = call i32 @fd_outb(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %96
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* @fdc, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* @fdc, align 8
  br label %92

111:                                              ; preds = %92
  store i64 0, i64* @fdc, align 8
  store i32 1, i32* @irqdma_allocated, align 4
  store i32 0, i32* %1, align 4
  br label %129

112:                                              ; preds = %63
  %113 = call i32 (...) @fd_free_irq()
  %114 = call i32 (...) @fd_free_dma()
  br label %115

115:                                              ; preds = %119, %112
  %116 = load i64, i64* @fdc, align 8
  %117 = add nsw i64 %116, -1
  store i64 %117, i64* @fdc, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i64, i64* @fdc, align 8
  %121 = call i32 @floppy_release_regions(i64 %120)
  br label %115

122:                                              ; preds = %115
  %123 = load i64, i64* %2, align 8
  %124 = call i32 @spin_lock_irqsave(i32* @floppy_usage_lock, i64 %123)
  %125 = load i32, i32* @usage_count, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* @usage_count, align 4
  %127 = load i64, i64* %2, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* @floppy_usage_lock, i64 %127)
  store i32 -1, i32* %1, align 4
  br label %129

129:                                              ; preds = %122, %111, %40, %17, %8
  %130 = load i32, i32* %1, align 4
  ret i32 %130
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i64 @fd_request_irq(...) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i64 @fd_request_dma(...) #1

declare dso_local i32 @fd_free_irq(...) #1

declare dso_local i64 @floppy_request_regions(i64) #1

declare dso_local i32 @reset_fdc_info(i32) #1

declare dso_local i32 @fd_outb(i32, i32) #1

declare dso_local i32 @set_dor(i32, i32, i32) #1

declare dso_local i32 @fd_free_dma(...) #1

declare dso_local i32 @floppy_release_regions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
