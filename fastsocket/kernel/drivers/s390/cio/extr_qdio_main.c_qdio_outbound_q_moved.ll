; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_outbound_q_moved.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_outbound_q_moved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, i32, i32, i64 }

@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out moved:%1d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*)* @qdio_outbound_q_moved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdio_outbound_q_moved(%struct.qdio_q* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qdio_q*, align 8
  %4 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %3, align 8
  %5 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %6 = call i32 @get_outbound_buffer_frontier(%struct.qdio_q* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %9 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %7, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %14 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %20 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @DBF_INFO, align 4
  %22 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %23 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %26 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DBF_DEV_EVENT(i32 %21, i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @get_outbound_buffer_frontier(%struct.qdio_q*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
