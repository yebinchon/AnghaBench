; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_cleanup_handled_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_cleanup_handled_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { %struct.TYPE_6__*, %struct.qeth_qdio_out_buffer**, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.qeth_qdio_out_buffer = type { i32, i32, %struct.qeth_qdio_out_buffer* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_HANDLED_DELAYED = common dso_local global i64 0, align 8
@qeth_qdio_outbuf_cache = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clprecov\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*, i32, i32)* @qeth_cleanup_handled_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_cleanup_handled_pending(%struct.qeth_qdio_out_q* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_qdio_out_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %8 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %9 = alloca %struct.qeth_qdio_out_buffer*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %11 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %123

19:                                               ; preds = %3
  %20 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %21 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %20, i32 0, i32 1
  %22 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %22, i64 %24
  %26 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %25, align 8
  %27 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %26, i32 0, i32 2
  %28 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %27, align 8
  %29 = icmp ne %struct.qeth_qdio_out_buffer* %28, null
  br i1 %29, label %30, label %86

30:                                               ; preds = %19
  %31 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %32 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %31, i32 0, i32 1
  %33 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %33, i64 %35
  %37 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %36, align 8
  store %struct.qeth_qdio_out_buffer* %37, %struct.qeth_qdio_out_buffer** %7, align 8
  %38 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %39 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %38, i32 0, i32 1
  %40 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %40, i64 %42
  %44 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %43, align 8
  %45 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %44, i32 0, i32 2
  %46 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %45, align 8
  store %struct.qeth_qdio_out_buffer* %46, %struct.qeth_qdio_out_buffer** %8, align 8
  br label %47

47:                                               ; preds = %84, %30
  %48 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %49 = icmp ne %struct.qeth_qdio_out_buffer* %48, null
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %55 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %54, i32 0, i32 1
  %56 = call i64 @atomic_read(i32* %55)
  %57 = load i64, i64* @QETH_QDIO_BUF_HANDLED_DELAYED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %53, %50
  %60 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  store %struct.qeth_qdio_out_buffer* %60, %struct.qeth_qdio_out_buffer** %9, align 8
  %61 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %62 = call i32 @qeth_release_skbs(%struct.qeth_qdio_out_buffer* %61)
  %63 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %64 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %63, i32 0, i32 2
  %65 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %64, align 8
  store %struct.qeth_qdio_out_buffer* %65, %struct.qeth_qdio_out_buffer** %8, align 8
  %66 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %7, align 8
  %67 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %66, i32 0, i32 2
  %68 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %67, align 8
  %69 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %70 = icmp ne %struct.qeth_qdio_out_buffer* %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %74 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %7, align 8
  %75 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %74, i32 0, i32 2
  store %struct.qeth_qdio_out_buffer* %73, %struct.qeth_qdio_out_buffer** %75, align 8
  %76 = load i32, i32* @qeth_qdio_outbuf_cache, align 4
  %77 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %9, align 8
  %78 = call i32 @kmem_cache_free(i32 %76, %struct.qeth_qdio_out_buffer* %77)
  br label %84

79:                                               ; preds = %53
  %80 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  store %struct.qeth_qdio_out_buffer* %80, %struct.qeth_qdio_out_buffer** %7, align 8
  %81 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %82 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %81, i32 0, i32 2
  %83 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %82, align 8
  store %struct.qeth_qdio_out_buffer* %83, %struct.qeth_qdio_out_buffer** %8, align 8
  br label %84

84:                                               ; preds = %79, %59
  br label %47

85:                                               ; preds = %47
  br label %86

86:                                               ; preds = %85, %19
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %86
  %90 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %91 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %90, i32 0, i32 1
  %92 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %92, i64 %94
  %96 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %95, align 8
  %97 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %96, i32 0, i32 1
  %98 = call i64 @atomic_read(i32* %97)
  %99 = load i64, i64* @QETH_QDIO_BUF_HANDLED_DELAYED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %89
  %102 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %103 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %111 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %110, i32 0, i32 1
  %112 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %112, i64 %114
  %116 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %115, align 8
  %117 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %116, i32 0, i32 0
  store i32 %109, i32* %117, align 8
  %118 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q* %118, i32 %119)
  %121 = load i32, i32* @TRACE, align 4
  %122 = call i32 @QETH_DBF_TEXT(i32 %121, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %123

123:                                              ; preds = %18, %101, %89, %86
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @qeth_release_skbs(%struct.qeth_qdio_out_buffer*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.qeth_qdio_out_buffer*) #1

declare dso_local i32 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q*, i32) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
