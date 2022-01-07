; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/oprofile/extr_op_model_avr32.c_avr32_perf_counter_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/oprofile/extr_op_model_avr32.c_avr32_perf_counter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"avr32_perf_counter_start\0A\00", align 1
@PCCR = common dso_local global i32 0, align 4
@PCCR_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @avr32_perf_counter_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avr32_perf_counter_start() #0 {
  %1 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @PCCR, align 4
  %3 = load i32, i32* @PCCR, align 4
  %4 = call i32 @sysreg_read(i32 %3)
  %5 = load i32, i32* @PCCR_E, align 4
  %6 = call i32 @SYSREG_BIT(i32 %5)
  %7 = or i32 %4, %6
  %8 = call i32 @sysreg_write(i32 %2, i32 %7)
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @sysreg_write(i32, i32) #1

declare dso_local i32 @sysreg_read(i32) #1

declare dso_local i32 @SYSREG_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
