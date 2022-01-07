; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_account_shadowed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_account_shadowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@PT_DIRECTORY_LEVEL = common dso_local global i32 0, align 4
@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4
@KVM_NR_PAGE_SIZES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32)* @account_shadowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @account_shadowed(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @unalias_gfn(%struct.kvm* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.kvm*, %struct.kvm** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.kvm_memory_slot* @gfn_to_memslot_unaliased(%struct.kvm* %11, i32 %12)
  store %struct.kvm_memory_slot* %13, %struct.kvm_memory_slot** %5, align 8
  %14 = load i32, i32* @PT_DIRECTORY_LEVEL, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %29, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %18 = load i32, i32* @KVM_NR_PAGE_SIZES, align 4
  %19 = add nsw i32 %17, %18
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32* @slot_largepage_idx(i32 %22, %struct.kvm_memory_slot* %23, i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %15

32:                                               ; preds = %15
  ret void
}

declare dso_local i32 @unalias_gfn(%struct.kvm*, i32) #1

declare dso_local %struct.kvm_memory_slot* @gfn_to_memslot_unaliased(%struct.kvm*, i32) #1

declare dso_local i32* @slot_largepage_idx(i32, %struct.kvm_memory_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
