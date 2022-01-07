; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_set_aliased_prot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_set_aliased_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @set_aliased_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_aliased_prot(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = call i32* @lookup_address(i64 %12, i32* %5)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @pte_pfn(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call %struct.page* @pfn_to_page(i64 %21)
  store %struct.page* %22, %struct.page** %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pfn_pte(i64 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @HYPERVISOR_update_va_mapping(i64 %27, i32 %28, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 (...) @BUG()
  br label %33

33:                                               ; preds = %31, %2
  %34 = load %struct.page*, %struct.page** %9, align 8
  %35 = call i32 @PageHighMem(%struct.page* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @PFN_PHYS(i64 %38)
  %40 = call i8* @__va(i32 %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = icmp ne i8* %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load i8*, i8** %10, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @HYPERVISOR_update_va_mapping(i64 %46, i32 %47, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 (...) @BUG()
  br label %52

52:                                               ; preds = %50, %44
  br label %53

53:                                               ; preds = %52, %37
  br label %56

54:                                               ; preds = %33
  %55 = call i32 (...) @kmap_flush_unused()
  br label %56

56:                                               ; preds = %54, %53
  ret void
}

declare dso_local i32* @lookup_address(i64, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

declare dso_local i64 @HYPERVISOR_update_va_mapping(i64, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i8* @__va(i32) #1

declare dso_local i32 @PFN_PHYS(i64) #1

declare dso_local i32 @kmap_flush_unused(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
