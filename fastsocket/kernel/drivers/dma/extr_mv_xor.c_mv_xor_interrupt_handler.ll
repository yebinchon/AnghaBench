; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_xor_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_xor_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_chan = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"intr cause %x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mv_xor_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mv_xor_chan*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mv_xor_chan*
  store %struct.mv_xor_chan* %8, %struct.mv_xor_chan** %5, align 8
  %9 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %5, align 8
  %10 = call i32 @mv_chan_get_intr_cause(%struct.mv_xor_chan* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %5, align 8
  %12 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @mv_is_err_intr(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mv_xor_err_interrupt_handler(%struct.mv_xor_chan* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %5, align 8
  %28 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %27, i32 0, i32 0
  %29 = call i32 @tasklet_schedule(i32* %28)
  %30 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %5, align 8
  %31 = call i32 @mv_xor_device_clear_eoc_cause(%struct.mv_xor_chan* %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %32
}

declare dso_local i32 @mv_chan_get_intr_cause(%struct.mv_xor_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @mv_is_err_intr(i32) #1

declare dso_local i32 @mv_xor_err_interrupt_handler(%struct.mv_xor_chan*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @mv_xor_device_clear_eoc_cause(%struct.mv_xor_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
