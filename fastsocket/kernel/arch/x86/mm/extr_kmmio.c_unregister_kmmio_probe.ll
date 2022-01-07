; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_kmmio.c_unregister_kmmio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_kmmio.c_unregister_kmmio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmmio_probe = type { i64, i64, i32 }
%struct.kmmio_fault_page = type { i32 }
%struct.kmmio_delayed_release = type { i32, %struct.kmmio_fault_page* }

@PAGE_MASK = common dso_local global i64 0, align 8
@kmmio_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@kmmio_count = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"kmmio: leaking kmmio_fault_page objects.\0A\00", align 1
@remove_kmmio_fault_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_kmmio_probe(%struct.kmmio_probe* %0) #0 {
  %2 = alloca %struct.kmmio_probe*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kmmio_fault_page*, align 8
  %7 = alloca %struct.kmmio_delayed_release*, align 8
  store %struct.kmmio_probe* %0, %struct.kmmio_probe** %2, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.kmmio_probe*, %struct.kmmio_probe** %2, align 8
  %9 = getelementptr inbounds %struct.kmmio_probe, %struct.kmmio_probe* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.kmmio_probe*, %struct.kmmio_probe** %2, align 8
  %12 = getelementptr inbounds %struct.kmmio_probe, %struct.kmmio_probe* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGE_MASK, align 8
  %15 = xor i64 %14, -1
  %16 = and i64 %13, %15
  %17 = add i64 %10, %16
  store i64 %17, i64* %5, align 8
  store %struct.kmmio_fault_page* null, %struct.kmmio_fault_page** %6, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @kmmio_lock, i64 %18)
  br label %20

20:                                               ; preds = %24, %1
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.kmmio_probe*, %struct.kmmio_probe** %2, align 8
  %26 = getelementptr inbounds %struct.kmmio_probe, %struct.kmmio_probe* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @release_kmmio_fault_page(i64 %29, %struct.kmmio_fault_page** %6)
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %20

34:                                               ; preds = %20
  %35 = load %struct.kmmio_probe*, %struct.kmmio_probe** %2, align 8
  %36 = getelementptr inbounds %struct.kmmio_probe, %struct.kmmio_probe* %35, i32 0, i32 2
  %37 = call i32 @list_del_rcu(i32* %36)
  %38 = load i32, i32* @kmmio_count, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @kmmio_count, align 4
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @kmmio_lock, i64 %40)
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.kmmio_delayed_release* @kmalloc(i32 16, i32 %42)
  store %struct.kmmio_delayed_release* %43, %struct.kmmio_delayed_release** %7, align 8
  %44 = load %struct.kmmio_delayed_release*, %struct.kmmio_delayed_release** %7, align 8
  %45 = icmp ne %struct.kmmio_delayed_release* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %34
  %47 = call i32 @pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %56

48:                                               ; preds = %34
  %49 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %6, align 8
  %50 = load %struct.kmmio_delayed_release*, %struct.kmmio_delayed_release** %7, align 8
  %51 = getelementptr inbounds %struct.kmmio_delayed_release, %struct.kmmio_delayed_release* %50, i32 0, i32 1
  store %struct.kmmio_fault_page* %49, %struct.kmmio_fault_page** %51, align 8
  %52 = load %struct.kmmio_delayed_release*, %struct.kmmio_delayed_release** %7, align 8
  %53 = getelementptr inbounds %struct.kmmio_delayed_release, %struct.kmmio_delayed_release* %52, i32 0, i32 0
  %54 = load i32, i32* @remove_kmmio_fault_pages, align 4
  %55 = call i32 @call_rcu(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %46
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @release_kmmio_fault_page(i64, %struct.kmmio_fault_page**) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.kmmio_delayed_release* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
