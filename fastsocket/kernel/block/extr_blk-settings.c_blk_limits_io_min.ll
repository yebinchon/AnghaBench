; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-settings.c_blk_limits_io_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-settings.c_blk_limits_io_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_limits = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_limits_io_min(%struct.queue_limits* %0, i32 %1) #0 {
  %3 = alloca %struct.queue_limits*, align 8
  %4 = alloca i32, align 4
  store %struct.queue_limits* %0, %struct.queue_limits** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.queue_limits*, %struct.queue_limits** %3, align 8
  %7 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.queue_limits*, %struct.queue_limits** %3, align 8
  %9 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.queue_limits*, %struct.queue_limits** %3, align 8
  %12 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.queue_limits*, %struct.queue_limits** %3, align 8
  %17 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.queue_limits*, %struct.queue_limits** %3, align 8
  %20 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.queue_limits*, %struct.queue_limits** %3, align 8
  %23 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.queue_limits*, %struct.queue_limits** %3, align 8
  %26 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.queue_limits*, %struct.queue_limits** %3, align 8
  %31 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.queue_limits*, %struct.queue_limits** %3, align 8
  %34 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %29, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
