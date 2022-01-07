; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_rio_close_outb_mbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_rio_close_outb_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.rio_priv* }
%struct.rio_priv = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RIO_MSG_DESC_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rio_close_outb_mbox(%struct.rio_mport* %0, i32 %1) #0 {
  %3 = alloca %struct.rio_mport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rio_priv*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %7 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %6, i32 0, i32 0
  %8 = load %struct.rio_priv*, %struct.rio_priv** %7, align 8
  store %struct.rio_priv* %8, %struct.rio_priv** %5, align 8
  %9 = load %struct.rio_priv*, %struct.rio_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @out_be32(i32* %12, i32 0)
  %14 = load %struct.rio_priv*, %struct.rio_priv** %5, align 8
  %15 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rio_priv*, %struct.rio_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RIO_MSG_DESC_SIZE, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load %struct.rio_priv*, %struct.rio_priv** %5, align 8
  %24 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rio_priv*, %struct.rio_priv** %5, align 8
  %28 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dma_free_coherent(i32 %16, i32 %22, i32 %26, i32 %30)
  %32 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %33 = call i32 @IRQ_RIO_TX(%struct.rio_mport* %32)
  %34 = load %struct.rio_mport*, %struct.rio_mport** %3, align 8
  %35 = bitcast %struct.rio_mport* %34 to i8*
  %36 = call i32 @free_irq(i32 %33, i8* %35)
  ret void
}

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @IRQ_RIO_TX(%struct.rio_mport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
