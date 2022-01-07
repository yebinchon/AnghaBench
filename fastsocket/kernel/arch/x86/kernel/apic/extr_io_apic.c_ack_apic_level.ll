; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_ack_apic_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_ack_apic_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, %struct.irq_cfg* }
%struct.irq_cfg = type { i32 }

@APIC_TMR = common dso_local global i64 0, align 8
@irq_mis_count = common dso_local global i32 0, align 4
@IRQ_MOVE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ack_apic_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ack_apic_level(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_cfg*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.irq_desc* @irq_to_desc(i32 %8)
  store %struct.irq_desc* %9, %struct.irq_desc** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 @irq_complete_move(%struct.irq_desc** %3)
  %11 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %12 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %11, i32 0, i32 1
  %13 = load %struct.irq_cfg*, %struct.irq_cfg** %12, align 8
  store %struct.irq_cfg* %13, %struct.irq_cfg** %6, align 8
  %14 = load %struct.irq_cfg*, %struct.irq_cfg** %6, align 8
  %15 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* @APIC_TMR, align 8
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, -32
  %20 = ashr i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = call i64 @apic_read(i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = call i32 (...) @ack_APIC_irq()
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 31
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = and i64 %25, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %1
  %33 = call i32 @atomic_inc(i32* @irq_mis_count)
  %34 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %35 = call i32 @eoi_ioapic_irq(%struct.irq_desc* %34)
  br label %36

36:                                               ; preds = %32, %1
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %42 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %41, i32 0, i32 1
  %43 = load %struct.irq_cfg*, %struct.irq_cfg** %42, align 8
  store %struct.irq_cfg* %43, %struct.irq_cfg** %6, align 8
  %44 = load %struct.irq_cfg*, %struct.irq_cfg** %6, align 8
  %45 = call i32 @io_apic_level_ack_pending(%struct.irq_cfg* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @move_masked_irq(i32 %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %52 = call i32 @unmask_IO_APIC_irq_desc(%struct.irq_desc* %51)
  br label %53

53:                                               ; preds = %50, %36
  ret void
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @irq_complete_move(%struct.irq_desc**) #1

declare dso_local i64 @apic_read(i64) #1

declare dso_local i32 @ack_APIC_irq(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @eoi_ioapic_irq(%struct.irq_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @io_apic_level_ack_pending(%struct.irq_cfg*) #1

declare dso_local i32 @move_masked_irq(i32) #1

declare dso_local i32 @unmask_IO_APIC_irq_desc(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
