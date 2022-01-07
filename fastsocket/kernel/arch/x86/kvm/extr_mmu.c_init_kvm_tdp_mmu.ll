; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_init_kvm_tdp_mmu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_init_kvm_tdp_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (...)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_mmu }
%struct.kvm_mmu = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@nonpaging_new_cr3 = common dso_local global i32 0, align 4
@tdp_page_fault = common dso_local global i32 0, align 4
@nonpaging_free = common dso_local global i32 0, align 4
@nonpaging_prefetch_page = common dso_local global i32 0, align 4
@nonpaging_sync_page = common dso_local global i32 0, align 4
@nonpaging_invlpg = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@INVALID_PAGE = common dso_local global i32 0, align 4
@nonpaging_gva_to_gpa = common dso_local global i8* null, align 8
@PT64_ROOT_LEVEL = common dso_local global i8* null, align 8
@paging64_gva_to_gpa = common dso_local global i8* null, align 8
@PT32E_ROOT_LEVEL = common dso_local global i8* null, align 8
@PT32_ROOT_LEVEL = common dso_local global i8* null, align 8
@paging32_gva_to_gpa = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @init_kvm_tdp_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_kvm_tdp_mmu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store %struct.kvm_mmu* %6, %struct.kvm_mmu** %3, align 8
  %7 = load i32, i32* @nonpaging_new_cr3, align 4
  %8 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @tdp_page_fault, align 4
  %11 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @nonpaging_free, align 4
  %14 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @nonpaging_prefetch_page, align 4
  %17 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @nonpaging_sync_page, align 4
  %20 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @nonpaging_invlpg, align 4
  %23 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (...)*, i32 (...)** %26, align 8
  %28 = call i32 (...) %27()
  %29 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @INVALID_PAGE, align 4
  %32 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %35 = call i32 @is_paging(%struct.kvm_vcpu* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %1
  %38 = load i8*, i8** @nonpaging_gva_to_gpa, align 8
  %39 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %40 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %42 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %41, i32 0, i32 0
  store i8* null, i8** %42, align 8
  br label %83

43:                                               ; preds = %1
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %45 = call i64 @is_long_mode(%struct.kvm_vcpu* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %49 = load i8*, i8** @PT64_ROOT_LEVEL, align 8
  %50 = call i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu* %48, i8* %49)
  %51 = load i8*, i8** @paging64_gva_to_gpa, align 8
  %52 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %53 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @PT64_ROOT_LEVEL, align 8
  %55 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %82

57:                                               ; preds = %43
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %59 = call i64 @is_pae(%struct.kvm_vcpu* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %63 = load i8*, i8** @PT32E_ROOT_LEVEL, align 8
  %64 = call i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu* %62, i8* %63)
  %65 = load i8*, i8** @paging64_gva_to_gpa, align 8
  %66 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %67 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @PT32E_ROOT_LEVEL, align 8
  %69 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %70 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %81

71:                                               ; preds = %57
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %73 = load i8*, i8** @PT32_ROOT_LEVEL, align 8
  %74 = call i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu* %72, i8* %73)
  %75 = load i8*, i8** @paging32_gva_to_gpa, align 8
  %76 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %77 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @PT32_ROOT_LEVEL, align 8
  %79 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %80 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %71, %61
  br label %82

82:                                               ; preds = %81, %47
  br label %83

83:                                               ; preds = %82, %37
  ret i32 0
}

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu*, i8*) #1

declare dso_local i64 @is_pae(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
