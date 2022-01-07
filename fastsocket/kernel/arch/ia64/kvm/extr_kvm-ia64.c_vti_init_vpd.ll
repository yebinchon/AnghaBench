; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_vti_init_vpd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_vti_init_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%union.cpuid3_t = type { i32 }
%struct.vpd = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@KVM_VM_BUFFER_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @vti_init_vpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vti_init_vpd(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.cpuid3_t, align 4
  %6 = alloca %struct.vpd*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vpd* @to_host(i32 %9, i32 %13)
  store %struct.vpd* %14, %struct.vpd** %6, align 8
  %15 = load %struct.vpd*, %struct.vpd** %6, align 8
  %16 = call i64 @IS_ERR(%struct.vpd* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.vpd*, %struct.vpd** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.vpd* %19)
  store i32 %20, i32* %2, align 4
  br label %78

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 5
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ia64_get_cpuid(i32 %26)
  %28 = load %struct.vpd*, %struct.vpd** %6, align 8
  %29 = getelementptr inbounds %struct.vpd, %struct.vpd* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load %struct.vpd*, %struct.vpd** %6, align 8
  %39 = getelementptr inbounds %struct.vpd, %struct.vpd* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = bitcast %union.cpuid3_t* %5 to i32*
  store i32 %42, i32* %43, align 4
  %44 = bitcast %union.cpuid3_t* %5 to i32*
  store i32 4, i32* %44, align 4
  %45 = bitcast %union.cpuid3_t* %5 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vpd*, %struct.vpd** %6, align 8
  %48 = getelementptr inbounds %struct.vpd, %struct.vpd* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %46, i32* %50, align 4
  %51 = load %struct.vpd*, %struct.vpd** %6, align 8
  %52 = getelementptr inbounds %struct.vpd, %struct.vpd* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.vpd*, %struct.vpd** %6, align 8
  %55 = getelementptr inbounds %struct.vpd, %struct.vpd* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.vpd*, %struct.vpd** %6, align 8
  %58 = getelementptr inbounds %struct.vpd, %struct.vpd* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load %struct.vpd*, %struct.vpd** %6, align 8
  %61 = getelementptr inbounds %struct.vpd, %struct.vpd* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = load %struct.vpd*, %struct.vpd** %6, align 8
  %64 = getelementptr inbounds %struct.vpd, %struct.vpd* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  store i32 1, i32* %65, align 8
  %66 = load %struct.vpd*, %struct.vpd** %6, align 8
  %67 = getelementptr inbounds %struct.vpd, %struct.vpd* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 5
  store i32 1, i32* %68, align 4
  %69 = load %struct.vpd*, %struct.vpd** %6, align 8
  %70 = getelementptr inbounds %struct.vpd, %struct.vpd* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 6
  store i32 1, i32* %71, align 8
  %72 = load %struct.vpd*, %struct.vpd** %6, align 8
  %73 = getelementptr inbounds %struct.vpd, %struct.vpd* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* @KVM_VM_BUFFER_BASE, align 4
  %76 = load %struct.vpd*, %struct.vpd** %6, align 8
  %77 = getelementptr inbounds %struct.vpd, %struct.vpd* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %37, %18
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.vpd* @to_host(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.vpd*) #1

declare dso_local i32 @PTR_ERR(%struct.vpd*) #1

declare dso_local i32 @ia64_get_cpuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
