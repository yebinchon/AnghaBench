; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_update_seg_num.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_update_seg_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mad_rmpp_recv = type { i64, %struct.ib_mad_recv_buf*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.ib_mad_recv_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mad_rmpp_recv*, %struct.ib_mad_recv_buf*)* @update_seg_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_seg_num(%struct.mad_rmpp_recv* %0, %struct.ib_mad_recv_buf* %1) #0 {
  %3 = alloca %struct.mad_rmpp_recv*, align 8
  %4 = alloca %struct.ib_mad_recv_buf*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.mad_rmpp_recv* %0, %struct.mad_rmpp_recv** %3, align 8
  store %struct.ib_mad_recv_buf* %1, %struct.ib_mad_recv_buf** %4, align 8
  %6 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %3, align 8
  %7 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.list_head* %9, %struct.list_head** %5, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.ib_mad_recv_buf*, %struct.ib_mad_recv_buf** %4, align 8
  %12 = icmp ne %struct.ib_mad_recv_buf* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.ib_mad_recv_buf*, %struct.ib_mad_recv_buf** %4, align 8
  %15 = call i64 @get_seg_num(%struct.ib_mad_recv_buf* %14)
  %16 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %3, align 8
  %17 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = icmp eq i64 %15, %19
  br label %21

21:                                               ; preds = %13, %10
  %22 = phi i1 [ false, %10 ], [ %20, %13 ]
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = load %struct.ib_mad_recv_buf*, %struct.ib_mad_recv_buf** %4, align 8
  %25 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %3, align 8
  %26 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %25, i32 0, i32 1
  store %struct.ib_mad_recv_buf* %24, %struct.ib_mad_recv_buf** %26, align 8
  %27 = load %struct.mad_rmpp_recv*, %struct.mad_rmpp_recv** %3, align 8
  %28 = getelementptr inbounds %struct.mad_rmpp_recv, %struct.mad_rmpp_recv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.list_head*, %struct.list_head** %5, align 8
  %32 = load %struct.ib_mad_recv_buf*, %struct.ib_mad_recv_buf** %4, align 8
  %33 = call %struct.ib_mad_recv_buf* @get_next_seg(%struct.list_head* %31, %struct.ib_mad_recv_buf* %32)
  store %struct.ib_mad_recv_buf* %33, %struct.ib_mad_recv_buf** %4, align 8
  br label %10

34:                                               ; preds = %21
  ret void
}

declare dso_local i64 @get_seg_num(%struct.ib_mad_recv_buf*) #1

declare dso_local %struct.ib_mad_recv_buf* @get_next_seg(%struct.list_head*, %struct.ib_mad_recv_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
