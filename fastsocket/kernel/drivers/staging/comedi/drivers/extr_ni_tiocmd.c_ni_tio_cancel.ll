; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_cancel(%struct.ni_gpct* %0) #0 {
  %2 = alloca %struct.ni_gpct*, align 8
  %3 = alloca i64, align 8
  store %struct.ni_gpct* %0, %struct.ni_gpct** %2, align 8
  %4 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %5 = call i32 @ni_tio_arm(%struct.ni_gpct* %4, i32 0, i32 0)
  %6 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %7 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %6, i32 0, i32 1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %11 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %16 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @mite_dma_disarm(i64 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %21 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %20, i32 0, i32 1
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %25 = call i32 @ni_tio_configure_dma(%struct.ni_gpct* %24, i32 0, i32 0)
  %26 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %27 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %28 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @NITIO_Gi_Interrupt_Enable_Reg(i32 %29)
  %31 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %32 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @Gi_Gate_Interrupt_Enable_Bit(i32 %33)
  %35 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %26, i32 %30, i32 %34, i32 0)
  ret i32 0
}

declare dso_local i32 @ni_tio_arm(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mite_dma_disarm(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ni_tio_configure_dma(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Interrupt_Enable_Reg(i32) #1

declare dso_local i32 @Gi_Gate_Interrupt_Enable_Bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
