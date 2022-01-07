; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_vtr_find_overlap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_vtr_find_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.thash_data = type { i32 }

@RR_RID_MASK = common dso_local global i32 0, align 4
@D_TLB = common dso_local global i32 0, align 4
@NDTRS = common dso_local global i32 0, align 4
@NITRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vtr_find_overlap(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.thash_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @vcpu_get_rr(%struct.kvm_vcpu* %14, i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @RR_RID_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @PSIZE(i32 %21)
  %23 = add nsw i32 %20, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @D_TLB, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @vcpu_quick_region_check(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %27
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = bitcast i32* %38 to %struct.thash_data*
  store %struct.thash_data* %39, %struct.thash_data** %10, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %54, %35
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @NDTRS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @__is_tr_overlap(%struct.thash_data* %45, i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %96

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %58 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %57, i32 1
  store %struct.thash_data* %58, %struct.thash_data** %10, align 8
  br label %40

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59, %27
  br label %95

61:                                               ; preds = %4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @vcpu_quick_region_check(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %61
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = bitcast i32* %72 to %struct.thash_data*
  store %struct.thash_data* %73, %struct.thash_data** %10, align 8
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %88, %69
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @NITRS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i64 @__is_tr_overlap(%struct.thash_data* %79, i32 %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %5, align 4
  br label %96

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  %91 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %92 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %91, i32 1
  store %struct.thash_data* %92, %struct.thash_data** %10, align 8
  br label %74

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93, %61
  br label %95

95:                                               ; preds = %94, %60
  store i32 -1, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %85, %51
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @vcpu_get_rr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @PSIZE(i32) #1

declare dso_local i64 @vcpu_quick_region_check(i32, i32) #1

declare dso_local i64 @__is_tr_overlap(%struct.thash_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
