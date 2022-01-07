; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_op_model_amd.c_get_ibs_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_op_model_amd.c_get_ibs_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_IBS = common dso_local global i32 0, align 4
@IBS_CPUID_FEATURES = common dso_local global i32 0, align 4
@IBS_CAPS_DEFAULT = common dso_local global i32 0, align 4
@IBS_CAPS_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_ibs_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ibs_caps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @X86_FEATURE_IBS, align 4
  %5 = call i32 @boot_cpu_has(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %28

8:                                                ; preds = %0
  %9 = call i8* @cpuid_eax(i32 -2147483648)
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IBS_CPUID_FEATURES, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @IBS_CAPS_DEFAULT, align 4
  store i32 %15, i32* %1, align 4
  br label %28

16:                                               ; preds = %8
  %17 = load i32, i32* @IBS_CPUID_FEATURES, align 4
  %18 = call i8* @cpuid_eax(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @IBS_CAPS_AVAIL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @IBS_CAPS_DEFAULT, align 4
  store i32 %25, i32* %1, align 4
  br label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %26, %24, %14, %7
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i8* @cpuid_eax(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
