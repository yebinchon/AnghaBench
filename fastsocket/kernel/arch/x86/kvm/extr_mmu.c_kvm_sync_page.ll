; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_sync_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_sync_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 (%struct.kvm_vcpu.0*, %struct.kvm_mmu_page*)* }
%struct.kvm_vcpu.0 = type opaque
%struct.kvm_mmu_page = type opaque
%struct.kvm_mmu_page.1 = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_mmu_page.1*)* @kvm_sync_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_sync_page(%struct.kvm_vcpu* %0, %struct.kvm_mmu_page.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_mmu_page.1*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_mmu_page.1* %1, %struct.kvm_mmu_page.1** %5, align 8
  %6 = load %struct.kvm_mmu_page.1*, %struct.kvm_mmu_page.1** %5, align 8
  %7 = getelementptr inbounds %struct.kvm_mmu_page.1, %struct.kvm_mmu_page.1* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %9, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kvm_mmu_page.1*, %struct.kvm_mmu_page.1** %5, align 8
  %21 = call i32 @kvm_mmu_zap_page(i32 %19, %struct.kvm_mmu_page.1* %20)
  store i32 1, i32* %3, align 4
  br label %64

22:                                               ; preds = %2
  %23 = load %struct.kvm_mmu_page.1*, %struct.kvm_mmu_page.1** %5, align 8
  %24 = call i32 @trace_kvm_mmu_sync_page(%struct.kvm_mmu_page.1* %23)
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.kvm_mmu_page.1*, %struct.kvm_mmu_page.1** %5, align 8
  %29 = getelementptr inbounds %struct.kvm_mmu_page.1, %struct.kvm_mmu_page.1* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @rmap_write_protect(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @kvm_flush_remote_tlbs(i32 %36)
  br label %38

38:                                               ; preds = %33, %22
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.kvm_mmu_page.1*, %struct.kvm_mmu_page.1** %5, align 8
  %43 = call i32 @kvm_unlink_unsync_page(i32 %41, %struct.kvm_mmu_page.1* %42)
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64 (%struct.kvm_vcpu.0*, %struct.kvm_mmu_page*)*, i64 (%struct.kvm_vcpu.0*, %struct.kvm_mmu_page*)** %47, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %50 = bitcast %struct.kvm_vcpu* %49 to %struct.kvm_vcpu.0*
  %51 = load %struct.kvm_mmu_page.1*, %struct.kvm_mmu_page.1** %5, align 8
  %52 = bitcast %struct.kvm_mmu_page.1* %51 to %struct.kvm_mmu_page*
  %53 = call i64 %48(%struct.kvm_vcpu.0* %50, %struct.kvm_mmu_page* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %38
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.kvm_mmu_page.1*, %struct.kvm_mmu_page.1** %5, align 8
  %60 = call i32 @kvm_mmu_zap_page(i32 %58, %struct.kvm_mmu_page.1* %59)
  store i32 1, i32* %3, align 4
  br label %64

61:                                               ; preds = %38
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %63 = call i32 @kvm_mmu_flush_tlb(%struct.kvm_vcpu* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %55, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @kvm_mmu_zap_page(i32, %struct.kvm_mmu_page.1*) #1

declare dso_local i32 @trace_kvm_mmu_sync_page(%struct.kvm_mmu_page.1*) #1

declare dso_local i64 @rmap_write_protect(i32, i32) #1

declare dso_local i32 @kvm_flush_remote_tlbs(i32) #1

declare dso_local i32 @kvm_unlink_unsync_page(i32, %struct.kvm_mmu_page.1*) #1

declare dso_local i32 @kvm_mmu_flush_tlb(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
