; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_notify_skbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_notify_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32 }
%struct.qeth_qdio_out_buffer = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.iucv_sock = type { i32 (%struct.sk_buff*, i32)* }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"skbn%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@ETH_P_AF_IUCV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_buffer*, i32)* @qeth_notify_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_notify_skbs(%struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_qdio_out_q*, align 8
  %5 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.iucv_sock*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %4, align 8
  store %struct.qeth_qdio_out_buffer* %1, %struct.qeth_qdio_out_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %10 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %9, i32 0, i32 0
  %11 = call i64 @skb_queue_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %66

14:                                               ; preds = %3
  %15 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %16 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %15, i32 0, i32 0
  %17 = call %struct.sk_buff* @skb_peek(i32* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %7, align 8
  br label %18

18:                                               ; preds = %64, %14
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %65

21:                                               ; preds = %18
  %22 = load i32, i32* @TRACE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = call i32 @QETH_DBF_TEXT_(i32 %22, i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @TRACE, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = ptrtoint %struct.sk_buff* %27 to i64
  %29 = call i32 @QETH_DBF_TEXT_(i32 %26, i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ETH_P_AF_IUCV, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %21
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.iucv_sock* @iucv_sk(i64 %43)
  store %struct.iucv_sock* %44, %struct.iucv_sock** %8, align 8
  %45 = load %struct.iucv_sock*, %struct.iucv_sock** %8, align 8
  %46 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %45, i32 0, i32 0
  %47 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 %47(%struct.sk_buff* %48, i32 %49)
  br label %51

51:                                               ; preds = %40, %35
  br label %52

52:                                               ; preds = %51, %21
  %53 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %53, i32 0, i32 0
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call i64 @skb_queue_is_last(i32* %54, %struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %64

59:                                               ; preds = %52
  %60 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %5, align 8
  %61 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %60, i32 0, i32 0
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call %struct.sk_buff* @skb_queue_next(i32* %61, %struct.sk_buff* %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %7, align 8
  br label %64

64:                                               ; preds = %59, %58
  br label %18

65:                                               ; preds = %18
  br label %66

66:                                               ; preds = %65, %13
  ret void
}

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i64) #1

declare dso_local %struct.iucv_sock* @iucv_sk(i64) #1

declare dso_local i64 @skb_queue_is_last(i32*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_queue_next(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
