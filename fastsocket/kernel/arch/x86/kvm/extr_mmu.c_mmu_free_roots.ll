; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_free_roots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_free_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.kvm_mmu_page = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@PT64_ROOT_LEVEL = common dso_local global i64 0, align 8
@INVALID_PAGE = common dso_local global i8* null, align 8
@PT64_BASE_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @mmu_free_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_free_roots(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_mmu_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @VALID_PAGE(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %137

15:                                               ; preds = %1
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PT64_ROOT_LEVEL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %15
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.kvm_mmu_page* @page_header(i32 %34)
  store %struct.kvm_mmu_page* %35, %struct.kvm_mmu_page** %4, align 8
  %36 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %41 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %28
  %45 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %55 = call i32 @kvm_mmu_zap_page(%struct.TYPE_8__* %53, %struct.kvm_mmu_page* %54)
  br label %56

56:                                               ; preds = %50, %44, %28
  %57 = load i8*, i8** @INVALID_PAGE, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  br label %137

68:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %122, %68
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %125

72:                                               ; preds = %69
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %72
  %85 = load i32, i32* @PT64_BASE_ADDR_MASK, align 4
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call %struct.kvm_mmu_page* @page_header(i32 %88)
  store %struct.kvm_mmu_page* %89, %struct.kvm_mmu_page** %4, align 8
  %90 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %91 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %95 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %84
  %99 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %100 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %109 = call i32 @kvm_mmu_zap_page(%struct.TYPE_8__* %107, %struct.kvm_mmu_page* %108)
  br label %110

110:                                              ; preds = %104, %98, %84
  br label %111

111:                                              ; preds = %110, %72
  %112 = load i8*, i8** @INVALID_PAGE, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %115 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %113, i32* %121, align 4
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %69

125:                                              ; preds = %69
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %126, i32 0, i32 1
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load i8*, i8** @INVALID_PAGE, align 8
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 8
  br label %137

137:                                              ; preds = %125, %56, %14
  ret void
}

declare dso_local i32 @VALID_PAGE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @kvm_mmu_zap_page(%struct.TYPE_8__*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
