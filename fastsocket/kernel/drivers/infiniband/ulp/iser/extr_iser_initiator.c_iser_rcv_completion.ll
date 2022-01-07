; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_rcv_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_rcv_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_rx_desc = type { i64, i32, %struct.iscsi_hdr }
%struct.iscsi_hdr = type { i32, i32 }
%struct.iser_conn = type { i8*, i64, i32, %struct.TYPE_3__*, %struct.iscsi_iser_conn* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_iser_conn = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@ISER_RX_LOGIN_SIZE = common dso_local global i32 0, align 4
@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"op 0x%x itt 0x%x dlen %d\0A\00", align 1
@ISER_HEADERS_LEN = common dso_local global i64 0, align 8
@ISER_MIN_POSTED_RX = common dso_local global i64 0, align 8
@ISER_QP_MAX_RECV_DTOS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"posting %d rx bufs err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_rcv_completion(%struct.iser_rx_desc* %0, i64 %1, %struct.iser_conn* %2) #0 {
  %4 = alloca %struct.iser_rx_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iser_conn*, align 8
  %7 = alloca %struct.iscsi_iser_conn*, align 8
  %8 = alloca %struct.iscsi_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iser_rx_desc* %0, %struct.iser_rx_desc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.iser_conn* %2, %struct.iser_conn** %6, align 8
  %14 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %15 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %14, i32 0, i32 4
  %16 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %15, align 8
  store %struct.iscsi_iser_conn* %16, %struct.iscsi_iser_conn** %7, align 8
  %17 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %18 = bitcast %struct.iser_rx_desc* %17 to i8*
  %19 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %20 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %25 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i32, i32* @ISER_RX_LOGIN_SIZE, align 4
  store i32 %27, i32* %10, align 4
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %30 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %35 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i32 @ib_dma_sync_single_for_cpu(i32 %38, i64 %39, i32 %40, i32 %41)
  %43 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %44 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %43, i32 0, i32 2
  store %struct.iscsi_hdr* %44, %struct.iscsi_hdr** %8, align 8
  %45 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %8, align 8
  %46 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %8, align 8
  %49 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @ISER_HEADERS_LEN, align 8
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @iser_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %54)
  %56 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %7, align 8
  %57 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %8, align 8
  %60 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %4, align 8
  %61 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @ISER_HEADERS_LEN, align 8
  %65 = sub i64 %63, %64
  %66 = call i32 @iscsi_iser_recv(i32 %58, %struct.iscsi_hdr* %59, i32 %62, i64 %65)
  %67 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %68 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %75 = call i32 @ib_dma_sync_single_for_device(i32 %71, i64 %72, i32 %73, i32 %74)
  %76 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %7, align 8
  %77 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 4
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %84 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %33
  br label %115

88:                                               ; preds = %33
  %89 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %90 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @ISER_MIN_POSTED_RX, align 8
  %95 = add nsw i64 %93, %94
  %96 = load i64, i64* @ISER_QP_MAX_RECV_DTOS, align 8
  %97 = icmp sle i64 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %88
  %99 = load i64, i64* @ISER_QP_MAX_RECV_DTOS, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %99, %101
  %103 = load i64, i64* @ISER_MIN_POSTED_RX, align 8
  %104 = call i32 @min(i64 %102, i64 %103)
  store i32 %104, i32* %12, align 4
  %105 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @iser_post_recvm(%struct.iser_conn* %105, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @iser_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %98
  br label %115

115:                                              ; preds = %87, %114, %88
  ret void
}

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i64, i32, i32) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @iscsi_iser_recv(i32, %struct.iscsi_hdr*, i32, i64) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i64, i32, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @iser_post_recvm(%struct.iser_conn*, i32) #1

declare dso_local i32 @iser_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
