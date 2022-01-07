; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k8.c_decrease_vid_code_by_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_powernow-k8.c_decrease_vid_code_by_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*, i64, i64)* @decrease_vid_code_by_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrease_vid_code_by_step(%struct.powernow_k8_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.powernow_k8_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %9 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = sub nsw i64 %10, %11
  %13 = load i64, i64* %7, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %17 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @write_new_vid(%struct.powernow_k8_data* %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %5, align 8
  %29 = call i32 @count_off_vst(%struct.powernow_k8_data* %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @write_new_vid(%struct.powernow_k8_data*, i64) #1

declare dso_local i32 @count_off_vst(%struct.powernow_k8_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
