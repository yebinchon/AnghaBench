; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_release_skbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_release_skbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_buffer = type { i32, i32 }
%struct.sk_buff = type { i64, i32, i64 }
%struct.iucv_sock = type { i32 (%struct.sk_buff*, i32)* }

@QETH_QDIO_BUF_PENDING = common dso_local global i64 0, align 8
@QETH_QDIO_BUF_IN_CQ = common dso_local global i64 0, align 8
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"skbr\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@ETH_P_AF_IUCV = common dso_local global i64 0, align 8
@TX_NOTIFY_GENERALERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_buffer*)* @qeth_release_skbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_release_skbs(%struct.qeth_qdio_out_buffer* %0) #0 {
  %2 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iucv_sock*, align 8
  %5 = alloca i32, align 4
  store %struct.qeth_qdio_out_buffer* %0, %struct.qeth_qdio_out_buffer** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %2, align 8
  %7 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %6, i32 0, i32 1
  %8 = call i64 @atomic_read(i32* %7)
  %9 = load i64, i64* @QETH_QDIO_BUF_PENDING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %13, i32 0, i32 1
  %15 = call i64 @atomic_read(i32* %14)
  %16 = load i64, i64* @QETH_QDIO_BUF_IN_CQ, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %2, align 8
  %21 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %20, i32 0, i32 0
  %22 = call %struct.sk_buff* @skb_dequeue(i32* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %3, align 8
  br label %23

23:                                               ; preds = %58, %12
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %67

26:                                               ; preds = %23
  %27 = load i32, i32* @TRACE, align 4
  %28 = call i32 @QETH_DBF_TEXT(i32 %27, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @TRACE, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = ptrtoint %struct.sk_buff* %30 to i64
  %32 = call i32 @QETH_DBF_TEXT_(i32 %29, i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ETH_P_AF_IUCV, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.iucv_sock* @iucv_sk(i64 %49)
  store %struct.iucv_sock* %50, %struct.iucv_sock** %4, align 8
  %51 = load %struct.iucv_sock*, %struct.iucv_sock** %4, align 8
  %52 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %51, i32 0, i32 0
  %53 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = load i32, i32* @TX_NOTIFY_GENERALERROR, align 4
  %56 = call i32 %53(%struct.sk_buff* %54, i32 %55)
  br label %57

57:                                               ; preds = %46, %41
  br label %58

58:                                               ; preds = %57, %35, %26
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = call i32 @atomic_dec(i32* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %62)
  %64 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %2, align 8
  %65 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %64, i32 0, i32 0
  %66 = call %struct.sk_buff* @skb_dequeue(i32* %65)
  store %struct.sk_buff* %66, %struct.sk_buff** %3, align 8
  br label %23

67:                                               ; preds = %23
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i64) #1

declare dso_local %struct.iucv_sock* @iucv_sk(i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
