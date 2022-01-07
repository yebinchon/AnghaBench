; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c___vtr_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c___vtr_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thash_data = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@RR_RID_MASK = common dso_local global i32 0, align 4
@D_TLB = common dso_local global i32 0, align 4
@NDTRS = common dso_local global i32 0, align 4
@NITRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thash_data* @__vtr_lookup(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.thash_data*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thash_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @vcpu_get_rr(%struct.kvm_vcpu* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @RR_RID_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @D_TLB, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %3
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @vcpu_quick_region_check(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %20
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = bitcast i32* %31 to %struct.thash_data*
  store %struct.thash_data* %32, %struct.thash_data** %8, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %46, %28
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @NDTRS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.thash_data*, %struct.thash_data** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @__is_tr_translated(%struct.thash_data* %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load %struct.thash_data*, %struct.thash_data** %8, align 8
  store %struct.thash_data* %44, %struct.thash_data** %4, align 8
  br label %87

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load %struct.thash_data*, %struct.thash_data** %8, align 8
  %50 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %49, i32 1
  store %struct.thash_data* %50, %struct.thash_data** %8, align 8
  br label %33

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %20
  br label %86

53:                                               ; preds = %3
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @vcpu_quick_region_check(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %53
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = bitcast i32* %64 to %struct.thash_data*
  store %struct.thash_data* %65, %struct.thash_data** %8, align 8
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %79, %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @NITRS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load %struct.thash_data*, %struct.thash_data** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @__is_tr_translated(%struct.thash_data* %71, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load %struct.thash_data*, %struct.thash_data** %8, align 8
  store %struct.thash_data* %77, %struct.thash_data** %4, align 8
  br label %87

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = load %struct.thash_data*, %struct.thash_data** %8, align 8
  %83 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %82, i32 1
  store %struct.thash_data* %83, %struct.thash_data** %8, align 8
  br label %66

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %53
  br label %86

86:                                               ; preds = %85, %52
  store %struct.thash_data* null, %struct.thash_data** %4, align 8
  br label %87

87:                                               ; preds = %86, %76, %43
  %88 = load %struct.thash_data*, %struct.thash_data** %4, align 8
  ret %struct.thash_data* %88
}

declare dso_local i32 @vcpu_get_rr(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @vcpu_quick_region_check(i32, i32) #1

declare dso_local i64 @__is_tr_translated(%struct.thash_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
