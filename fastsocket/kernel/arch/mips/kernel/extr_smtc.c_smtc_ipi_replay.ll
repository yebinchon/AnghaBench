; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smtc.c_smtc_ipi_replay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smtc.c_smtc_ipi_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smtc_ipi_q = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.smtc_ipi = type { i32 }

@IPIQ = common dso_local global %struct.smtc_ipi_q* null, align 8
@smtc_cpu_stats = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smtc_ipi_replay() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smtc_ipi_q*, align 8
  %3 = alloca %struct.smtc_ipi*, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %43, %0
  %7 = load %struct.smtc_ipi_q*, %struct.smtc_ipi_q** @IPIQ, align 8
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %7, i64 %9
  %11 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %6
  %15 = load %struct.smtc_ipi_q*, %struct.smtc_ipi_q** @IPIQ, align 8
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %15, i64 %17
  store %struct.smtc_ipi_q* %18, %struct.smtc_ipi_q** %2, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @local_irq_save(i64 %19)
  %21 = load %struct.smtc_ipi_q*, %struct.smtc_ipi_q** %2, align 8
  %22 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.smtc_ipi_q*, %struct.smtc_ipi_q** %2, align 8
  %25 = call %struct.smtc_ipi* @__smtc_ipi_dq(%struct.smtc_ipi_q* %24)
  store %struct.smtc_ipi* %25, %struct.smtc_ipi** %3, align 8
  %26 = load %struct.smtc_ipi_q*, %struct.smtc_ipi_q** %2, align 8
  %27 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @__raw_local_irq_restore(i64 %29)
  %31 = load %struct.smtc_ipi*, %struct.smtc_ipi** %3, align 8
  %32 = icmp ne %struct.smtc_ipi* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %14
  %34 = load %struct.smtc_ipi*, %struct.smtc_ipi** %3, align 8
  %35 = call i32 @self_ipi(%struct.smtc_ipi* %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smtc_cpu_stats, align 8
  %37 = load i32, i32* %1, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %33, %14
  br label %6

44:                                               ; preds = %6
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.smtc_ipi* @__smtc_ipi_dq(%struct.smtc_ipi_q*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__raw_local_irq_restore(i64) #1

declare dso_local i32 @self_ipi(%struct.smtc_ipi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
