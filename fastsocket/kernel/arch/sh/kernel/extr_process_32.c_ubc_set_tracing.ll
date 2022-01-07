; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_process_32.c_ubc_set_tracing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_process_32.c_ubc_set_tracing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@UBC_BARA = common dso_local global i32 0, align 4
@UBC_BAMRA = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CPU_SH7729 = common dso_local global i64 0, align 8
@CPU_SH7710 = common dso_local global i64 0, align 8
@CPU_SH7712 = common dso_local global i64 0, align 8
@CPU_SH7203 = common dso_local global i64 0, align 8
@BBR_INST = common dso_local global i64 0, align 8
@BBR_READ = common dso_local global i64 0, align 8
@BBR_CPU = common dso_local global i64 0, align 8
@UBC_BBRA = common dso_local global i32 0, align 4
@BRCR_PCBA = common dso_local global i64 0, align 8
@BRCR_PCTE = common dso_local global i64 0, align 8
@UBC_BRCR = common dso_local global i32 0, align 4
@UBC_BASRA = common dso_local global i32 0, align 4
@UBC_CAMR0 = common dso_local global i32 0, align 4
@UBC_CAR0 = common dso_local global i32 0, align 4
@UBC_CBCR = common dso_local global i32 0, align 4
@UBC_CBR0 = common dso_local global i32 0, align 4
@UBC_CBR_AIE = common dso_local global i64 0, align 8
@UBC_CBR_CE = common dso_local global i64 0, align 8
@UBC_CBR_ID_INST = common dso_local global i64 0, align 8
@UBC_CBR_RW_READ = common dso_local global i64 0, align 8
@UBC_CRR0 = common dso_local global i32 0, align 4
@UBC_CRR_BIE = common dso_local global i64 0, align 8
@UBC_CRR_PCB = common dso_local global i64 0, align 8
@UBC_CRR_RES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @ubc_set_tracing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubc_set_tracing(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i32, i32* @UBC_BARA, align 4
  %7 = call i32 @ctrl_outl(i64 %5, i32 %6)
  %8 = load i32, i32* @UBC_BAMRA, align 4
  %9 = call i32 @ctrl_outl(i64 0, i32 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 8
  %11 = load i64, i64* @CPU_SH7729, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 8
  %15 = load i64, i64* @CPU_SH7710, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 8
  %19 = load i64, i64* @CPU_SH7712, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 8
  %23 = load i64, i64* @CPU_SH7203, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21, %17, %13, %2
  %26 = load i64, i64* @BBR_INST, align 8
  %27 = load i64, i64* @BBR_READ, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* @BBR_CPU, align 8
  %30 = or i64 %28, %29
  %31 = load i32, i32* @UBC_BBRA, align 4
  %32 = call i32 @ctrl_outw(i64 %30, i32 %31)
  %33 = load i64, i64* @BRCR_PCBA, align 8
  %34 = load i64, i64* @BRCR_PCTE, align 8
  %35 = or i64 %33, %34
  %36 = load i32, i32* @UBC_BRCR, align 4
  %37 = call i32 @ctrl_outl(i64 %35, i32 %36)
  br label %47

38:                                               ; preds = %21
  %39 = load i64, i64* @BBR_INST, align 8
  %40 = load i64, i64* @BBR_READ, align 8
  %41 = or i64 %39, %40
  %42 = load i32, i32* @UBC_BBRA, align 4
  %43 = call i32 @ctrl_outw(i64 %41, i32 %42)
  %44 = load i64, i64* @BRCR_PCBA, align 8
  %45 = load i32, i32* @UBC_BRCR, align 4
  %46 = call i32 @ctrl_outw(i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %25
  ret void
}

declare dso_local i32 @ctrl_outl(i64, i32) #1

declare dso_local i32 @ctrl_outw(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
