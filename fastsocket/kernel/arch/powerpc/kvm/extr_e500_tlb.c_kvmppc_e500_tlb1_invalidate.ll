; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_tlb1_invalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_tlb1_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { i32*, %struct.tlbe** }
%struct.tlbe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_vcpu_e500*, i64, i64, i32)* @kvmppc_e500_tlb1_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_e500_tlb1_invalidate(%struct.kvmppc_vcpu_e500* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tlbe*, align 8
  %12 = alloca i32, align 4
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %65, %4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %18 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %16, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %15
  %24 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %25 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %24, i32 0, i32 1
  %26 = load %struct.tlbe**, %struct.tlbe*** %25, align 8
  %27 = getelementptr inbounds %struct.tlbe*, %struct.tlbe** %26, i64 1
  %28 = load %struct.tlbe*, %struct.tlbe** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %28, i64 %30
  store %struct.tlbe* %31, %struct.tlbe** %11, align 8
  %32 = load %struct.tlbe*, %struct.tlbe** %11, align 8
  %33 = call i32 @get_tlb_v(%struct.tlbe* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %65

36:                                               ; preds = %23
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.tlbe*, %struct.tlbe** %11, align 8
  %39 = call i64 @get_tlb_eaddr(%struct.tlbe* %38)
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %65

42:                                               ; preds = %36
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.tlbe*, %struct.tlbe** %11, align 8
  %45 = call i64 @get_tlb_end(%struct.tlbe* %44)
  %46 = icmp sgt i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %65

48:                                               ; preds = %42
  %49 = load %struct.tlbe*, %struct.tlbe** %11, align 8
  %50 = call i32 @get_tlb_tid(%struct.tlbe* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %65

58:                                               ; preds = %53, %48
  %59 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @kvmppc_e500_stlbe_invalidate(%struct.kvmppc_vcpu_e500* %59, i32 1, i32 %60)
  %62 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @write_host_tlbe(%struct.kvmppc_vcpu_e500* %62, i32 1, i32 %63)
  br label %65

65:                                               ; preds = %58, %57, %47, %41, %35
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %15

68:                                               ; preds = %15
  ret void
}

declare dso_local i32 @get_tlb_v(%struct.tlbe*) #1

declare dso_local i64 @get_tlb_eaddr(%struct.tlbe*) #1

declare dso_local i64 @get_tlb_end(%struct.tlbe*) #1

declare dso_local i32 @get_tlb_tid(%struct.tlbe*) #1

declare dso_local i32 @kvmppc_e500_stlbe_invalidate(%struct.kvmppc_vcpu_e500*, i32, i32) #1

declare dso_local i32 @write_host_tlbe(%struct.kvmppc_vcpu_e500*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
