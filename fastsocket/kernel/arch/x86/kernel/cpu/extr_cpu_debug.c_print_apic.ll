; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_print_apic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_cpu_debug.c_print_apic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"\0A MSR\09:\0A\00", align 1
@APIC_ARBPRI = common dso_local global i32 0, align 4
@APIC_DFR = common dso_local global i32 0, align 4
@APIC_ECTRL = common dso_local global i32 0, align 4
@APIC_EFEAT = common dso_local global i32 0, align 4
@APIC_ESR = common dso_local global i32 0, align 4
@APIC_ICR = common dso_local global i32 0, align 4
@APIC_ICR2 = common dso_local global i32 0, align 4
@APIC_ID = common dso_local global i32 0, align 4
@APIC_ISR = common dso_local global i32 0, align 4
@APIC_LDR = common dso_local global i32 0, align 4
@APIC_LVR = common dso_local global i32 0, align 4
@APIC_LVT0 = common dso_local global i32 0, align 4
@APIC_LVT1 = common dso_local global i32 0, align 4
@APIC_LVTERR = common dso_local global i32 0, align 4
@APIC_LVTPC = common dso_local global i32 0, align 4
@APIC_LVTT = common dso_local global i32 0, align 4
@APIC_LVTTHMR = common dso_local global i32 0, align 4
@APIC_PROCPRI = common dso_local global i32 0, align 4
@APIC_SPIV = common dso_local global i32 0, align 4
@APIC_TASKPRI = common dso_local global i32 0, align 4
@APIC_TDCR = common dso_local global i32 0, align 4
@APIC_TMCCT = common dso_local global i32 0, align 4
@APIC_TMICT = common dso_local global i32 0, align 4
@X86_FEATURE_EXTAPIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_apic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_apic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.seq_file*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.seq_file*
  store %struct.seq_file* %5, %struct.seq_file** %3, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
