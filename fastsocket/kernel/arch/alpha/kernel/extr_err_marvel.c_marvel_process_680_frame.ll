; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_marvel.c_marvel_process_680_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_marvel.c_marvel_process_680_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev7_lf_subpackets = type { i64* }

@MCHK_DISPOSITION_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@EL_TYPE__PAL__ENV__AMBIENT_TEMPERATURE = common dso_local global i32 0, align 4
@EL_TYPE__PAL__ENV__HOT_PLUG = common dso_local global i32 0, align 4
@MCHK_DISPOSITION_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ev7_lf_subpackets*, i32)* @marvel_process_680_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvel_process_680_frame(%struct.ev7_lf_subpackets* %0, i32 %1) #0 {
  %3 = alloca %struct.ev7_lf_subpackets*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ev7_lf_subpackets* %0, %struct.ev7_lf_subpackets** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @MCHK_DISPOSITION_UNKNOWN_ERROR, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @EL_TYPE__PAL__ENV__AMBIENT_TEMPERATURE, align 4
  %9 = call i32 @ev7_lf_env_index(i32 %8)
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @EL_TYPE__PAL__ENV__HOT_PLUG, align 4
  %13 = call i32 @ev7_lf_env_index(i32 %12)
  %14 = icmp sle i32 %11, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  %17 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @MCHK_DISPOSITION_REPORT, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  %35 = call i32 @marvel_print_680_frame(%struct.ev7_lf_subpackets* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @ev7_lf_env_index(i32) #1

declare dso_local i32 @marvel_print_680_frame(%struct.ev7_lf_subpackets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
