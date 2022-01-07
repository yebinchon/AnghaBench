; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_init_erratum_383.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_init_erratum_383.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MSR_AMD64_DC_CFG = common dso_local global i32 0, align 4
@erratum_383_found = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @svm_init_erratum_383 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_init_erratum_383() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %6 = icmp ne i32 %5, 16
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %25

8:                                                ; preds = %0
  %9 = load i32, i32* @MSR_AMD64_DC_CFG, align 4
  %10 = call i64 @native_read_msr_safe(i32 %9, i32* %3)
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %25

14:                                               ; preds = %8
  %15 = load i64, i64* %4, align 8
  %16 = or i64 %15, 140737488355328
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @lower_32_bits(i64 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @upper_32_bits(i64 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* @MSR_AMD64_DC_CFG, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @native_write_msr_safe(i32 %21, i32 %22, i32 %23)
  store i32 1, i32* @erratum_383_found, align 4
  br label %25

25:                                               ; preds = %14, %13, %7
  ret void
}

declare dso_local i64 @native_read_msr_safe(i32, i32*) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @native_write_msr_safe(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
