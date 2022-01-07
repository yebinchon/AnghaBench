; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_init_qdio_out_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_init_qdio_out_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { %struct.TYPE_3__*, %struct.qeth_qdio_out_buffer**, i32* }
%struct.TYPE_3__ = type { %struct.qeth_qdio_out_buffer* }
%struct.qeth_qdio_out_buffer = type { i32, %struct.qeth_qdio_out_buffer*, i32*, %struct.qeth_qdio_out_q*, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }

@qeth_qdio_outbuf_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qdio_out_skb_queue_key = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_qdio_out_q*, i32)* @qeth_init_qdio_out_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q* %0, i32 %1) #0 {
  %3 = alloca %struct.qeth_qdio_out_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_qdio_out_buffer*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @qeth_qdio_outbuf_cache, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.qeth_qdio_out_buffer* @kmem_cache_zalloc(i32 %7, i32 %8)
  store %struct.qeth_qdio_out_buffer* %9, %struct.qeth_qdio_out_buffer** %6, align 8
  %10 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %11 = icmp ne %struct.qeth_qdio_out_buffer* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %17 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %22, i32 0, i32 5
  store i32* %21, i32** %23, align 8
  %24 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %24, i32 0, i32 4
  %26 = call i32 @skb_queue_head_init(%struct.TYPE_4__* %25)
  %27 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @lockdep_set_class(i32* %29, i32* @qdio_out_skb_queue_key)
  %31 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %32 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %32, i32 0, i32 3
  store %struct.qeth_qdio_out_q* %31, %struct.qeth_qdio_out_q** %33, align 8
  %34 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %37 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %36, i32 0, i32 1
  %38 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %38, i64 %40
  %42 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %41, align 8
  %43 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %43, i32 0, i32 1
  store %struct.qeth_qdio_out_buffer* %42, %struct.qeth_qdio_out_buffer** %44, align 8
  %45 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* @QETH_QDIO_BUF_EMPTY, align 4
  %48 = call i32 @atomic_set(i32* %46, i32 %47)
  %49 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %50 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %51 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %50, i32 0, i32 1
  %52 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %52, i64 %54
  store %struct.qeth_qdio_out_buffer* %49, %struct.qeth_qdio_out_buffer** %55, align 8
  %56 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %57 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %15
  %61 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %62 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %63 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store %struct.qeth_qdio_out_buffer* %61, %struct.qeth_qdio_out_buffer** %68, align 8
  br label %69

69:                                               ; preds = %60, %15
  br label %70

70:                                               ; preds = %69, %12
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.qeth_qdio_out_buffer* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(%struct.TYPE_4__*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
