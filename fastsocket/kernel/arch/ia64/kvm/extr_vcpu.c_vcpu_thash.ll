; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_thash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_thash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%union.ia64_pta = type { i64 }
%union.ia64_rr = type { i32 }

@PAL_VPS_THASH = common dso_local global i32 0, align 4
@VRN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcpu_thash(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ia64_pta, align 8
  %6 = alloca %union.ia64_rr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call i32 @vcpu_get_pta(%struct.kvm_vcpu* %9)
  %11 = bitcast %union.ia64_pta* %5 to i32*
  store i32 %10, i32* %11, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @vcpu_get_rr(%struct.kvm_vcpu* %12, i32 %13)
  %15 = bitcast %union.ia64_rr* %6 to i32*
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = bitcast %union.ia64_rr* %6 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %16, %18
  %20 = shl i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = bitcast %union.ia64_pta* %5 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = shl i64 1, %23
  %25 = sub i64 %24, 1
  %26 = and i64 %21, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = bitcast %union.ia64_pta* %5 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load i32, i32* @PAL_VPS_THASH, align 4
  %33 = load i32, i32* %4, align 4
  %34 = bitcast %union.ia64_rr* %6 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %union.ia64_pta* %5 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ia64_call_vsa(i32 %32, i32 %33, i32 %35, i32 %37, i32 0, i32 0, i32 0, i32 0)
  store i32 %38, i32* %7, align 4
  br label %58

39:                                               ; preds = %2
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @VRN_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %42, %43
  %45 = bitcast %union.ia64_pta* %5 to i32*
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %46, 3
  %48 = bitcast %union.ia64_pta* %5 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 3
  %51 = trunc i64 %50 to i32
  %52 = ashr i32 %47, %51
  %53 = bitcast %union.ia64_pta* %5 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %52, %55
  %57 = or i32 %44, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %39, %31
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @vcpu_get_pta(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_get_rr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @ia64_call_vsa(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
