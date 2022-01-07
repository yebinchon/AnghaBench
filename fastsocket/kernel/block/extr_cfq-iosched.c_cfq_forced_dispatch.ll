; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_forced_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_forced_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.cfq_queue = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"forced_dispatch=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfq_data*)* @cfq_forced_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_forced_dispatch(%struct.cfq_data* %0) #0 {
  %2 = alloca %struct.cfq_data*, align 8
  %3 = alloca %struct.cfq_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.cfq_data* %0, %struct.cfq_data** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %6 = call i32 @cfq_slice_expired(%struct.cfq_data* %5, i32 0)
  br label %7

7:                                                ; preds = %11, %1
  %8 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %9 = call %struct.cfq_queue* @cfq_get_next_queue_forced(%struct.cfq_data* %8)
  store %struct.cfq_queue* %9, %struct.cfq_queue** %3, align 8
  %10 = icmp ne %struct.cfq_queue* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %13 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %14 = call i32 @__cfq_set_active_queue(%struct.cfq_data* %12, %struct.cfq_queue* %13)
  %15 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %16 = call i64 @__cfq_forced_dispatch_cfqq(%struct.cfq_queue* %15)
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %23 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.cfq_data*, %struct.cfq_data** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cfq_log(%struct.cfq_data* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @cfq_slice_expired(%struct.cfq_data*, i32) #1

declare dso_local %struct.cfq_queue* @cfq_get_next_queue_forced(%struct.cfq_data*) #1

declare dso_local i32 @__cfq_set_active_queue(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i64 @__cfq_forced_dispatch_cfqq(%struct.cfq_queue*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cfq_log(%struct.cfq_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
