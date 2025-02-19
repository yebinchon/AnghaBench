; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_convert_notrap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_mmu_convert_notrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmu_page = type { i64* }

@shadow_trap_nonpresent_pte = common dso_local global i64 0, align 8
@shadow_notrap_nonpresent_pte = common dso_local global i64 0, align 8
@PT64_ENT_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_mmu_page*)* @mmu_convert_notrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmu_convert_notrap(%struct.kvm_mmu_page* %0) #0 {
  %2 = alloca %struct.kvm_mmu_page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store %struct.kvm_mmu_page* %0, %struct.kvm_mmu_page** %2, align 8
  %5 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  store i64* %7, i64** %4, align 8
  %8 = load i64, i64* @shadow_trap_nonpresent_pte, align 8
  %9 = load i64, i64* @shadow_notrap_nonpresent_pte, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %36

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PT64_ENT_PER_PAGE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i64*, i64** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @shadow_notrap_nonpresent_pte, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i64*, i64** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* @shadow_trap_nonpresent_pte, align 8
  %31 = call i32 @__set_spte(i64* %29, i64 %30)
  br label %32

32:                                               ; preds = %25, %17
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %13

36:                                               ; preds = %11, %13
  ret void
}

declare dso_local i32 @__set_spte(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
