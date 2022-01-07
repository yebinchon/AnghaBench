; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smtc.c_deferred_smtc_ipi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smtc.c_deferred_smtc_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smtc_ipi_q = type { i64, i32, i32* }
%struct.smtc_ipi = type { i64, i64 }

@IPIQ = common dso_local global %struct.smtc_ipi_q* null, align 8
@LINUX_SMP_IPI = common dso_local global i64 0, align 8
@SMP_RESCHEDULE_YOURSELF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deferred_smtc_ipi() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.smtc_ipi_q*, align 8
  %3 = alloca %struct.smtc_ipi*, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %53, %0
  %7 = load %struct.smtc_ipi_q*, %struct.smtc_ipi_q** @IPIQ, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %7, i64 %9
  %11 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %6
  %15 = load %struct.smtc_ipi_q*, %struct.smtc_ipi_q** @IPIQ, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %15, i64 %17
  store %struct.smtc_ipi_q* %18, %struct.smtc_ipi_q** %2, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @local_irq_save(i64 %19)
  %21 = load %struct.smtc_ipi_q*, %struct.smtc_ipi_q** %2, align 8
  %22 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.smtc_ipi_q*, %struct.smtc_ipi_q** %2, align 8
  %25 = call %struct.smtc_ipi* @__smtc_ipi_dq(%struct.smtc_ipi_q* %24)
  store %struct.smtc_ipi* %25, %struct.smtc_ipi** %3, align 8
  %26 = load %struct.smtc_ipi_q*, %struct.smtc_ipi_q** %2, align 8
  %27 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.smtc_ipi*, %struct.smtc_ipi** %3, align 8
  %30 = icmp ne %struct.smtc_ipi* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %14
  %32 = load %struct.smtc_ipi*, %struct.smtc_ipi** %3, align 8
  %33 = getelementptr inbounds %struct.smtc_ipi, %struct.smtc_ipi* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LINUX_SMP_IPI, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.smtc_ipi*, %struct.smtc_ipi** %3, align 8
  %39 = getelementptr inbounds %struct.smtc_ipi, %struct.smtc_ipi* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @SMP_RESCHEDULE_YOURSELF, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.smtc_ipi_q*, %struct.smtc_ipi_q** @IPIQ, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %45, i64 %47
  %49 = getelementptr inbounds %struct.smtc_ipi_q, %struct.smtc_ipi_q* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %37, %31
  %51 = load %struct.smtc_ipi*, %struct.smtc_ipi** %3, align 8
  %52 = call i32 @ipi_decode(%struct.smtc_ipi* %51)
  br label %53

53:                                               ; preds = %50, %14
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @__raw_local_irq_restore(i64 %54)
  br label %6

56:                                               ; preds = %6
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.smtc_ipi* @__smtc_ipi_dq(%struct.smtc_ipi_q*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ipi_decode(%struct.smtc_ipi*) #1

declare dso_local i32 @__raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
