; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_vhpt_purge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_vhpt_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.thash_data = type { i64 }
%union.ia64_rr = type { i64 }

@INVALID_TI_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i64, i64)* @vhpt_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhpt_purge(%struct.kvm_vcpu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.thash_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.ia64_rr, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = shl i64 1, %14
  %16 = sub i64 %15, 1
  %17 = xor i64 %16, -1
  %18 = and i64 %13, %17
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @ia64_get_rr(i64 %19)
  %21 = bitcast %union.ia64_rr* %12 to i32*
  store i32 %20, i32* %21, align 8
  %22 = bitcast %union.ia64_rr* %12 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @PSIZE(i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = bitcast %union.ia64_rr* %12 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %35

30:                                               ; preds = %3
  %31 = load i64, i64* %6, align 8
  %32 = bitcast %union.ia64_rr* %12 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %31, %33
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi i64 [ 0, %29 ], [ %34, %30 ]
  %37 = shl i64 1, %36
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %56, %35
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @ia64_thash(i64 %42)
  %44 = inttoptr i64 %43 to %struct.thash_data*
  store %struct.thash_data* %44, %struct.thash_data** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @ia64_ttag(i64 %45)
  store i64 %46, i64* %10, align 8
  %47 = load %struct.thash_data*, %struct.thash_data** %7, align 8
  %48 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i64, i64* @INVALID_TI_TAG, align 8
  %54 = load %struct.thash_data*, %struct.thash_data** %7, align 8
  %55 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %41
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %11, align 8
  br label %38

62:                                               ; preds = %38
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @machine_tlb_purge(i64 %63, i64 %64)
  ret void
}

declare dso_local i32 @ia64_get_rr(i64) #1

declare dso_local i64 @PSIZE(i64) #1

declare dso_local i64 @ia64_thash(i64) #1

declare dso_local i64 @ia64_ttag(i64) #1

declare dso_local i32 @machine_tlb_purge(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
