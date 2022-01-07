; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.c_kvmppc_44x_tlb_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.c_kvmppc_44x_tlb_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_44x = type { i64*, %struct.kvmppc_44x_tlbe* }
%struct.kvmppc_44x_tlbe = type { i32 }

@tlb_44x_hwater = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_44x_tlb_put(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvmppc_vcpu_44x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_44x_tlbe*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call %struct.kvmppc_vcpu_44x* @to_44x(%struct.kvm_vcpu* %6)
  store %struct.kvmppc_vcpu_44x* %7, %struct.kvmppc_vcpu_44x** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @tlb_44x_hwater, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = load %struct.kvmppc_vcpu_44x*, %struct.kvmppc_vcpu_44x** %3, align 8
  %14 = getelementptr inbounds %struct.kvmppc_vcpu_44x, %struct.kvmppc_vcpu_44x* %13, i32 0, i32 1
  %15 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.kvmppc_44x_tlbe, %struct.kvmppc_44x_tlbe* %15, i64 %17
  store %struct.kvmppc_44x_tlbe* %18, %struct.kvmppc_44x_tlbe** %5, align 8
  %19 = load %struct.kvmppc_vcpu_44x*, %struct.kvmppc_vcpu_44x** %3, align 8
  %20 = getelementptr inbounds %struct.kvmppc_vcpu_44x, %struct.kvmppc_vcpu_44x* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %5, align 8
  %30 = call i32 @kvmppc_44x_tlbre(i32 %28, %struct.kvmppc_44x_tlbe* %29)
  br label %31

31:                                               ; preds = %27, %12
  %32 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %5, align 8
  %33 = call i64 @get_tlb_v(%struct.kvmppc_44x_tlbe* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %5, align 8
  %37 = call i64 @get_tlb_ts(%struct.kvmppc_44x_tlbe* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @kvmppc_44x_tlbie(i32 %40)
  br label %42

42:                                               ; preds = %39, %35, %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %8

46:                                               ; preds = %8
  ret void
}

declare dso_local %struct.kvmppc_vcpu_44x* @to_44x(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_44x_tlbre(i32, %struct.kvmppc_44x_tlbe*) #1

declare dso_local i64 @get_tlb_v(%struct.kvmppc_44x_tlbe*) #1

declare dso_local i64 @get_tlb_ts(%struct.kvmppc_44x_tlbe*) #1

declare dso_local i32 @kvmppc_44x_tlbie(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
