; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_pages_clear_parents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_pages_clear_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_page_path = type { i32*, %struct.kvm_mmu_page** }
%struct.kvm_mmu_page = type { i32, i64 }

@PT64_ROOT_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_page_path*)* @mmu_pages_clear_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_pages_clear_parents(%struct.mmu_page_path* %0) #0 {
  %2 = alloca %struct.mmu_page_path*, align 8
  %3 = alloca %struct.kvm_mmu_page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmu_page_path* %0, %struct.mmu_page_path** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %54, %1
  %7 = load %struct.mmu_page_path*, %struct.mmu_page_path** %2, align 8
  %8 = getelementptr inbounds %struct.mmu_page_path, %struct.mmu_page_path* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mmu_page_path*, %struct.mmu_page_path** %2, align 8
  %15 = getelementptr inbounds %struct.mmu_page_path, %struct.mmu_page_path* %14, i32 0, i32 1
  %16 = load %struct.kvm_mmu_page**, %struct.kvm_mmu_page*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %16, i64 %18
  %20 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %19, align 8
  store %struct.kvm_mmu_page* %20, %struct.kvm_mmu_page** %3, align 8
  %21 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %22 = icmp ne %struct.kvm_mmu_page* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  br label %56

24:                                               ; preds = %6
  %25 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @__clear_bit(i32 %36, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %24
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PT64_ROOT_LEVEL, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %3, align 8
  %50 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi i1 [ false, %43 ], [ %53, %48 ]
  br i1 %55, label %6, label %56

56:                                               ; preds = %23, %54
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
