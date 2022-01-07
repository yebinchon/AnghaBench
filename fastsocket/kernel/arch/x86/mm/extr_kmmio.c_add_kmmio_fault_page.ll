; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_kmmio.c_add_kmmio_fault_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_kmmio.c_add_kmmio_fault_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmmio_fault_page = type { i32, i64, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @add_kmmio_fault_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_kmmio_fault_page(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.kmmio_fault_page*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* @PAGE_MASK, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, %5
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call %struct.kmmio_fault_page* @get_kmmio_fault_page(i64 %8)
  store %struct.kmmio_fault_page* %9, %struct.kmmio_fault_page** %4, align 8
  %10 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %11 = icmp ne %struct.kmmio_fault_page* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %14 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %19 = call i64 @arm_kmmio_fault_page(%struct.kmmio_fault_page* %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %22 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  store i32 0, i32* %2, align 4
  br label %51

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.kmmio_fault_page* @kzalloc(i32 24, i32 %26)
  store %struct.kmmio_fault_page* %27, %struct.kmmio_fault_page** %4, align 8
  %28 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %29 = icmp ne %struct.kmmio_fault_page* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %51

31:                                               ; preds = %25
  %32 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %33 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %36 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %38 = call i64 @arm_kmmio_fault_page(%struct.kmmio_fault_page* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %42 = call i32 @kfree(%struct.kmmio_fault_page* %41)
  store i32 -1, i32* %2, align 4
  br label %51

43:                                               ; preds = %31
  %44 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %45 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %44, i32 0, i32 2
  %46 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %47 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @kmmio_page_list(i64 %48)
  %50 = call i32 @list_add_rcu(i32* %45, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %43, %40, %30, %20
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.kmmio_fault_page* @get_kmmio_fault_page(i64) #1

declare dso_local i64 @arm_kmmio_fault_page(%struct.kmmio_fault_page*) #1

declare dso_local %struct.kmmio_fault_page* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.kmmio_fault_page*) #1

declare dso_local i32 @list_add_rcu(i32*, i32) #1

declare dso_local i32 @kmmio_page_list(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
