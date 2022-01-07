; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_get_inbound_buffer_frontier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_get_inbound_buffer_frontier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@QDIO_MAX_BUFFERS_MASK = common dso_local global i32 0, align 4
@inbound_queue_full = common dso_local global i32 0, align 4
@DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"in nop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*)* @get_inbound_buffer_frontier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_inbound_buffer_frontier(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %6 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %7 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %6, i32 0, i32 3
  %8 = call i32 @atomic_read(i32* %7)
  %9 = load i32, i32* @QDIO_MAX_BUFFERS_MASK, align 4
  %10 = call i32 @min(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %12 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @add_buf(i32 %13, i32 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %18 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %118

23:                                               ; preds = %1
  %24 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %25 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %26 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @get_buf_states(%struct.qdio_q* %24, i32 %27, i8* %5, i32 %28, i32 1, i32 0)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %118

33:                                               ; preds = %23
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  switch i32 %35, label %115 [
    i32 128, label %36
    i32 130, label %69
    i32 132, label %96
    i32 129, label %96
    i32 131, label %96
  ]

36:                                               ; preds = %33
  %37 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @inbound_primed(%struct.qdio_q* %37, i32 %38)
  %40 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %41 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i8* @add_buf(i32 %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %47 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %50 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %49, i32 0, i32 3
  %51 = call i32 @atomic_sub(i32 %48, i32* %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %36
  %54 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %55 = load i32, i32* @inbound_queue_full, align 4
  %56 = call i32 @qperf_inc(%struct.qdio_q* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %36
  %58 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %59 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @account_sbals(%struct.qdio_q* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %57
  br label %117

69:                                               ; preds = %33
  %70 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @process_buffer_error(%struct.qdio_q* %70, i32 %71)
  %73 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %74 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i8* @add_buf(i32 %75, i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %80 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %83 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %82, i32 0, i32 3
  %84 = call i32 @atomic_sub(i32 %81, i32* %83)
  %85 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %86 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %69
  %92 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @account_sbals_error(%struct.qdio_q* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %69
  br label %117

96:                                               ; preds = %33, %33, %33
  %97 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %98 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %105 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %96
  %110 = load i32, i32* @DBF_INFO, align 4
  %111 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %112 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = call i32 @DBF_DEV_EVENT(i32 %110, %struct.TYPE_4__* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %117

115:                                              ; preds = %33
  %116 = call i32 (...) @BUG()
  br label %117

117:                                              ; preds = %115, %109, %95, %68
  br label %118

118:                                              ; preds = %117, %32, %22
  %119 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %120 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  ret i32 %121
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i8* @add_buf(i32, i32) #1

declare dso_local i32 @get_buf_states(%struct.qdio_q*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @inbound_primed(%struct.qdio_q*, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @account_sbals(%struct.qdio_q*, i32) #1

declare dso_local i32 @process_buffer_error(%struct.qdio_q*, i32) #1

declare dso_local i32 @account_sbals_error(%struct.qdio_q*, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
