; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_init_all_rr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_init_all_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32, i8*, i8* }

@vrr = common dso_local global i32* null, align 8
@VRN0 = common dso_local global i64 0, align 8
@VRN4 = common dso_local global i64 0, align 8
@GUEST_PHY_EMUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Machine Status conflicts!\0A\00", align 1
@VRN_SHIFT = common dso_local global i64 0, align 8
@VRN1 = common dso_local global i64 0, align 8
@VRN2 = common dso_local global i64 0, align 8
@VRN3 = common dso_local global i64 0, align 8
@VRN5 = common dso_local global i64 0, align 8
@VRN7 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_init_all_rr(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = load i32*, i32** @vrr, align 8
  %8 = load i64, i64* @VRN0, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @VMX(%struct.kvm_vcpu* %6, i32 %10)
  %12 = call i8* @vrrtomrr(i32 %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i8* %12, i8** %15, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = load i32*, i32** @vrr, align 8
  %18 = load i64, i64* @VRN4, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @VMX(%struct.kvm_vcpu* %16, i32 %20)
  %22 = call i8* @vrrtomrr(i32 %21)
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = call i64 @is_physical_mode(%struct.kvm_vcpu* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %1
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GUEST_PHY_EMUL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %39 = call i32 @panic_vm(%struct.kvm_vcpu* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %29
  %41 = load i64, i64* @VRN0, align 8
  %42 = load i64, i64* @VRN_SHIFT, align 8
  %43 = shl i64 %41, %42
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @ia64_set_rr(i64 %43, i8* %47)
  %49 = call i32 (...) @ia64_dv_serialize_data()
  %50 = load i64, i64* @VRN4, align 8
  %51 = load i64, i64* @VRN_SHIFT, align 8
  %52 = shl i64 %50, %51
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @ia64_set_rr(i64 %52, i8* %56)
  %58 = call i32 (...) @ia64_dv_serialize_data()
  br label %78

59:                                               ; preds = %1
  %60 = load i64, i64* @VRN0, align 8
  %61 = load i64, i64* @VRN_SHIFT, align 8
  %62 = shl i64 %60, %61
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @ia64_set_rr(i64 %62, i8* %66)
  %68 = call i32 (...) @ia64_dv_serialize_data()
  %69 = load i64, i64* @VRN4, align 8
  %70 = load i64, i64* @VRN_SHIFT, align 8
  %71 = shl i64 %69, %70
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @ia64_set_rr(i64 %71, i8* %75)
  %77 = call i32 (...) @ia64_dv_serialize_data()
  br label %78

78:                                               ; preds = %59, %40
  %79 = load i64, i64* @VRN1, align 8
  %80 = load i64, i64* @VRN_SHIFT, align 8
  %81 = shl i64 %79, %80
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %83 = load i32*, i32** @vrr, align 8
  %84 = load i64, i64* @VRN1, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @VMX(%struct.kvm_vcpu* %82, i32 %86)
  %88 = call i8* @vrrtomrr(i32 %87)
  %89 = call i32 @ia64_set_rr(i64 %81, i8* %88)
  %90 = call i32 (...) @ia64_dv_serialize_data()
  %91 = load i64, i64* @VRN2, align 8
  %92 = load i64, i64* @VRN_SHIFT, align 8
  %93 = shl i64 %91, %92
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %95 = load i32*, i32** @vrr, align 8
  %96 = load i64, i64* @VRN2, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @VMX(%struct.kvm_vcpu* %94, i32 %98)
  %100 = call i8* @vrrtomrr(i32 %99)
  %101 = call i32 @ia64_set_rr(i64 %93, i8* %100)
  %102 = call i32 (...) @ia64_dv_serialize_data()
  %103 = load i64, i64* @VRN3, align 8
  %104 = load i64, i64* @VRN_SHIFT, align 8
  %105 = shl i64 %103, %104
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %107 = load i32*, i32** @vrr, align 8
  %108 = load i64, i64* @VRN3, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @VMX(%struct.kvm_vcpu* %106, i32 %110)
  %112 = call i8* @vrrtomrr(i32 %111)
  %113 = call i32 @ia64_set_rr(i64 %105, i8* %112)
  %114 = call i32 (...) @ia64_dv_serialize_data()
  %115 = load i64, i64* @VRN5, align 8
  %116 = load i64, i64* @VRN_SHIFT, align 8
  %117 = shl i64 %115, %116
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %119 = load i32*, i32** @vrr, align 8
  %120 = load i64, i64* @VRN5, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @VMX(%struct.kvm_vcpu* %118, i32 %122)
  %124 = call i8* @vrrtomrr(i32 %123)
  %125 = call i32 @ia64_set_rr(i64 %117, i8* %124)
  %126 = call i32 (...) @ia64_dv_serialize_data()
  %127 = load i64, i64* @VRN7, align 8
  %128 = load i64, i64* @VRN_SHIFT, align 8
  %129 = shl i64 %127, %128
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %131 = load i32*, i32** @vrr, align 8
  %132 = load i64, i64* @VRN7, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @VMX(%struct.kvm_vcpu* %130, i32 %134)
  %136 = call i8* @vrrtomrr(i32 %135)
  %137 = call i32 @ia64_set_rr(i64 %129, i8* %136)
  %138 = call i32 (...) @ia64_dv_serialize_data()
  %139 = call i32 (...) @ia64_srlz_d()
  %140 = load i64, i64* %3, align 8
  %141 = call i32 @ia64_set_psr(i64 %140)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @vrrtomrr(i32) #1

declare dso_local i32 @VMX(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @is_physical_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @panic_vm(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @ia64_set_rr(i64, i8*) #1

declare dso_local i32 @ia64_dv_serialize_data(...) #1

declare dso_local i32 @ia64_srlz_d(...) #1

declare dso_local i32 @ia64_set_psr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
