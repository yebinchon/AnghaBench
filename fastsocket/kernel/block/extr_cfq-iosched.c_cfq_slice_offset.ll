; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_slice_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_slice_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.cfq_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cfq_data*, %struct.cfq_queue*)* @cfq_slice_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cfq_slice_offset(%struct.cfq_data* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %4, align 8
  %5 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %6 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %12 = call i32 @cfq_prio_slice(%struct.cfq_data* %11, i32 1, i32 0)
  %13 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %14 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %15 = call i32 @cfq_cfqq_sync(%struct.cfq_queue* %14)
  %16 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %17 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @cfq_prio_slice(%struct.cfq_data* %13, i32 %15, i32 %18)
  %20 = sub nsw i32 %12, %19
  %21 = mul nsw i32 %10, %20
  %22 = sext i32 %21 to i64
  ret i64 %22
}

declare dso_local i32 @cfq_prio_slice(%struct.cfq_data*, i32, i32) #1

declare dso_local i32 @cfq_cfqq_sync(%struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
