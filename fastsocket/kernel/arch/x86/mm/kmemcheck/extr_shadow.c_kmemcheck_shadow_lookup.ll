; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_shadow.c_kmemcheck_shadow_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/kmemcheck/extr_shadow.c_kmemcheck_shadow_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmemcheck_shadow_lookup(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.page*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @virt_addr_valid(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %34

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32* @kmemcheck_pte_lookup(i64 %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i8* null, i8** %2, align 8
  br label %34

16:                                               ; preds = %10
  %17 = load i64, i64* %3, align 8
  %18 = call %struct.page* @virt_to_page(i64 %17)
  store %struct.page* %18, %struct.page** %5, align 8
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i8* null, i8** %2, align 8
  br label %34

24:                                               ; preds = %16
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = and i64 %28, %31
  %33 = getelementptr i8, i8* %27, i64 %32
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %24, %23, %15, %9
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i32 @virt_addr_valid(i64) #1

declare dso_local i32* @kmemcheck_pte_lookup(i64) #1

declare dso_local %struct.page* @virt_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
