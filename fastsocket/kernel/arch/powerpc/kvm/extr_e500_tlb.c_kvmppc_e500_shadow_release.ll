; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_shadow_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_shadow_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { %struct.page***, %struct.tlbe** }
%struct.page = type { i32 }
%struct.tlbe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_vcpu_e500*, i32, i32)* @kvmppc_e500_shadow_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_e500_shadow_release(%struct.kvmppc_vcpu_e500* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlbe*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %10 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %9, i32 0, i32 1
  %11 = load %struct.tlbe**, %struct.tlbe*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.tlbe*, %struct.tlbe** %11, i64 %13
  %15 = load %struct.tlbe*, %struct.tlbe** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %15, i64 %17
  store %struct.tlbe* %18, %struct.tlbe** %7, align 8
  %19 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %20 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %19, i32 0, i32 0
  %21 = load %struct.page***, %struct.page**** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.page**, %struct.page*** %21, i64 %23
  %25 = load %struct.page**, %struct.page*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.page*, %struct.page** %25, i64 %27
  %29 = load %struct.page*, %struct.page** %28, align 8
  store %struct.page* %29, %struct.page** %8, align 8
  %30 = load %struct.page*, %struct.page** %8, align 8
  %31 = icmp ne %struct.page* %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %3
  %33 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %34 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %33, i32 0, i32 0
  %35 = load %struct.page***, %struct.page**** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.page**, %struct.page*** %35, i64 %37
  %39 = load %struct.page**, %struct.page*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.page*, %struct.page** %39, i64 %41
  store %struct.page* null, %struct.page** %42, align 8
  %43 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %44 = call i64 @get_tlb_v(%struct.tlbe* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %32
  %47 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %48 = call i64 @tlbe_is_writable(%struct.tlbe* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.page*, %struct.page** %8, align 8
  %52 = call i32 @kvm_release_page_dirty(%struct.page* %51)
  br label %56

53:                                               ; preds = %46
  %54 = load %struct.page*, %struct.page** %8, align 8
  %55 = call i32 @kvm_release_page_clean(%struct.page* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57, %3
  ret void
}

declare dso_local i64 @get_tlb_v(%struct.tlbe*) #1

declare dso_local i64 @tlbe_is_writable(%struct.tlbe*) #1

declare dso_local i32 @kvm_release_page_dirty(%struct.page*) #1

declare dso_local i32 @kvm_release_page_clean(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
