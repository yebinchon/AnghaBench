; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_guess_page_from_pte_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_guess_page_from_pte_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@PT64_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i32*, i32)* @mmu_guess_page_from_pte_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_guess_page_from_pte_write(%struct.kvm_vcpu* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %116

19:                                               ; preds = %15, %4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = call i64 @is_pae(%struct.kvm_vcpu* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = srem i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, -8
  %36 = call i32 @kvm_read_guest(%struct.TYPE_7__* %33, i32 %35, i32* %11, i32 8)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %116

40:                                               ; preds = %30
  %41 = bitcast i32* %11 to i8*
  %42 = load i32, i32* %6, align 4
  %43 = srem i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %41, i64 %44
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @memcpy(i8* %45, i32* %46, i32 4)
  br label %60

48:                                               ; preds = %26, %23
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = srem i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = bitcast i32* %11 to i8*
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @memcpy(i8* %56, i32* %57, i32 8)
  br label %59

59:                                               ; preds = %55, %51, %48
  br label %60

60:                                               ; preds = %59, %40
  br label %73

61:                                               ; preds = %19
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = srem i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = bitcast i32* %11 to i8*
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @memcpy(i8* %69, i32* %70, i32 4)
  br label %72

72:                                               ; preds = %68, %64, %61
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @is_present_gpte(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %116

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @PT64_BASE_ADDR_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @PAGE_SHIFT, align 4
  %83 = ashr i32 %81, %82
  store i32 %83, i32* %9, align 4
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %90 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  store i32 %88, i32* %92, align 8
  %93 = call i32 (...) @smp_rmb()
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %95 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @gfn_to_pfn(%struct.TYPE_7__* %96, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i64 @is_error_pfn(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %78
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @kvm_release_pfn_clean(i32 %103)
  br label %116

105:                                              ; preds = %78
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %108 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %113 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %105, %102, %77, %39, %18
  ret void
}

declare dso_local i64 @is_pae(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_guest(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @is_present_gpte(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @gfn_to_pfn(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @is_error_pfn(i32) #1

declare dso_local i32 @kvm_release_pfn_clean(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
