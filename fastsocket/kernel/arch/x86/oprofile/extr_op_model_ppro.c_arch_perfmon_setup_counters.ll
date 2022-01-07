; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_op_model_ppro.c_arch_perfmon_setup_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_op_model_ppro.c_arch_perfmon_setup_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%union.cpuid10_eax = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@current_cpu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@num_counters = common dso_local global i8* null, align 8
@op_arch_perfmon_spec = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @arch_perfmon_setup_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arch_perfmon_setup_counters() #0 {
  %1 = alloca %union.cpuid10_eax, align 4
  %2 = call i32 @cpuid_eax(i32 10)
  %3 = bitcast %union.cpuid10_eax* %1 to i32*
  store i32 %2, i32* %3, align 4
  %4 = bitcast %union.cpuid10_eax* %1 to %struct.TYPE_4__*
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_cpu_data, i32 0, i32 0), align 4
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_cpu_data, i32 0, i32 1), align 4
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = bitcast %union.cpuid10_eax* %1 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 2, i32* %16, align 4
  %17 = bitcast %union.cpuid10_eax* %1 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 2, i32* %18, align 4
  %19 = bitcast %union.cpuid10_eax* %1 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32 40, i32* %20, align 4
  br label %21

21:                                               ; preds = %14, %11, %8, %0
  %22 = bitcast %union.cpuid10_eax* %1 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @num_counters, align 8
  %27 = load i8*, i8** @num_counters, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @op_arch_perfmon_spec, i32 0, i32 1), align 8
  %28 = load i8*, i8** @num_counters, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @op_arch_perfmon_spec, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @cpuid_eax(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
