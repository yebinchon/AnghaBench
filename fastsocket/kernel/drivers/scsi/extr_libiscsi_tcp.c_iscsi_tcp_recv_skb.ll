; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_recv_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_recv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, i32, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iscsi_segment }
%struct.iscsi_segment = type { i64, i64, i64, i64, i32 (%struct.iscsi_tcp_conn.0*, %struct.iscsi_segment*)* }
%struct.iscsi_tcp_conn.0 = type opaque
%struct.sk_buff = type { i32 }
%struct.skb_seq_state = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"in %d bytes\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Rx suspended!\0A\00", align 1
@ISCSI_TCP_SUSPENDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"no more data avail. Consumed %d\0A\00", align 1
@ISCSI_TCP_SKB_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"skb %p ptr=%p avail=%u\0A\00", align 1
@ISCSI_TCP_SEGMENT_DONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"segment done\0A\00", align 1
@ISCSI_TCP_CONN_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Error receiving PDU, errno=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_tcp_recv_skb(%struct.iscsi_conn* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.iscsi_tcp_conn*, align 8
  %13 = alloca %struct.iscsi_segment*, align 8
  %14 = alloca %struct.skb_seq_state, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 3
  %21 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %20, align 8
  store %struct.iscsi_tcp_conn* %21, %struct.iscsi_tcp_conn** %12, align 8
  %22 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %12, align 8
  %23 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.iscsi_segment* %24, %struct.iscsi_segment** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub i32 %28, %29
  %31 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @jiffies, align 4
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %5
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %42 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ISCSI_TCP_SUSPENDED, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %6, align 4
  br label %141

45:                                               ; preds = %5
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %50 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %53 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %110

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @skb_prepare_seq_read(%struct.sk_buff* %55, i32 %56, i32 %59, %struct.skb_seq_state* %14)
  br label %61

61:                                               ; preds = %54, %109
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @skb_seq_read(i32 %62, i32** %18, %struct.skb_seq_state* %14)
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %17, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ISCSI_TCP_SKB_DONE, align 4
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  %72 = call i32 @skb_abort_seq_read(%struct.skb_seq_state* %14)
  br label %134

73:                                               ; preds = %61
  %74 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %75 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %78 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = load i32, i32* %17, align 4
  %87 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %84, i32* %85, i32 %86)
  %88 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %12, align 8
  %89 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %90 = load i32*, i32** %18, align 8
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @iscsi_tcp_segment_recv(%struct.iscsi_tcp_conn* %88, %struct.iscsi_segment* %89, i32* %90, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUG_ON(i32 %95)
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %15, align 4
  %100 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %101 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %104 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %102, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %73
  %108 = call i32 @skb_abort_seq_read(%struct.skb_seq_state* %14)
  br label %110

109:                                              ; preds = %73
  br label %61

110:                                              ; preds = %107, %48
  %111 = load i32, i32* @ISCSI_TCP_SEGMENT_DONE, align 4
  %112 = load i32*, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  %113 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %114 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %115 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %116 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %115, i32 0, i32 4
  %117 = load i32 (%struct.iscsi_tcp_conn.0*, %struct.iscsi_segment*)*, i32 (%struct.iscsi_tcp_conn.0*, %struct.iscsi_segment*)** %116, align 8
  %118 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %12, align 8
  %119 = bitcast %struct.iscsi_tcp_conn* %118 to %struct.iscsi_tcp_conn.0*
  %120 = load %struct.iscsi_segment*, %struct.iscsi_segment** %13, align 8
  %121 = call i32 %117(%struct.iscsi_tcp_conn.0* %119, %struct.iscsi_segment* %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %110
  %125 = load i32, i32* @ISCSI_TCP_CONN_ERR, align 4
  %126 = load i32*, i32** %11, align 8
  store i32 %125, i32* %126, align 4
  %127 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  %130 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %130, i32 %131)
  store i32 0, i32* %6, align 4
  br label %141

133:                                              ; preds = %110
  br label %134

134:                                              ; preds = %133, %66
  %135 = load i32, i32* %15, align 4
  %136 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %137 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %134, %124, %40
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local i32 @ISCSI_DBG_TCP(%struct.iscsi_conn*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_prepare_seq_read(%struct.sk_buff*, i32, i32, %struct.skb_seq_state*) #1

declare dso_local i32 @skb_seq_read(i32, i32**, %struct.skb_seq_state*) #1

declare dso_local i32 @skb_abort_seq_read(%struct.skb_seq_state*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iscsi_tcp_segment_recv(%struct.iscsi_tcp_conn*, %struct.iscsi_segment*, i32*, i32) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
