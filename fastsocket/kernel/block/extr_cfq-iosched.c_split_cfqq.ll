; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_split_cfqq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_split_cfqq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cfq_io_context = type { i32 }
%struct.cfq_queue = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_queue* (%struct.cfq_io_context*, %struct.cfq_queue*)* @split_cfqq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_queue* @split_cfqq(%struct.cfq_io_context* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca %struct.cfq_queue*, align 8
  %4 = alloca %struct.cfq_io_context*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_io_context* %0, %struct.cfq_io_context** %4, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %5, align 8
  %6 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %7 = call i32 @cfqq_process_refs(%struct.cfq_queue* %6)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %14 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %16 = call i32 @cfq_clear_cfqq_coop(%struct.cfq_queue* %15)
  %17 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %18 = call i32 @cfq_clear_cfqq_split_coop(%struct.cfq_queue* %17)
  %19 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  store %struct.cfq_queue* %19, %struct.cfq_queue** %3, align 8
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.cfq_io_context*, %struct.cfq_io_context** %4, align 8
  %22 = call i32 @cic_set_cfqq(%struct.cfq_io_context* %21, i32* null, i32 1)
  %23 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %24 = call i32 @cfq_put_queue(%struct.cfq_queue* %23)
  store %struct.cfq_queue* null, %struct.cfq_queue** %3, align 8
  br label %25

25:                                               ; preds = %20, %9
  %26 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  ret %struct.cfq_queue* %26
}

declare dso_local i32 @cfqq_process_refs(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_coop(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_split_coop(%struct.cfq_queue*) #1

declare dso_local i32 @cic_set_cfqq(%struct.cfq_io_context*, i32*, i32) #1

declare dso_local i32 @cfq_put_queue(%struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
