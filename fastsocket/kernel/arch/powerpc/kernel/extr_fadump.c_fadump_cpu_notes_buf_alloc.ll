; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_fadump.c_fadump_cpu_notes_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_fadump.c_fadump_cpu_notes_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @fadump_cpu_notes_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fadump_cpu_notes_buf_alloc(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @get_order(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @__GFP_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @__get_free_pages(i32 %13, i64 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %41

20:                                               ; preds = %1
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 1, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call %struct.page* @virt_to_page(i8* %25)
  store %struct.page* %26, %struct.page** %5, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %36, %20
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %32, i64 %33
  %35 = call i32 @SetPageReserved(%struct.page* %34)
  br label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %27

39:                                               ; preds = %27
  %40 = load i8*, i8** %4, align 8
  store i8* %40, i8** %2, align 8
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i8*, i8** %2, align 8
  ret i8* %42
}

declare dso_local i64 @get_order(i64) #1

declare dso_local i64 @__get_free_pages(i32, i64) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @SetPageReserved(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
