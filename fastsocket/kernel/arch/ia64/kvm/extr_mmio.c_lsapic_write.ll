; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_mmio.c_lsapic_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_mmio.c_lsapic_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@PIB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Undefined write on PIB INTA\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Undefined write on PIB XTP\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Can't LHF write with size %ld!\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"IPI-UHF write %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lsapic_write(%struct.kvm_vcpu* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* @PIB_SIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* %6, align 8
  %13 = and i64 %12, %11
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  switch i64 %14, label %29 [
    i64 129, label %15
    i64 128, label %18
  ]

15:                                               ; preds = %4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = call i32 (%struct.kvm_vcpu*, i8*, ...) @panic_vm(%struct.kvm_vcpu* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %51

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @vlsapic_write_xtp(%struct.kvm_vcpu* %22, i64 %23)
  br label %28

25:                                               ; preds = %18
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %27 = call i32 (%struct.kvm_vcpu*, i8*, ...) @panic_vm(%struct.kvm_vcpu* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  br label %51

29:                                               ; preds = %4
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @PIB_LOW_HALF(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 8
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 (%struct.kvm_vcpu*, i8*, ...) @panic_vm(%struct.kvm_vcpu* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  br label %45

40:                                               ; preds = %33
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @vlsapic_write_ipi(%struct.kvm_vcpu* %41, i64 %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %36
  br label %50

46:                                               ; preds = %29
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 (%struct.kvm_vcpu*, i8*, ...) @panic_vm(%struct.kvm_vcpu* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %46, %45
  br label %51

51:                                               ; preds = %50, %28, %15
  ret void
}

declare dso_local i32 @panic_vm(%struct.kvm_vcpu*, i8*, ...) #1

declare dso_local i32 @vlsapic_write_xtp(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @PIB_LOW_HALF(i64) #1

declare dso_local i32 @vlsapic_write_ipi(%struct.kvm_vcpu*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
