; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/oprofile/extr_op_model_avr32.c_avr32_perf_counter_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/oprofile/extr_op_model_avr32.c_avr32_perf_counter_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avr32_perf_counter = type { i32, i32, i64 }
%struct.pt_regs = type { i32 }

@AVR32_PERFCTR_IRQ_GROUP = common dso_local global i32 0, align 4
@AVR32_PERFCTR_IRQ_LINE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PCCR = common dso_local global i32 0, align 4
@PCCNT = common dso_local global i32 0, align 4
@PCNT0 = common dso_local global i32 0, align 4
@PCNT1 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @avr32_perf_counter_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avr32_perf_counter_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.avr32_perf_counter*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.avr32_perf_counter*
  store %struct.avr32_perf_counter* %10, %struct.avr32_perf_counter** %6, align 8
  %11 = load i32, i32* @AVR32_PERFCTR_IRQ_GROUP, align 4
  %12 = call i32 @intc_get_pending(i32 %11)
  %13 = load i32, i32* @AVR32_PERFCTR_IRQ_LINE, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %101

23:                                               ; preds = %2
  %24 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %24, %struct.pt_regs** %7, align 8
  %25 = load i32, i32* @PCCR, align 4
  %26 = call i32 @sysreg_read(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @PCCR, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @sysreg_write(i32 %27, i32 %28)
  %30 = load %struct.avr32_perf_counter*, %struct.avr32_perf_counter** %6, align 8
  %31 = getelementptr inbounds %struct.avr32_perf_counter, %struct.avr32_perf_counter* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.avr32_perf_counter*, %struct.avr32_perf_counter** %6, align 8
  %37 = getelementptr inbounds %struct.avr32_perf_counter, %struct.avr32_perf_counter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i32, i32* @PCCNT, align 4
  %43 = load %struct.avr32_perf_counter*, %struct.avr32_perf_counter** %6, align 8
  %44 = getelementptr inbounds %struct.avr32_perf_counter, %struct.avr32_perf_counter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i32 @sysreg_write(i32 %42, i32 %46)
  %48 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %49 = load i32, i32* @PCCNT, align 4
  %50 = call i32 @oprofile_add_sample(%struct.pt_regs* %48, i32 %49)
  br label %51

51:                                               ; preds = %41, %34, %23
  %52 = load %struct.avr32_perf_counter*, %struct.avr32_perf_counter** %6, align 8
  %53 = getelementptr inbounds %struct.avr32_perf_counter, %struct.avr32_perf_counter* %52, i32 1
  store %struct.avr32_perf_counter* %53, %struct.avr32_perf_counter** %6, align 8
  %54 = load %struct.avr32_perf_counter*, %struct.avr32_perf_counter** %6, align 8
  %55 = getelementptr inbounds %struct.avr32_perf_counter, %struct.avr32_perf_counter* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.avr32_perf_counter*, %struct.avr32_perf_counter** %6, align 8
  %61 = getelementptr inbounds %struct.avr32_perf_counter, %struct.avr32_perf_counter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %58
  %66 = load i32, i32* @PCNT0, align 4
  %67 = load %struct.avr32_perf_counter*, %struct.avr32_perf_counter** %6, align 8
  %68 = getelementptr inbounds %struct.avr32_perf_counter, %struct.avr32_perf_counter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 @sysreg_write(i32 %66, i32 %70)
  %72 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %73 = load i32, i32* @PCNT0, align 4
  %74 = call i32 @oprofile_add_sample(%struct.pt_regs* %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %58, %51
  %76 = load %struct.avr32_perf_counter*, %struct.avr32_perf_counter** %6, align 8
  %77 = getelementptr inbounds %struct.avr32_perf_counter, %struct.avr32_perf_counter* %76, i32 1
  store %struct.avr32_perf_counter* %77, %struct.avr32_perf_counter** %6, align 8
  %78 = load %struct.avr32_perf_counter*, %struct.avr32_perf_counter** %6, align 8
  %79 = getelementptr inbounds %struct.avr32_perf_counter, %struct.avr32_perf_counter* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.avr32_perf_counter*, %struct.avr32_perf_counter** %6, align 8
  %85 = getelementptr inbounds %struct.avr32_perf_counter, %struct.avr32_perf_counter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = load i32, i32* @PCNT1, align 4
  %91 = load %struct.avr32_perf_counter*, %struct.avr32_perf_counter** %6, align 8
  %92 = getelementptr inbounds %struct.avr32_perf_counter, %struct.avr32_perf_counter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 0, %93
  %95 = call i32 @sysreg_write(i32 %90, i32 %94)
  %96 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %97 = load i32, i32* @PCNT1, align 4
  %98 = call i32 @oprofile_add_sample(%struct.pt_regs* %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %82, %75
  %100 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %21
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @intc_get_pending(i32) #1

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @sysreg_read(i32) #1

declare dso_local i32 @sysreg_write(i32, i32) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
