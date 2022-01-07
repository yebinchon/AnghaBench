; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.h_vrrtomrr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.h_vrrtomrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ia64_rr = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @vrrtomrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vrrtomrr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %union.ia64_rr, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = bitcast %union.ia64_rr* %3 to i64*
  store i64 %4, i64* %5, align 8
  %6 = bitcast %union.ia64_rr* %3 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = shl i32 %7, 4
  %9 = or i32 %8, 14
  %10 = bitcast %union.ia64_rr* %3 to i32*
  store i32 %9, i32* %10, align 8
  %11 = bitcast %union.ia64_rr* %3 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PAGE_SHIFT, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = bitcast %union.ia64_rr* %3 to i64*
  store i64 %16, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = bitcast %union.ia64_rr* %3 to i32*
  store i32 1, i32* %19, align 8
  %20 = bitcast %union.ia64_rr* %3 to i64*
  %21 = load i64, i64* %20, align 8
  ret i64 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
