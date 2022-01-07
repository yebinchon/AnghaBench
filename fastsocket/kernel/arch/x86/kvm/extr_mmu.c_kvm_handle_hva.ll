; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_handle_hva.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_handle_hva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memslots = type { i32, %struct.kvm_memory_slot* }
%struct.kvm_memory_slot = type { i64, i64, i64*, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@KVM_NR_PAGE_SIZES = common dso_local global i32 0, align 4
@PT_DIRECTORY_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i64, i64, i32 (%struct.kvm*, i64*, i64)*)* @kvm_handle_hva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_handle_hva(%struct.kvm* %0, i64 %1, i64 %2, i32 (%struct.kvm*, i64*, i64)* %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (%struct.kvm*, i64*, i64)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm_memslots*, align 8
  %13 = alloca %struct.kvm_memory_slot*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 (%struct.kvm*, i64*, i64)* %3, i32 (%struct.kvm*, i64*, i64)** %8, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.kvm*, %struct.kvm** %5, align 8
  %20 = getelementptr inbounds %struct.kvm, %struct.kvm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.kvm_memslots* @rcu_dereference(i32 %21)
  store %struct.kvm_memslots* %22, %struct.kvm_memslots** %12, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %117, %4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.kvm_memslots*, %struct.kvm_memslots** %12, align 8
  %26 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %120

29:                                               ; preds = %23
  %30 = load %struct.kvm_memslots*, %struct.kvm_memslots** %12, align 8
  %31 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %30, i32 0, i32 1
  %32 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %32, i64 %34
  store %struct.kvm_memory_slot* %35, %struct.kvm_memory_slot** %13, align 8
  %36 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %37 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %41 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = add i64 %39, %44
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp uge i64 %46, %47
  br i1 %48, label %49, label %116

49:                                               ; preds = %29
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %116

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %14, align 8
  %56 = sub i64 %54, %55
  %57 = load i64, i64* @PAGE_SHIFT, align 8
  %58 = lshr i64 %56, %57
  store i64 %58, i64* %16, align 8
  %59 = load i32 (%struct.kvm*, i64*, i64)*, i32 (%struct.kvm*, i64*, i64)** %8, align 8
  %60 = load %struct.kvm*, %struct.kvm** %5, align 8
  %61 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %62 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %16, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %7, align 8
  %67 = call i32 %59(%struct.kvm* %60, i64* %65, i64 %66)
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %112, %53
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @KVM_NR_PAGE_SIZES, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %115

75:                                               ; preds = %70
  %76 = load i64, i64* @PT_DIRECTORY_LEVEL, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i32 @KVM_PAGES_PER_HPAGE(i64 %79)
  store i32 %80, i32* %18, align 4
  %81 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %82 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %16, align 8
  %85 = add i64 %83, %84
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = udiv i64 %85, %87
  %89 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %90 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = udiv i64 %91, %93
  %95 = sub i64 %88, %94
  store i64 %95, i64* %17, align 8
  %96 = load i32 (%struct.kvm*, i64*, i64)*, i32 (%struct.kvm*, i64*, i64)** %8, align 8
  %97 = load %struct.kvm*, %struct.kvm** %5, align 8
  %98 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %13, align 8
  %99 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %98, i32 0, i32 4
  %100 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %100, i64 %102
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i64, i64* %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %7, align 8
  %109 = call i32 %96(%struct.kvm* %97, i64* %107, i64 %108)
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %75
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %70

115:                                              ; preds = %70
  br label %116

116:                                              ; preds = %115, %49, %29
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %23

120:                                              ; preds = %23
  %121 = load i32, i32* %11, align 4
  ret i32 %121
}

declare dso_local %struct.kvm_memslots* @rcu_dereference(i32) #1

declare dso_local i32 @KVM_PAGES_PER_HPAGE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
