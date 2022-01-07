; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_dma_tei.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/dma/extr_dma-sh.c_dma_tei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i64, i32 }

@dma_base_addr = common dso_local global i64* null, align 8
@CHCR = common dso_local global i64 0, align 8
@CHCR_TE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CHCR_IE = common dso_local global i32 0, align 4
@CHCR_DE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dma_tei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_tei(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dma_channel*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.dma_channel*
  store %struct.dma_channel* %9, %struct.dma_channel** %6, align 8
  %10 = load i64*, i64** @dma_base_addr, align 8
  %11 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %12 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %10, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @ctrl_inl(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @CHCR_TE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %2
  %26 = load i32, i32* @CHCR_IE, align 4
  %27 = load i32, i32* @CHCR_DE, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i64*, i64** @dma_base_addr, align 8
  %34 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %35 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CHCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @ctrl_outl(i32 %32, i64 %40)
  %42 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %43 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %42, i32 0, i32 1
  %44 = call i32 @wake_up(i32* %43)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %25, %23
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ctrl_inl(i64) #1

declare dso_local i32 @ctrl_outl(i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
