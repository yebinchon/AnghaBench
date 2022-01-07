; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_pv_mmu_op_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_pv_mmu_op_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pv_mmu_op_buffer = type { i32 }
%struct.kvm_mmu_op_header = type { i32 }
%struct.kvm_mmu_op_write_pte = type { i32, i32 }
%struct.kvm_mmu_op_flush_tlb = type { i32 }
%struct.kvm_mmu_op_release_pt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_pv_mmu_op_buffer*)* @kvm_pv_mmu_op_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_pv_mmu_op_one(%struct.kvm_vcpu* %0, %struct.kvm_pv_mmu_op_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_pv_mmu_op_buffer*, align 8
  %6 = alloca %struct.kvm_mmu_op_header*, align 8
  %7 = alloca %struct.kvm_mmu_op_write_pte*, align 8
  %8 = alloca %struct.kvm_mmu_op_flush_tlb*, align 8
  %9 = alloca %struct.kvm_mmu_op_release_pt*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_pv_mmu_op_buffer* %1, %struct.kvm_pv_mmu_op_buffer** %5, align 8
  %10 = load %struct.kvm_pv_mmu_op_buffer*, %struct.kvm_pv_mmu_op_buffer** %5, align 8
  %11 = call %struct.kvm_mmu_op_header* @pv_mmu_peek_buffer(%struct.kvm_pv_mmu_op_buffer* %10, i32 4)
  store %struct.kvm_mmu_op_header* %11, %struct.kvm_mmu_op_header** %6, align 8
  %12 = load %struct.kvm_mmu_op_header*, %struct.kvm_mmu_op_header** %6, align 8
  %13 = icmp ne %struct.kvm_mmu_op_header* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.kvm_mmu_op_header*, %struct.kvm_mmu_op_header** %6, align 8
  %17 = getelementptr inbounds %struct.kvm_mmu_op_header, %struct.kvm_mmu_op_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %58 [
    i32 128, label %19
    i32 130, label %35
    i32 129, label %45
  ]

19:                                               ; preds = %15
  %20 = load %struct.kvm_pv_mmu_op_buffer*, %struct.kvm_pv_mmu_op_buffer** %5, align 8
  %21 = call i8* @pv_mmu_read_buffer(%struct.kvm_pv_mmu_op_buffer* %20, i32 8)
  %22 = bitcast i8* %21 to %struct.kvm_mmu_op_write_pte*
  store %struct.kvm_mmu_op_write_pte* %22, %struct.kvm_mmu_op_write_pte** %7, align 8
  %23 = load %struct.kvm_mmu_op_write_pte*, %struct.kvm_mmu_op_write_pte** %7, align 8
  %24 = icmp ne %struct.kvm_mmu_op_write_pte* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %59

26:                                               ; preds = %19
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %28 = load %struct.kvm_mmu_op_write_pte*, %struct.kvm_mmu_op_write_pte** %7, align 8
  %29 = getelementptr inbounds %struct.kvm_mmu_op_write_pte, %struct.kvm_mmu_op_write_pte* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.kvm_mmu_op_write_pte*, %struct.kvm_mmu_op_write_pte** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_mmu_op_write_pte, %struct.kvm_mmu_op_write_pte* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kvm_pv_mmu_write(%struct.kvm_vcpu* %27, i32 %30, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %59

35:                                               ; preds = %15
  %36 = load %struct.kvm_pv_mmu_op_buffer*, %struct.kvm_pv_mmu_op_buffer** %5, align 8
  %37 = call i8* @pv_mmu_read_buffer(%struct.kvm_pv_mmu_op_buffer* %36, i32 4)
  %38 = bitcast i8* %37 to %struct.kvm_mmu_op_flush_tlb*
  store %struct.kvm_mmu_op_flush_tlb* %38, %struct.kvm_mmu_op_flush_tlb** %8, align 8
  %39 = load %struct.kvm_mmu_op_flush_tlb*, %struct.kvm_mmu_op_flush_tlb** %8, align 8
  %40 = icmp ne %struct.kvm_mmu_op_flush_tlb* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %59

42:                                               ; preds = %35
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %44 = call i32 @kvm_pv_mmu_flush_tlb(%struct.kvm_vcpu* %43)
  store i32 %44, i32* %3, align 4
  br label %59

45:                                               ; preds = %15
  %46 = load %struct.kvm_pv_mmu_op_buffer*, %struct.kvm_pv_mmu_op_buffer** %5, align 8
  %47 = call i8* @pv_mmu_read_buffer(%struct.kvm_pv_mmu_op_buffer* %46, i32 4)
  %48 = bitcast i8* %47 to %struct.kvm_mmu_op_release_pt*
  store %struct.kvm_mmu_op_release_pt* %48, %struct.kvm_mmu_op_release_pt** %9, align 8
  %49 = load %struct.kvm_mmu_op_release_pt*, %struct.kvm_mmu_op_release_pt** %9, align 8
  %50 = icmp ne %struct.kvm_mmu_op_release_pt* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %59

52:                                               ; preds = %45
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %54 = load %struct.kvm_mmu_op_release_pt*, %struct.kvm_mmu_op_release_pt** %9, align 8
  %55 = getelementptr inbounds %struct.kvm_mmu_op_release_pt, %struct.kvm_mmu_op_release_pt* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kvm_pv_mmu_release_pt(%struct.kvm_vcpu* %53, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %52, %51, %42, %41, %26, %25, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.kvm_mmu_op_header* @pv_mmu_peek_buffer(%struct.kvm_pv_mmu_op_buffer*, i32) #1

declare dso_local i8* @pv_mmu_read_buffer(%struct.kvm_pv_mmu_op_buffer*, i32) #1

declare dso_local i32 @kvm_pv_mmu_write(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_pv_mmu_flush_tlb(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_pv_mmu_release_pt(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
