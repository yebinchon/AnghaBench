; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_xen_load_gdt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_enlighten.c_xen_load_gdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_ptr = type { i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.desc_ptr*)* @xen_load_gdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_load_gdt(%struct.desc_ptr* %0) #0 {
  %2 = alloca %struct.desc_ptr*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.desc_ptr* %0, %struct.desc_ptr** %2, align 8
  %14 = load %struct.desc_ptr*, %struct.desc_ptr** %2, align 8
  %15 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  %17 = load %struct.desc_ptr*, %struct.desc_ptr** %2, align 8
  %18 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = add i32 %21, %22
  %24 = sub i32 %23, 1
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = udiv i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %6, align 8
  %30 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp ugt i32 %31, 65536
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = call i32 @BUG_ON(i64 %34)
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @PAGE_MASK, align 8
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  %40 = call i32 @BUG_ON(i64 %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %75, %1
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.desc_ptr*, %struct.desc_ptr** %2, align 8
  %44 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = icmp ult i64 %42, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %41
  %51 = load i64, i64* %3, align 8
  %52 = call i32* @lookup_address(i64 %51, i32* %9)
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = icmp eq i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = call i32 @BUG_ON(i64 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @pte_pfn(i32 %59)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @pfn_to_mfn(i64 %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @PFN_PHYS(i64 %63)
  %65 = call i8* @__va(i32 %64)
  store i8* %65, i8** %13, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %30, i64 %68
  store i64 %66, i64* %69, align 8
  %70 = load i64, i64* %3, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @make_lowmem_page_readonly(i8* %71)
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @make_lowmem_page_readonly(i8* %73)
  br label %75

75:                                               ; preds = %50
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = zext i32 %76 to i64
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %3, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %41

82:                                               ; preds = %41
  %83 = load i32, i32* %4, align 4
  %84 = zext i32 %83 to i64
  %85 = udiv i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i64 @HYPERVISOR_set_gdt(i64* %30, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 (...) @BUG()
  br label %91

91:                                               ; preds = %89, %82
  %92 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %92)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i64) #2

declare dso_local i32* @lookup_address(i64, i32*) #2

declare dso_local i64 @pte_pfn(i32) #2

declare dso_local i64 @pfn_to_mfn(i64) #2

declare dso_local i8* @__va(i32) #2

declare dso_local i32 @PFN_PHYS(i64) #2

declare dso_local i32 @make_lowmem_page_readonly(i8*) #2

declare dso_local i64 @HYPERVISOR_set_gdt(i64*, i32) #2

declare dso_local i32 @BUG(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
