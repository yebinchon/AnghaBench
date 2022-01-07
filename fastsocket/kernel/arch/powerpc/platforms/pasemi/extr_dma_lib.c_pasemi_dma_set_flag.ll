; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_set_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_set_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_FLAGS = common dso_local global i32 0, align 4
@PAS_DMA_TXF_SFLG0 = common dso_local global i32 0, align 4
@PAS_DMA_TXF_SFLG1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pasemi_dma_set_flag(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @MAX_FLAGS, align 4
  %5 = icmp sge i32 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @PAS_DMA_TXF_SFLG0, align 4
  %12 = load i32, i32* %2, align 4
  %13 = shl i32 1, %12
  %14 = call i32 @pasemi_write_dma_reg(i32 %11, i32 %13)
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @PAS_DMA_TXF_SFLG1, align 4
  %17 = load i32, i32* %2, align 4
  %18 = shl i32 1, %17
  %19 = call i32 @pasemi_write_dma_reg(i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pasemi_write_dma_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
