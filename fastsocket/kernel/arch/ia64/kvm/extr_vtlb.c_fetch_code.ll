; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_fetch_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_fetch_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.thash_data = type { i32, i32 }

@vpsr = common dso_local global i32 0, align 4
@IA64_PSR_IT = common dso_local global i32 0, align 4
@I_TLB = common dso_local global i32 0, align 4
@ARCH_PAGE_SHIFT = common dso_local global i32 0, align 4
@IA64_FAULT = common dso_local global i32 0, align 4
@IA64_NO_FAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetch_code(%struct.kvm_vcpu* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.thash_data*, align 8
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = load i32, i32* @vpsr, align 4
  %14 = call i32 @VCPU(%struct.kvm_vcpu* %12, i32 %13)
  %15 = load i32, i32* @IA64_PSR_IT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %8, align 4
  br label %49

20:                                               ; preds = %3
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @I_TLB, align 4
  %24 = call %struct.thash_data* @vtlb_lookup(%struct.kvm_vcpu* %21, i32 %22, i32 %23)
  store %struct.thash_data* %24, %struct.thash_data** %10, align 8
  %25 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %26 = icmp ne %struct.thash_data* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %20
  %28 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %29 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %32 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 12
  %35 = ashr i32 %30, %34
  %36 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %37 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %35, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %42 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PSIZE(i32 %43)
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %40, %45
  %47 = or i32 %39, %46
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %27, %20
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @kvm_gpa_to_mpa(i32 %53)
  store i32 %54, i32* %11, align 4
  br label %87

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.thash_data* @vhpt_lookup(i32 %56)
  store %struct.thash_data* %57, %struct.thash_data** %10, align 8
  %58 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %59 = icmp eq %struct.thash_data* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ARCH_PAGE_SHIFT, align 4
  %63 = shl i32 %62, 2
  %64 = call i32 @ia64_ptcl(i32 %61, i32 %63)
  %65 = load i32, i32* @IA64_FAULT, align 4
  store i32 %65, i32* %4, align 4
  br label %105

66:                                               ; preds = %55
  %67 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %68 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %71 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 12
  %74 = ashr i32 %69, %73
  %75 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %76 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %74, %77
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.thash_data*, %struct.thash_data** %10, align 8
  %81 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PSIZE(i32 %82)
  %84 = sub nsw i32 %83, 1
  %85 = and i32 %79, %84
  %86 = or i32 %78, %85
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %66, %52
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @__kvm_va(i32 %88)
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %9, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %9, align 8
  %93 = load i32, i32* %91, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %93, i32* %97, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* @IA64_NO_FAULT, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %87, %60
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @VCPU(%struct.kvm_vcpu*, i32) #1

declare dso_local %struct.thash_data* @vtlb_lookup(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @PSIZE(i32) #1

declare dso_local i32 @kvm_gpa_to_mpa(i32) #1

declare dso_local %struct.thash_data* @vhpt_lookup(i32) #1

declare dso_local i32 @ia64_ptcl(i32, i32) #1

declare dso_local i64 @__kvm_va(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
