; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perfctr-watchdog.c_disable_lapic_nmi_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perfctr-watchdog.c_disable_lapic_nmi_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@nmi_watchdog = common dso_local global i64 0, align 8
@NMI_LOCAL_APIC = common dso_local global i64 0, align 8
@nmi_active = common dso_local global i32 0, align 4
@stop_apic_nmi_watchdog = common dso_local global i32 0, align 4
@wd_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disable_lapic_nmi_watchdog() #0 {
  %1 = load i64, i64* @nmi_watchdog, align 8
  %2 = load i64, i64* @NMI_LOCAL_APIC, align 8
  %3 = icmp ne i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @BUG_ON(i32 %4)
  %6 = call i64 @atomic_read(i32* @nmi_active)
  %7 = icmp sle i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %24

9:                                                ; preds = %0
  %10 = load i32, i32* @stop_apic_nmi_watchdog, align 4
  %11 = call i32 @on_each_cpu(i32 %10, i32* null, i32 1)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd_ops, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd_ops, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = call i32 (...) %17()
  br label %19

19:                                               ; preds = %14, %9
  %20 = call i64 @atomic_read(i32* @nmi_active)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  br label %24

24:                                               ; preds = %19, %8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
