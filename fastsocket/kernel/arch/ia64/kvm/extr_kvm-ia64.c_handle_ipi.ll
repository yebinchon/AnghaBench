; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_handle_ipi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_handle_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.kvm_run = type { i32 }
%struct.exit_ctl_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %union.ia64_ipi_d, %union.ia64_ipi_a }
%union.ia64_ipi_d = type { i32 }
%union.ia64_ipi_a = type { i32 }
%struct.kvm_pt_regs = type { i32, i32 }

@KVM_MP_STATE_RUNNABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_run*)* @handle_ipi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ipi(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca %struct.exit_ctl_data*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.kvm_pt_regs*, align 8
  %9 = alloca %union.ia64_ipi_a, align 4
  %10 = alloca %union.ia64_ipi_d, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %5, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = call %struct.exit_ctl_data* @kvm_get_exit_data(%struct.kvm_vcpu* %11)
  store %struct.exit_ctl_data* %12, %struct.exit_ctl_data** %6, align 8
  %13 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %6, align 8
  %14 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = bitcast %union.ia64_ipi_a* %9 to i8*
  %18 = bitcast %union.ia64_ipi_a* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %6, align 8
  %20 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = bitcast %union.ia64_ipi_d* %10 to i8*
  %24 = bitcast %union.ia64_ipi_d* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = bitcast %union.ia64_ipi_a* %9 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %union.ia64_ipi_a* %9 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.kvm_vcpu* @lid_to_vcpu(%struct.TYPE_12__* %27, i32 %29, i32 %31)
  store %struct.kvm_vcpu* %32, %struct.kvm_vcpu** %7, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %34 = icmp ne %struct.kvm_vcpu* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %2
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %38 = call i32 @handle_vm_error(%struct.kvm_vcpu* %36, %struct.kvm_run* %37)
  store i32 %38, i32* %3, align 4
  br label %94

39:                                               ; preds = %2
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %39
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %47 = call %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu* %46)
  store %struct.kvm_pt_regs* %47, %struct.kvm_pt_regs** %8, align 8
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 2
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %8, align 8
  %56 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 2
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %8, align 8
  %65 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @KVM_MP_STATE_RUNNABLE, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = call i64 @waitqueue_active(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %45
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 0
  %77 = call i32 @wake_up_interruptible(i32* %76)
  br label %78

78:                                               ; preds = %74, %45
  br label %93

79:                                               ; preds = %39
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %81 = bitcast %union.ia64_ipi_d* %10 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = bitcast %union.ia64_ipi_d* %10 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @vcpu_deliver_ipi(%struct.kvm_vcpu* %80, i32 %82, i32 %84)
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %88 = icmp ne %struct.kvm_vcpu* %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %91 = call i32 @kvm_vcpu_kick(%struct.kvm_vcpu* %90)
  br label %92

92:                                               ; preds = %89, %79
  br label %93

93:                                               ; preds = %92, %78
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %35
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.exit_ctl_data* @kvm_get_exit_data(%struct.kvm_vcpu*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.kvm_vcpu* @lid_to_vcpu(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @handle_vm_error(%struct.kvm_vcpu*, %struct.kvm_run*) #1

declare dso_local %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @vcpu_deliver_ipi(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_vcpu_kick(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
