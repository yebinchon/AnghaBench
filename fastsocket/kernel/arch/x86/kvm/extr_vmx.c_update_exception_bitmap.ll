; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_update_exception_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_update_exception_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PF_VECTOR = common dso_local global i32 0, align 4
@UD_VECTOR = common dso_local global i32 0, align 4
@MC_VECTOR = common dso_local global i32 0, align 4
@NM_VECTOR = common dso_local global i32 0, align 4
@DB_VECTOR = common dso_local global i32 0, align 4
@KVM_GUESTDBG_ENABLE = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_SW_BP = common dso_local global i32 0, align 4
@BP_VECTOR = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i64 0, align 8
@EXCEPTION_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @update_exception_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_exception_bitmap(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load i32, i32* @PF_VECTOR, align 4
  %5 = shl i32 1, %4
  %6 = load i32, i32* @UD_VECTOR, align 4
  %7 = shl i32 1, %6
  %8 = or i32 %5, %7
  %9 = load i32, i32* @MC_VECTOR, align 4
  %10 = shl i32 1, %9
  %11 = or i32 %8, %10
  %12 = load i32, i32* @NM_VECTOR, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @DB_VECTOR, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @KVM_GUESTDBG_ENABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %1
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @KVM_GUESTDBG_USE_SW_BP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @BP_VECTOR, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %25
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = call %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i64, i64* @enable_ept, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @PF_VECTOR, align 4
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @NM_VECTOR, align 4
  %62 = shl i32 1, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* @EXCEPTION_BITMAP, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @vmcs_write32(i32 %67, i32 %68)
  ret void
}

declare dso_local %struct.TYPE_4__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
