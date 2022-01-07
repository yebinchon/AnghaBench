; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_page_header_update_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_page_header_update_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_mmu_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i8*, i32)* @page_header_update_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_header_update_slot(%struct.kvm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_mmu_page*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kvm*, %struct.kvm** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @memslot_id(%struct.kvm* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @__pa(i8* %12)
  %14 = call %struct.kvm_mmu_page* @page_header(i32 %13)
  store %struct.kvm_mmu_page* %14, %struct.kvm_mmu_page** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %8, align 8
  %17 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__set_bit(i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @memslot_id(%struct.kvm*, i32) #1

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
