; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_setup_msrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_setup_msrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MSR_EFER = common dso_local global i32 0, align 4
@vmx_msr_bitmap_longmode = common dso_local global i64* null, align 8
@vmx_msr_bitmap_legacy = common dso_local global i64* null, align 8
@MSR_BITMAP = common dso_local global i32 0, align 4
@EFER_SCE = common dso_local global i32 0, align 4
@MSR_CSTAR = common dso_local global i32 0, align 4
@MSR_K6_STAR = common dso_local global i32 0, align 4
@MSR_LSTAR = common dso_local global i32 0, align 4
@MSR_SYSCALL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @setup_msrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_msrs(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %6 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %7 = call i32 @vmx_load_host_state(%struct.vcpu_vmx* %6)
  store i32 0, i32* %3, align 4
  %8 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %9 = load i32, i32* @MSR_EFER, align 4
  %10 = call i32 @__find_msr_index(%struct.vcpu_vmx* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %12 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %17 = call i64 @update_transition_efer(%struct.vcpu_vmx* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  %24 = call i32 @move_msr_up(%struct.vcpu_vmx* %20, i32 %21, i32 %22)
  br label %25

25:                                               ; preds = %19, %15, %1
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %28 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = call i64 (...) @cpu_has_vmx_msr_bitmap()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %33 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %32, i32 0, i32 2
  %34 = call i64 @is_long_mode(%struct.TYPE_4__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64*, i64** @vmx_msr_bitmap_longmode, align 8
  store i64* %37, i64** %5, align 8
  br label %40

38:                                               ; preds = %31
  %39 = load i64*, i64** @vmx_msr_bitmap_legacy, align 8
  store i64* %39, i64** %5, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* @MSR_BITMAP, align 4
  %42 = load i64*, i64** %5, align 8
  %43 = call i32 @__pa(i64* %42)
  %44 = call i32 @vmcs_write64(i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %25
  ret void
}

declare dso_local i32 @vmx_load_host_state(%struct.vcpu_vmx*) #1

declare dso_local i32 @__find_msr_index(%struct.vcpu_vmx*, i32) #1

declare dso_local i64 @update_transition_efer(%struct.vcpu_vmx*) #1

declare dso_local i32 @move_msr_up(%struct.vcpu_vmx*, i32, i32) #1

declare dso_local i64 @cpu_has_vmx_msr_bitmap(...) #1

declare dso_local i64 @is_long_mode(%struct.TYPE_4__*) #1

declare dso_local i32 @vmcs_write64(i32, i32) #1

declare dso_local i32 @__pa(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
