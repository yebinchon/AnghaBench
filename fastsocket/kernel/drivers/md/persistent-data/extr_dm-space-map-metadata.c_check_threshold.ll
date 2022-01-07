; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-metadata.c_check_threshold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-metadata.c_check_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.threshold = type { i32, i32, i32, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.threshold*, i32)* @check_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_threshold(%struct.threshold* %0, i32 %1) #0 {
  %3 = alloca %struct.threshold*, align 8
  %4 = alloca i32, align 4
  store %struct.threshold* %0, %struct.threshold** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.threshold*, %struct.threshold** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @below_threshold(%struct.threshold* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.threshold*, %struct.threshold** %3, align 8
  %11 = call i32 @threshold_already_triggered(%struct.threshold* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load %struct.threshold*, %struct.threshold** %3, align 8
  %15 = getelementptr inbounds %struct.threshold, %struct.threshold* %14, i32 0, i32 3
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load %struct.threshold*, %struct.threshold** %3, align 8
  %18 = getelementptr inbounds %struct.threshold, %struct.threshold* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19)
  br label %21

21:                                               ; preds = %13, %9, %2
  %22 = load %struct.threshold*, %struct.threshold** %3, align 8
  %23 = getelementptr inbounds %struct.threshold, %struct.threshold* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.threshold*, %struct.threshold** %3, align 8
  %26 = getelementptr inbounds %struct.threshold, %struct.threshold* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i64 @below_threshold(%struct.threshold*, i32) #1

declare dso_local i32 @threshold_already_triggered(%struct.threshold*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
