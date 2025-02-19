; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_kmmio.c_release_kmmio_fault_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_kmmio.c_release_kmmio_fault_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmmio_fault_page = type { i64, %struct.kmmio_fault_page* }

@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.kmmio_fault_page**)* @release_kmmio_fault_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_kmmio_fault_page(i64 %0, %struct.kmmio_fault_page** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kmmio_fault_page**, align 8
  %5 = alloca %struct.kmmio_fault_page*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.kmmio_fault_page** %1, %struct.kmmio_fault_page*** %4, align 8
  %6 = load i64, i64* @PAGE_MASK, align 8
  %7 = load i64, i64* %3, align 8
  %8 = and i64 %7, %6
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call %struct.kmmio_fault_page* @get_kmmio_fault_page(i64 %9)
  store %struct.kmmio_fault_page* %10, %struct.kmmio_fault_page** %5, align 8
  %11 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %5, align 8
  %12 = icmp ne %struct.kmmio_fault_page* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %5, align 8
  %16 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %5, align 8
  %20 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %5, align 8
  %26 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %14
  %30 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %5, align 8
  %31 = call i32 @disarm_kmmio_fault_page(%struct.kmmio_fault_page* %30)
  %32 = load %struct.kmmio_fault_page**, %struct.kmmio_fault_page*** %4, align 8
  %33 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %32, align 8
  %34 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %5, align 8
  %35 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %34, i32 0, i32 1
  store %struct.kmmio_fault_page* %33, %struct.kmmio_fault_page** %35, align 8
  %36 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %5, align 8
  %37 = load %struct.kmmio_fault_page**, %struct.kmmio_fault_page*** %4, align 8
  store %struct.kmmio_fault_page* %36, %struct.kmmio_fault_page** %37, align 8
  br label %38

38:                                               ; preds = %13, %29, %14
  ret void
}

declare dso_local %struct.kmmio_fault_page* @get_kmmio_fault_page(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @disarm_kmmio_fault_page(%struct.kmmio_fault_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
