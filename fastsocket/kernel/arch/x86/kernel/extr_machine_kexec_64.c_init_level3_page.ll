; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_64.c_init_level3_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_64.c_init_level3_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PGDIR_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@_KERNPG_TABLE = common dso_local global i32 0, align 4
@PUD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, i32*, i64, i64)* @init_level3_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_level3_page(%struct.kimage* %0, i32* %1, i64 %2, i64 %3) #0 {
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
  %17 = load i64, i64* @PGDIR_SIZE, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %9, align 8
  br label %19

19:                                               ; preds = %37, %4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %56

29:                                               ; preds = %27
  %30 = load %struct.kimage*, %struct.kimage** %5, align 8
  %31 = call %struct.page* @kimage_alloc_control_pages(%struct.kimage* %30, i32 0)
  store %struct.page* %31, %struct.page** %11, align 8
  %32 = load %struct.page*, %struct.page** %11, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %10, align 4
  br label %70

37:                                               ; preds = %29
  %38 = load %struct.page*, %struct.page** %11, align 8
  %39 = call i64 @page_address(%struct.page* %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @init_level2_page(i32* %41, i64 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %6, align 8
  %46 = ptrtoint i32* %44 to i32
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @__pa(i32* %47)
  %49 = load i32, i32* @_KERNPG_TABLE, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @__pud(i32 %50)
  %52 = call i32 @set_pud(i32 %46, i32 %51)
  %53 = load i64, i64* @PUD_SIZE, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %7, align 8
  br label %19

56:                                               ; preds = %27
  br label %57

57:                                               ; preds = %61, %56
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  %64 = ptrtoint i32* %62 to i32
  %65 = call i32 @pud_clear(i32 %64)
  %66 = load i64, i64* @PUD_SIZE, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %7, align 8
  br label %57

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %34
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

declare dso_local %struct.page* @kimage_alloc_control_pages(%struct.kimage*, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @init_level2_page(i32*, i64) #1

declare dso_local i32 @set_pud(i32, i32) #1

declare dso_local i32 @__pud(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @pud_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
