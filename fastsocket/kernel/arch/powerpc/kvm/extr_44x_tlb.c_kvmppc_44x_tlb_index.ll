; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.c_kvmppc_44x_tlb_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x_tlb.c_kvmppc_44x_tlb_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_44x = type { %struct.kvmppc_44x_tlbe* }
%struct.kvmppc_44x_tlbe = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_44x_tlb_index(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvmppc_vcpu_44x*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvmppc_44x_tlbe*, align 8
  %13 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %15 = call %struct.kvmppc_vcpu_44x* @to_44x(%struct.kvm_vcpu* %14)
  store %struct.kvmppc_vcpu_44x* %15, %struct.kvmppc_vcpu_44x** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %64, %4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.kvmppc_vcpu_44x*, %struct.kvmppc_vcpu_44x** %10, align 8
  %19 = getelementptr inbounds %struct.kvmppc_vcpu_44x, %struct.kvmppc_vcpu_44x* %18, i32 0, i32 0
  %20 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %19, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.kvmppc_44x_tlbe* %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %16
  %24 = load %struct.kvmppc_vcpu_44x*, %struct.kvmppc_vcpu_44x** %10, align 8
  %25 = getelementptr inbounds %struct.kvmppc_vcpu_44x, %struct.kvmppc_vcpu_44x* %24, i32 0, i32 0
  %26 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.kvmppc_44x_tlbe, %struct.kvmppc_44x_tlbe* %26, i64 %28
  store %struct.kvmppc_44x_tlbe* %29, %struct.kvmppc_44x_tlbe** %12, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %12, align 8
  %32 = call i64 @get_tlb_eaddr(%struct.kvmppc_44x_tlbe* %31)
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %64

35:                                               ; preds = %23
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %12, align 8
  %38 = call i64 @get_tlb_end(%struct.kvmppc_44x_tlbe* %37)
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %64

41:                                               ; preds = %35
  %42 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %12, align 8
  %43 = call i32 @get_tlb_tid(%struct.kvmppc_44x_tlbe* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %64

51:                                               ; preds = %46, %41
  %52 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %12, align 8
  %53 = call i32 @get_tlb_v(%struct.kvmppc_44x_tlbe* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %64

56:                                               ; preds = %51
  %57 = load %struct.kvmppc_44x_tlbe*, %struct.kvmppc_44x_tlbe** %12, align 8
  %58 = call i32 @get_tlb_ts(%struct.kvmppc_44x_tlbe* %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %68

64:                                               ; preds = %61, %55, %50, %40, %34
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %16

67:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.kvmppc_vcpu_44x* @to_44x(%struct.kvm_vcpu*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.kvmppc_44x_tlbe*) #1

declare dso_local i64 @get_tlb_eaddr(%struct.kvmppc_44x_tlbe*) #1

declare dso_local i64 @get_tlb_end(%struct.kvmppc_44x_tlbe*) #1

declare dso_local i32 @get_tlb_tid(%struct.kvmppc_44x_tlbe*) #1

declare dso_local i32 @get_tlb_v(%struct.kvmppc_44x_tlbe*) #1

declare dso_local i32 @get_tlb_ts(%struct.kvmppc_44x_tlbe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
