; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_kick_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_qdio_kick_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, i32, i64, %struct.TYPE_2__*, i32, i32 (i32, i64, i32, i32, i32, i32)*, i64 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@QDIO_IRQ_STATE_ACTIVE = common dso_local global i64 0, align 8
@inbound_handler = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"kih s:%02x c:%02x\00", align 1
@outbound_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"koh: s:%02x c:%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*)* @qdio_kick_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_kick_handler(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %6 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %7 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %10 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %13 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QDIO_IRQ_STATE_ACTIVE, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %85

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @sub_buf(i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %28 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %33 = load i32, i32* @inbound_handler, align 4
  %34 = call i32 @qperf_inc(%struct.qdio_q* %32, i32 %33)
  %35 = load i32, i32* @DBF_INFO, align 4
  %36 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %37 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @DBF_DEV_EVENT(i32 %35, %struct.TYPE_2__* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %53

42:                                               ; preds = %23
  %43 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %44 = load i32, i32* @outbound_handler, align 4
  %45 = call i32 @qperf_inc(%struct.qdio_q* %43, i32 %44)
  %46 = load i32, i32* @DBF_INFO, align 4
  %47 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %48 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @DBF_DEV_EVENT(i32 %46, %struct.TYPE_2__* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %42, %31
  %54 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @qdio_handle_aobs(%struct.qdio_q* %54, i32 %55, i32 %56)
  %58 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %59 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %58, i32 0, i32 5
  %60 = load i32 (i32, i64, i32, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32, i32)** %59, align 8
  %61 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %62 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %67 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %70 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %75 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %60(i32 %65, i64 %68, i32 %71, i32 %72, i32 %73, i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %82 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %84 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %53, %22
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sub_buf(i32, i32) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_2__*, i8*, i32, i32) #1

declare dso_local i32 @qdio_handle_aobs(%struct.qdio_q*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
