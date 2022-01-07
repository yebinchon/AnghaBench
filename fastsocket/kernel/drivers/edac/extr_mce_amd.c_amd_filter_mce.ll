; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mce_amd.c_amd_filter_mce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mce_amd.c_amd_filter_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32, i32 }

@report_gart_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mce*)* @amd_filter_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_filter_mce(%struct.mce* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mce*, align 8
  %4 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %3, align 8
  %5 = load %struct.mce*, %struct.mce** %3, align 8
  %6 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 16
  %9 = and i32 %8, 31
  store i32 %9, i32* %4, align 4
  %10 = load %struct.mce*, %struct.mce** %3, align 8
  %11 = getelementptr inbounds %struct.mce, %struct.mce* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @report_gart_errors, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %22

21:                                               ; preds = %17, %14, %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
