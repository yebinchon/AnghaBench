; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm_fw.c_kvm_get_sal_call_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm_fw.c_kvm_get_sal_call_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.exit_ctl_data = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EXIT_REASON_SAL_CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @kvm_get_sal_call_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_get_sal_call_data(%struct.kvm_vcpu* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.kvm_vcpu*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.exit_ctl_data*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %21 = call %struct.exit_ctl_data* @kvm_get_exit_data(%struct.kvm_vcpu* %20)
  store %struct.exit_ctl_data* %21, %struct.exit_ctl_data** %19, align 8
  %22 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %19, align 8
  %23 = icmp ne %struct.exit_ctl_data* %22, null
  br i1 %23, label %24, label %80

24:                                               ; preds = %9
  %25 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %19, align 8
  %26 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EXIT_REASON_SAL_CALL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %24
  %31 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %19, align 8
  %32 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %19, align 8
  %38 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %12, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %19, align 8
  %44 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %13, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %19, align 8
  %50 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %14, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %19, align 8
  %56 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %15, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %19, align 8
  %62 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %16, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %19, align 8
  %68 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %17, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %19, align 8
  %74 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %18, align 8
  store i32 %77, i32* %78, align 4
  br label %82

79:                                               ; preds = %24
  br label %80

80:                                               ; preds = %79, %9
  %81 = load i32*, i32** %11, align 8
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %30
  ret void
}

declare dso_local %struct.exit_ctl_data* @kvm_get_exit_data(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
