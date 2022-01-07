; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_free_rx_databuff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_free_rx_databuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.RxDesc = type { i32 }

@rx_buf_sz = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, i8**, %struct.RxDesc*)* @rtl8169_free_rx_databuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_free_rx_databuff(%struct.rtl8169_private* %0, i8** %1, %struct.RxDesc* %2) #0 {
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.RxDesc*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.RxDesc* %2, %struct.RxDesc** %6, align 8
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %8 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.RxDesc*, %struct.RxDesc** %6, align 8
  %12 = getelementptr inbounds %struct.RxDesc, %struct.RxDesc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le64_to_cpu(i32 %13)
  %15 = load i32, i32* @rx_buf_sz, align 4
  %16 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %17 = call i32 @dma_unmap_single(i32* %10, i32 %14, i32 %15, i32 %16)
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @kfree(i8* %19)
  %21 = load i8**, i8*** %5, align 8
  store i8* null, i8** %21, align 8
  %22 = load %struct.RxDesc*, %struct.RxDesc** %6, align 8
  %23 = call i32 @rtl8169_make_unusable_by_asic(%struct.RxDesc* %22)
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @rtl8169_make_unusable_by_asic(%struct.RxDesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
