; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_set_pal_call_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_set_pal_call_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.exit_ctl_data }
%struct.exit_ctl_data = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i8*, i8* }

@EXIT_REASON_PAL_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @set_pal_call_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pal_call_data(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.exit_ctl_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.exit_ctl_data* %9, %struct.exit_ctl_data** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %10, i32 28)
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %13, i32 29)
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %16, i32 30)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %4, align 8
  switch i64 %19, label %48 [
    i64 128, label %20
    i64 129, label %20
    i64 130, label %35
  ]

20:                                               ; preds = %1, %1
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i8* @kvm_trans_pal_call_args(%struct.kvm_vcpu* %21, i64 %22)
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %26 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %24, i64* %28, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %30 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %29, i32 30)
  %31 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %32 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  store i8* %30, i8** %34, align 8
  br label %60

35:                                               ; preds = %1
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %38 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i8* @kvm_trans_pal_call_args(%struct.kvm_vcpu* %41, i64 %42)
  %44 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %45 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  store i8* %43, i8** %47, align 8
  br label %60

48:                                               ; preds = %1
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %51 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %55 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %54, i32 30)
  %56 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %57 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  store i8* %55, i8** %59, align 8
  br label %60

60:                                               ; preds = %48, %35, %20
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %63 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i64 %61, i64* %65, align 8
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %67 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %66, i32 31)
  %68 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %69 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i8* %67, i8** %71, align 8
  %72 = load i32, i32* @EXIT_REASON_PAL_CALL, align 4
  %73 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %74 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  ret void
}

declare dso_local i8* @vcpu_get_gr(%struct.kvm_vcpu*, i32) #1

declare dso_local i8* @kvm_trans_pal_call_args(%struct.kvm_vcpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
