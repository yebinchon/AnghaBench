; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_cpum_cf.c_get_counter_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_cpum_cf.c_get_counter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUMF_CTR_SET_BASIC = common dso_local global i32 0, align 4
@CPUMF_CTR_SET_USER = common dso_local global i32 0, align 4
@CPUMF_CTR_SET_CRYPTO = common dso_local global i32 0, align 4
@CPUMF_CTR_SET_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_counter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_counter_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 32
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @CPUMF_CTR_SET_BASIC, align 4
  store i32 %7, i32* %3, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 64
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @CPUMF_CTR_SET_USER, align 4
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %8
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @CPUMF_CTR_SET_CRYPTO, align 4
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @CPUMF_CTR_SET_EXT, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %18
  br label %24

24:                                               ; preds = %23, %16
  br label %25

25:                                               ; preds = %24, %11
  br label %26

26:                                               ; preds = %25, %6
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
