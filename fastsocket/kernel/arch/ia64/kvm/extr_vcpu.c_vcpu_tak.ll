; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_tak.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_tak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.thash_data = type { i32, i32 }
%union.ia64_pta = type { i64 }

@D_TLB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcpu_tak(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thash_data*, align 8
  %7 = alloca %union.ia64_pta, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = call i32 @vcpu_get_pta(%struct.kvm_vcpu* %9)
  %11 = bitcast %union.ia64_pta* %7 to i32*
  store i32 %10, i32* %11, align 8
  %12 = bitcast %union.ia64_pta* %7 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @D_TLB, align 4
  %21 = call %struct.thash_data* @vtlb_lookup(%struct.kvm_vcpu* %18, i32 %19, i32 %20)
  store %struct.thash_data* %21, %struct.thash_data** %6, align 8
  %22 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %23 = icmp ne %struct.thash_data* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %26 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %17
  store i32 1, i32* %8, align 4
  br label %34

30:                                               ; preds = %24
  %31 = load %struct.thash_data*, %struct.thash_data** %6, align 8
  %32 = getelementptr inbounds %struct.thash_data, %struct.thash_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %29
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @vcpu_get_pta(%struct.kvm_vcpu*) #1

declare dso_local %struct.thash_data* @vtlb_lookup(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
