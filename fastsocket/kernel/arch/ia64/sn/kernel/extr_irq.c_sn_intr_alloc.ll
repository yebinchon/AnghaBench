; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_intr_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_intr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_irq_info = type { i32 }
%struct.ia64_sal_retval = type { i64, i64 }

@SN_SAL_IOIF_INTERRUPT = common dso_local global i64 0, align 8
@SAL_INTR_ALLOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sn_intr_alloc(i64 %0, i32 %1, %struct.sn_irq_info* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sn_irq_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ia64_sal_retval, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sn_irq_info* %2, %struct.sn_irq_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %13, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* @SN_SAL_IOIF_INTERRUPT, align 8
  %17 = load i64, i64* @SAL_INTR_ALLOC, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.sn_irq_info*, %struct.sn_irq_info** %9, align 8
  %22 = call i32 @__pa(%struct.sn_irq_info* %21)
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = bitcast %struct.ia64_sal_retval* %13 to { i64, i64 }*
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @SAL_CALL_NOLOCK(i64 %30, i64 %32, i64 %16, i64 %17, i64 %18, i64 %20, i32 %22, i64 %24, i64 %25, i64 %27)
  %34 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %13, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  ret i64 %35
}

declare dso_local i32 @SAL_CALL_NOLOCK(i64, i64, i64, i64, i64, i64, i32, i64, i64, i64) #1

declare dso_local i32 @__pa(%struct.sn_irq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
