; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm_fw.c_set_pal_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm_fw.c_set_pal_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.ia64_pal_retval = type { i32 }
%struct.exit_ctl_data = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ia64_pal_retval }

@EXIT_REASON_PAL_CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @set_pal_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pal_result(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.ia64_pal_retval, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.exit_ctl_data*, align 8
  %6 = getelementptr inbounds %struct.ia64_pal_retval, %struct.ia64_pal_retval* %3, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = call %struct.exit_ctl_data* @kvm_get_exit_data(%struct.kvm_vcpu* %7)
  store %struct.exit_ctl_data* %8, %struct.exit_ctl_data** %5, align 8
  %9 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %5, align 8
  %10 = icmp ne %struct.exit_ctl_data* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %5, align 8
  %13 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EXIT_REASON_PAL_CALL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %5, align 8
  %19 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = bitcast %struct.ia64_pal_retval* %21 to i8*
  %23 = bitcast %struct.ia64_pal_retval* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 4 %23, i64 4, i1 false)
  br label %32

24:                                               ; preds = %11, %2
  %25 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %5, align 8
  %26 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.ia64_pal_retval, %struct.ia64_pal_retval* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @INIT_PAL_STATUS_UNIMPLEMENTED(i32 %30)
  br label %32

32:                                               ; preds = %24, %17
  ret void
}

declare dso_local %struct.exit_ctl_data* @kvm_get_exit_data(%struct.kvm_vcpu*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_PAL_STATUS_UNIMPLEMENTED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
