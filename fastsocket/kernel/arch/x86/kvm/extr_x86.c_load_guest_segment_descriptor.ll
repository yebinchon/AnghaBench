; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_load_guest_segment_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_load_guest_segment_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.desc_struct = type { i32 }
%struct.descriptor_table = type { i32, i64 }

@GP_VECTOR = common dso_local global i32 0, align 4
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, %struct.desc_struct*)* @load_guest_segment_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_guest_segment_descriptor(%struct.kvm_vcpu* %0, i32 %1, %struct.desc_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.desc_struct*, align 8
  %8 = alloca %struct.descriptor_table, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.desc_struct* %2, %struct.desc_struct** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 3
  store i32 %14, i32* %9, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @get_segment_descriptor_dtable(%struct.kvm_vcpu* %15, i32 %16, %struct.descriptor_table* %8)
  %18 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 %20, 8
  %22 = add nsw i32 %21, 7
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %26 = load i32, i32* @GP_VECTOR, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 65532
  %29 = call i32 @kvm_queue_exception_e(%struct.kvm_vcpu* %25, i32 %26, i32 %28)
  store i32 1, i32* %4, align 4
  br label %51

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %8, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.desc_struct*, %struct.desc_struct** %7, align 8
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %40 = call i32 @kvm_read_guest_virt_system(i64 %37, %struct.desc_struct* %38, i32 4, %struct.kvm_vcpu* %39, i32* %11)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @kvm_inject_page_fault(%struct.kvm_vcpu* %45, i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %30
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %24
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @get_segment_descriptor_dtable(%struct.kvm_vcpu*, i32, %struct.descriptor_table*) #1

declare dso_local i32 @kvm_queue_exception_e(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_read_guest_virt_system(i64, %struct.desc_struct*, i32, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @kvm_inject_page_fault(%struct.kvm_vcpu*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
