; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_set_pte_rmapp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_set_pte_rmapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"kvm_set_pte_rmapp: spte %p %llx\0A\00", align 1
@shadow_trap_nonpresent_pte = common dso_local global i32 0, align 4
@PT64_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PT_WRITABLE_MASK = common dso_local global i32 0, align 4
@SPTE_HOST_WRITEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i64*, i64)* @kvm_set_pte_rmapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_set_pte_rmapp(%struct.kvm* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pte_huge(i32 %15)
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @pte_pfn(i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.kvm*, %struct.kvm** %4, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = call i32* @rmap_next(%struct.kvm* %21, i64* %22, i32* null)
  store i32* %23, i32** %8, align 8
  br label %24

24:                                               ; preds = %90, %3
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %91

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @is_shadow_present_pte(i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rmap_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %35, i32 %37)
  store i32 1, i32* %7, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @pte_write(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %27
  %44 = load %struct.kvm*, %struct.kvm** %4, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @rmap_remove(%struct.kvm* %44, i32* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @shadow_trap_nonpresent_pte, align 4
  %49 = call i32 @__set_spte(i32* %47, i32 %48)
  %50 = load %struct.kvm*, %struct.kvm** %4, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = call i32* @rmap_next(%struct.kvm* %50, i64* %51, i32* null)
  store i32* %52, i32** %8, align 8
  br label %90

53:                                               ; preds = %27
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PT64_BASE_ADDR_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  store i32 %58, i32* %9, align 4
  %59 = load i64, i64* %11, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @PT_WRITABLE_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @SPTE_HOST_WRITEABLE, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @is_writeble_pte(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %53
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @spte_to_pfn(i32 %79)
  %81 = call i32 @kvm_set_pfn_dirty(i32 %80)
  br label %82

82:                                               ; preds = %77, %53
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @__set_spte(i32* %83, i32 %84)
  %86 = load %struct.kvm*, %struct.kvm** %4, align 8
  %87 = load i64*, i64** %5, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = call i32* @rmap_next(%struct.kvm* %86, i64* %87, i32* %88)
  store i32* %89, i32** %8, align 8
  br label %90

90:                                               ; preds = %82, %43
  br label %24

91:                                               ; preds = %24
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.kvm*, %struct.kvm** %4, align 8
  %96 = call i32 @kvm_flush_remote_tlbs(%struct.kvm* %95)
  br label %97

97:                                               ; preds = %94, %91
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pte_huge(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32* @rmap_next(%struct.kvm*, i64*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_shadow_present_pte(i32) #1

declare dso_local i32 @rmap_printk(i8*, i32*, i32) #1

declare dso_local i64 @pte_write(i32) #1

declare dso_local i32 @rmap_remove(%struct.kvm*, i32*) #1

declare dso_local i32 @__set_spte(i32*, i32) #1

declare dso_local i64 @is_writeble_pte(i32) #1

declare dso_local i32 @kvm_set_pfn_dirty(i32) #1

declare dso_local i32 @spte_to_pfn(i32) #1

declare dso_local i32 @kvm_flush_remote_tlbs(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
