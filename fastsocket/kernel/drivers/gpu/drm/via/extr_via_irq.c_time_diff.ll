; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_irq.c_time_diff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_irq.c_time_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*, %struct.timeval*)* @time_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_diff(%struct.timeval* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load %struct.timeval*, %struct.timeval** %3, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.timeval*, %struct.timeval** %4, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.timeval*, %struct.timeval** %3, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.timeval*, %struct.timeval** %4, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.timeval*, %struct.timeval** %4, align 8
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.timeval*, %struct.timeval** %3, align 8
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = sub nsw i64 1000000, %27
  br label %29

29:                                               ; preds = %20, %12
  %30 = phi i64 [ %19, %12 ], [ %28, %20 ]
  %31 = trunc i64 %30 to i32
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
