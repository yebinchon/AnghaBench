; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_set_xcrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_set_xcrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_xcrs = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@cpu_has_xsave = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KVM_MAX_XCRS = common dso_local global i32 0, align 4
@XCR_XFEATURE_ENABLED_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_xcrs*)* @kvm_vcpu_ioctl_x86_set_xcrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vcpu_ioctl_x86_set_xcrs(%struct.kvm_vcpu* %0, %struct.kvm_xcrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_xcrs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_xcrs* %1, %struct.kvm_xcrs** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @cpu_has_xsave, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.kvm_xcrs*, %struct.kvm_xcrs** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_xcrs, %struct.kvm_xcrs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @KVM_MAX_XCRS, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.kvm_xcrs*, %struct.kvm_xcrs** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_xcrs, %struct.kvm_xcrs* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %13
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %65

27:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.kvm_xcrs*, %struct.kvm_xcrs** %5, align 8
  %31 = getelementptr inbounds %struct.kvm_xcrs, %struct.kvm_xcrs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = load %struct.kvm_xcrs*, %struct.kvm_xcrs** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_xcrs, %struct.kvm_xcrs* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @XCR_XFEATURE_ENABLED_MASK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = load i64, i64* @XCR_XFEATURE_ENABLED_MASK, align 8
  %46 = load %struct.kvm_xcrs*, %struct.kvm_xcrs** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_xcrs, %struct.kvm_xcrs* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @__kvm_set_xcr(%struct.kvm_vcpu* %44, i64 %45, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %57

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %28

57:                                               ; preds = %43, %28
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %24, %10
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @__kvm_set_xcr(%struct.kvm_vcpu*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
