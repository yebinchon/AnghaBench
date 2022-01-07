; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_end_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_end_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SGI_UART_VECTOR = common dso_local global i32 0, align 4
@SH_EVENT_OCCURRED = common dso_local global i32 0, align 4
@SH_EVENT_OCCURRED_UART_INT_MASK = common dso_local global i32 0, align 4
@IA64_IPI_DM_INT = common dso_local global i32 0, align 4
@pda = common dso_local global %struct.TYPE_2__* null, align 8
@sn_force_interrupt_flag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sn_end_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sn_end_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 255
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SGI_UART_VECTOR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load i32, i32* @SH_EVENT_OCCURRED, align 4
  %12 = call i64 @LOCAL_MMR_ADDR(i32 %11)
  %13 = inttoptr i64 %12 to i32*
  %14 = call i32 @HUB_L(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SH_EVENT_OCCURRED_UART_INT_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = call i32 (...) @smp_processor_id()
  %21 = load i32, i32* @SGI_UART_VECTOR, align 4
  %22 = load i32, i32* @IA64_IPI_DM_INT, align 4
  %23 = call i32 @platform_send_ipi(i32 %20, i32 %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %19, %10
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pda, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @__clear_bit(i32 %26, i8* %30)
  %32 = load i64, i64* @sn_force_interrupt_flag, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @force_interrupt(i32 %35)
  br label %37

37:                                               ; preds = %34, %25
  ret void
}

declare dso_local i32 @HUB_L(i32*) #1

declare dso_local i64 @LOCAL_MMR_ADDR(i32) #1

declare dso_local i32 @platform_send_ipi(i32, i32, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @__clear_bit(i32, i8*) #1

declare dso_local i32 @force_interrupt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
