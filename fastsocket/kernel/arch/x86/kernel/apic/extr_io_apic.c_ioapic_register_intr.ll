; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_ioapic_register_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_ioapic_register_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@IOAPIC_AUTO = common dso_local global i64 0, align 8
@IOAPIC_LEVEL = common dso_local global i64 0, align 8
@IRQ_LEVEL = common dso_local global i32 0, align 4
@IRQ_MOVE_PCNTXT = common dso_local global i32 0, align 4
@ir_ioapic_chip = common dso_local global i32 0, align 4
@handle_fasteoi_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fasteoi\00", align 1
@handle_edge_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@ioapic_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*, i64)* @ioapic_register_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioapic_register_intr(i32 %0, %struct.irq_desc* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IOAPIC_AUTO, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @IO_APIC_irq_trigger(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @IOAPIC_LEVEL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @IRQ_LEVEL, align 4
  %20 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %21 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %31

24:                                               ; preds = %14
  %25 = load i32, i32* @IRQ_LEVEL, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %28 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @irq_remapped(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i32, i32* @IRQ_MOVE_PCNTXT, align 4
  %37 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @handle_fasteoi_irq, align 4
  %46 = call i32 @set_irq_chip_and_handler_name(i32 %44, i32* @ir_ioapic_chip, i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %51

47:                                               ; preds = %35
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @handle_edge_irq, align 4
  %50 = call i32 @set_irq_chip_and_handler_name(i32 %48, i32* @ir_ioapic_chip, i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %43
  br label %72

52:                                               ; preds = %31
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @IOAPIC_AUTO, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @IO_APIC_irq_trigger(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56, %52
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @IOAPIC_LEVEL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @handle_fasteoi_irq, align 4
  %67 = call i32 @set_irq_chip_and_handler_name(i32 %65, i32* @ioapic_chip, i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %72

68:                                               ; preds = %60
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @handle_edge_irq, align 4
  %71 = call i32 @set_irq_chip_and_handler_name(i32 %69, i32* @ioapic_chip, i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %51, %68, %64
  ret void
}

declare dso_local i64 @IO_APIC_irq_trigger(i32) #1

declare dso_local i64 @irq_remapped(i32) #1

declare dso_local i32 @set_irq_chip_and_handler_name(i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
