; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_smp.c_native_smp_send_reschedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_smp.c_native_smp_send_reschedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@apic = common dso_local global %struct.TYPE_2__* null, align 8
@RESCHEDULE_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @native_smp_send_reschedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_smp_send_reschedule(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @cpu_is_offline(i32 %3)
  %5 = call i64 @unlikely(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @WARN_ON(i32 1)
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @cpumask_of(i32 %13)
  %15 = load i32, i32* @RESCHEDULE_VECTOR, align 4
  %16 = call i32 %12(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %9, %7
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_is_offline(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpumask_of(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
