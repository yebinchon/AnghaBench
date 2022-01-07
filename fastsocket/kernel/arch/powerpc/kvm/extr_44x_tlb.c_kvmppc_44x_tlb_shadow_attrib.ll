; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.c_kvmppc_44x_tlb_shadow_attrib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.c_kvmppc_44x_tlb_shadow_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPC44x_TLB_PERM_MASK = common dso_local global i32 0, align 4
@PPC44x_TLB_UATTR_MASK = common dso_local global i32 0, align 4
@PPC44x_TLB_USER_PERM_MASK = common dso_local global i32 0, align 4
@PPC44x_TLB_SUPER_PERM_MASK = common dso_local global i32 0, align 4
@PPC44x_TLB_SX = common dso_local global i32 0, align 4
@PPC44x_TLB_SR = common dso_local global i32 0, align 4
@PPC44x_TLB_SW = common dso_local global i32 0, align 4
@PPC44x_TLB_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @kvmppc_44x_tlb_shadow_attrib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_44x_tlb_shadow_attrib(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @PPC44x_TLB_PERM_MASK, align 4
  %6 = load i32, i32* @PPC44x_TLB_UATTR_MASK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @PPC44x_TLB_USER_PERM_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PPC44x_TLB_SUPER_PERM_MASK, align 4
  %19 = and i32 %17, %18
  %20 = shl i32 %19, 3
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %12, %2
  %24 = load i32, i32* @PPC44x_TLB_SX, align 4
  %25 = load i32, i32* @PPC44x_TLB_SR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PPC44x_TLB_SW, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @PPC44x_TLB_M, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
