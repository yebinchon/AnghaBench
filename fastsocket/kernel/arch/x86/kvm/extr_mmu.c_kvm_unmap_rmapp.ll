; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_unmap_rmapp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_unmap_rmapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@PT_PRESENT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"kvm_rmap_unmap_hva: spte %p %llx\0A\00", align 1
@shadow_trap_nonpresent_pte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i64*, i64)* @kvm_unmap_rmapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_unmap_rmapp(%struct.kvm* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %14, %3
  %10 = load %struct.kvm*, %struct.kvm** %4, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = call i32* @rmap_next(%struct.kvm* %10, i64* %11, i32* null)
  store i32* %12, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PT_PRESENT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rmap_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %23, i32 %25)
  %27 = load %struct.kvm*, %struct.kvm** %4, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @rmap_remove(%struct.kvm* %27, i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @shadow_trap_nonpresent_pte, align 4
  %32 = call i32 @__set_spte(i32* %30, i32 %31)
  store i32 1, i32* %8, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32* @rmap_next(%struct.kvm*, i64*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rmap_printk(i8*, i32*, i32) #1

declare dso_local i32 @rmap_remove(%struct.kvm*, i32*) #1

declare dso_local i32 @__set_spte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
