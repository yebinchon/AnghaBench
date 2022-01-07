; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.h_get_tlb_raddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.h_get_tlb_raddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_44x_tlbe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_44x_tlbe*)* @get_tlb_raddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tlb_raddr(%struct.kvmppc_44x_tlbe* %0) #0 {
  %2 = alloca %struct.kvmppc_44x_tlbe*, align 8
  %3 = alloca i32, align 4
  store %struct.kvmppc_44x_tlbe* %0, %struct.kvmppc_44x_tlbe** %2, align 8
  %4 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %2, align 8
  %5 = getelementptr inbounds %struct.kvmppc_44x_tlbe, %struct.kvmppc_44x_tlbe* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 15
  %9 = shl i32 %8, 32
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, -1024
  %12 = or i32 %9, %11
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
