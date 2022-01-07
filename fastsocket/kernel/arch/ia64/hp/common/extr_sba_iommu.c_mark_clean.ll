; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/common/extr_sba_iommu.c_mark_clean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/common/extr_sba_iommu.c_mark_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PG_arch_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @mark_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_clean(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = call i64 @PAGE_ALIGN(i64 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %21, %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = add i64 %16, %17
  %19 = load i64, i64* %6, align 8
  %20 = icmp ule i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call %struct.page* @virt_to_page(i8* %23)
  store %struct.page* %24, %struct.page** %7, align 8
  %25 = load i32, i32* @PG_arch_1, align 4
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 0
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %15

32:                                               ; preds = %15
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
