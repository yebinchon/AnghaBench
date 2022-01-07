; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_dist_from_last.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_dist_from_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i64 }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cfq_data*, %struct.request*)* @cfq_dist_from_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cfq_dist_from_last(%struct.cfq_data* %0, %struct.request* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %6 = load %struct.request*, %struct.request** %5, align 8
  %7 = call i64 @blk_rq_pos(%struct.request* %6)
  %8 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %9 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.request*, %struct.request** %5, align 8
  %14 = call i64 @blk_rq_pos(%struct.request* %13)
  %15 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %16 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %3, align 8
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %21 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = call i64 @blk_rq_pos(%struct.request* %23)
  %25 = sub nsw i64 %22, %24
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %19, %12
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
