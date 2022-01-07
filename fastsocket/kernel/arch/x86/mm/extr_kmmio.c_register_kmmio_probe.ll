; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_kmmio.c_register_kmmio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_kmmio.c_register_kmmio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmmio_probe = type { i64, i64, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@kmmio_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@kmmio_count = common dso_local global i32 0, align 4
@kmmio_probes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"kmmio: Unable to set page fault.\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_kmmio_probe(%struct.kmmio_probe* %0) #0 {
  %2 = alloca %struct.kmmio_probe*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.kmmio_probe* %0, %struct.kmmio_probe** %2, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %7 = load %struct.kmmio_probe*, %struct.kmmio_probe** %2, align 8
  %8 = getelementptr inbounds %struct.kmmio_probe, %struct.kmmio_probe* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.kmmio_probe*, %struct.kmmio_probe** %2, align 8
  %11 = getelementptr inbounds %struct.kmmio_probe, %struct.kmmio_probe* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PAGE_MASK, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %12, %14
  %16 = add i64 %9, %15
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @kmmio_lock, i64 %17)
  %19 = load %struct.kmmio_probe*, %struct.kmmio_probe** %2, align 8
  %20 = getelementptr inbounds %struct.kmmio_probe, %struct.kmmio_probe* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @get_kmmio_probe(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %1
  %28 = load i32, i32* @kmmio_count, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @kmmio_count, align 4
  %30 = load %struct.kmmio_probe*, %struct.kmmio_probe** %2, align 8
  %31 = getelementptr inbounds %struct.kmmio_probe, %struct.kmmio_probe* %30, i32 0, i32 2
  %32 = call i32 @list_add_rcu(i32* %31, i32* @kmmio_probes)
  br label %33

33:                                               ; preds = %47, %27
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.kmmio_probe*, %struct.kmmio_probe** %2, align 8
  %39 = getelementptr inbounds %struct.kmmio_probe, %struct.kmmio_probe* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %40, %41
  %43 = call i64 @add_kmmio_fault_page(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %37
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %5, align 8
  br label %33

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* @kmmio_lock, i64 %53)
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @get_kmmio_probe(i64) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i64 @add_kmmio_fault_page(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
