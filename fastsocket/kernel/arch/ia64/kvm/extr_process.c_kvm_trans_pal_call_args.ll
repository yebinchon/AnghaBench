; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_kvm_trans_pal_call_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_kvm_trans_pal_call_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.thash_data = type { i64, i64, i32 }

@D_TLB = common dso_local global i32 0, align 4
@_PAGE_PPN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*, i64)* @kvm_trans_pal_call_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_trans_pal_call_args(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.thash_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = call i32 @is_physical_mode(%struct.kvm_vcpu* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %2
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @D_TLB, align 4
  %16 = call %struct.thash_data* @vtlb_lookup(%struct.kvm_vcpu* %13, i64 %14, i32 %15)
  store %struct.thash_data* %16, %struct.thash_data** %6, align 8
  %17 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %18 = icmp ne %struct.thash_data* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %21 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @_PAGE_PPN_MASK, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %7, align 8
  br label %37

25:                                               ; preds = %12
  %26 = load i64, i64* %5, align 8
  %27 = call %struct.thash_data* @vhpt_lookup(i64 %26)
  store %struct.thash_data* %27, %struct.thash_data** %6, align 8
  %28 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %29 = icmp ne %struct.thash_data* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i64 0, i64* %3, align 8
  br label %60

31:                                               ; preds = %25
  %32 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %33 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @_PAGE_PPN_MASK, align 8
  %36 = and i64 %34, %35
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %31, %19
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %40 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PSIZE(i32 %41)
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = and i64 %38, %44
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %48 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @PAGEALIGN(i64 %46, i32 %49)
  %51 = load i64, i64* %8, align 8
  %52 = or i64 %50, %51
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %37, %2
  %54 = load i64, i64* %5, align 8
  %55 = shl i64 %54, 1
  %56 = lshr i64 %55, 1
  %57 = call i64 @kvm_gpa_to_mpa(i64 %56)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @__va(i64 %58)
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %53, %30
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local i32 @is_physical_mode(%struct.kvm_vcpu*) #1

declare dso_local %struct.thash_data* @vtlb_lookup(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local %struct.thash_data* @vhpt_lookup(i64) #1

declare dso_local i32 @PSIZE(i32) #1

declare dso_local i64 @PAGEALIGN(i64, i32) #1

declare dso_local i64 @kvm_gpa_to_mpa(i64) #1

declare dso_local i64 @__va(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
