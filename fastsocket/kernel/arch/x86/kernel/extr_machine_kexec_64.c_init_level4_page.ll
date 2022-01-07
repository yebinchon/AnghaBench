; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_64.c_init_level4_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_64.c_init_level4_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PTRS_PER_PGD = common dso_local global i64 0, align 8
@PGDIR_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@_KERNPG_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, i32*, i64, i64)* @init_level4_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_level4_page(%struct.kimage* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kimage*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32*, align 8
  store %struct.kimage* %0, %struct.kimage** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* @PAGE_MASK, align 8
  %14 = load i64, i64* %7, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @PTRS_PER_PGD, align 8
  %18 = load i64, i64* @PGDIR_SIZE, align 8
  %19 = mul i64 %17, %18
  %20 = add i64 %16, %19
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %51, %4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  br i1 %30, label %31, label %64

31:                                               ; preds = %29
  %32 = load %struct.kimage*, %struct.kimage** %5, align 8
  %33 = call %struct.page* @kimage_alloc_control_pages(%struct.kimage* %32, i32 0)
  store %struct.page* %33, %struct.page** %11, align 8
  %34 = load %struct.page*, %struct.page** %11, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %78

39:                                               ; preds = %31
  %40 = load %struct.page*, %struct.page** %11, align 8
  %41 = call i64 @page_address(%struct.page* %40)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %12, align 8
  %43 = load %struct.kimage*, %struct.kimage** %5, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @init_level3_page(%struct.kimage* %43, i32* %44, i64 %45, i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %78

51:                                               ; preds = %39
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %6, align 8
  %54 = ptrtoint i32* %52 to i32
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @__pa(i32* %55)
  %57 = load i32, i32* @_KERNPG_TABLE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @__pgd(i32 %58)
  %60 = call i32 @set_pgd(i32 %54, i32 %59)
  %61 = load i64, i64* @PGDIR_SIZE, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %7, align 8
  br label %21

64:                                               ; preds = %29
  br label %65

65:                                               ; preds = %69, %64
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %6, align 8
  %72 = ptrtoint i32* %70 to i32
  %73 = call i32 @pgd_clear(i32 %72)
  %74 = load i64, i64* @PGDIR_SIZE, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %7, align 8
  br label %65

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %50, %36
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local %struct.page* @kimage_alloc_control_pages(%struct.kimage*, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @init_level3_page(%struct.kimage*, i32*, i64, i64) #1

declare dso_local i32 @set_pgd(i32, i32) #1

declare dso_local i32 @__pgd(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @pgd_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
