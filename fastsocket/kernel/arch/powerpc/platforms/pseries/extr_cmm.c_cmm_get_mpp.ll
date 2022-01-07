; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_get_mpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_get_mpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvcall_mpp_data = type { i64 }

@totalram_pages = common dso_local global i64 0, align 8
@loaned_pages = common dso_local global i64 0, align 8
@min_mem_mb = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@oom_freed_pages = common dso_local global i64 0, align 8
@loaned_pages_target = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [68 x i8] c"delta = %ld, loaned = %lu, target = %lu, oom = %lu, totalram = %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cmm_get_mpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmm_get_mpp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hvcall_mpp_data, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i64, i64* @totalram_pages, align 8
  %9 = load i64, i64* @loaned_pages, align 8
  %10 = add nsw i64 %8, %9
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* @min_mem_mb, align 4
  %12 = mul nsw i32 %11, 1024
  %13 = mul nsw i32 %12, 1024
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sdiv i32 %13, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = call i32 @h_get_mpp(%struct.hvcall_mpp_data* %2)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @H_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %70

22:                                               ; preds = %0
  %23 = getelementptr inbounds %struct.hvcall_mpp_data, %struct.hvcall_mpp_data* %2, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = call i64 @div_s64(i32 %25, i32 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @loaned_pages, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %22
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @oom_freed_pages, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* @oom_freed_pages, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %47

46:                                               ; preds = %38
  store i64 0, i64* %5, align 8
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = sub nsw i64 %48, %49
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %3, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %54, %47
  %59 = load i64, i64* %5, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i64 0, i64* %5, align 8
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i64, i64* %5, align 8
  store i64 %63, i64* @loaned_pages_target, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @loaned_pages, align 8
  %66 = load i64, i64* @loaned_pages_target, align 8
  %67 = load i64, i64* @oom_freed_pages, align 8
  %68 = load i64, i64* @totalram_pages, align 8
  %69 = call i32 @cmm_dbg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %64, i64 %65, i64 %66, i64 %67, i64 %68)
  br label %70

70:                                               ; preds = %62, %21
  ret void
}

declare dso_local i32 @h_get_mpp(%struct.hvcall_mpp_data*) #1

declare dso_local i64 @div_s64(i32, i32) #1

declare dso_local i32 @cmm_dbg(i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
