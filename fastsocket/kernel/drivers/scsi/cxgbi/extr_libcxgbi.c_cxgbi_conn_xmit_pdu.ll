; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_conn_xmit_pdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_conn_xmit_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.TYPE_5__*, %struct.iscsi_task*, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.cxgbi_conn* }
%struct.cxgbi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cxgbi_task_data = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }

@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@CXGBI_DBG_PDU_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"task 0x%p, skb NULL.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"task 0x%p,0x%p, skb 0x%p, len %u/%u, rv %d.\0A\00", align 1
@ISCSI_DIGEST_SIZE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"task 0x%p, skb 0x%p, len %u/%u, %d EAGAIN.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"itt 0x%x, skb 0x%p, len %u/%u, xmit err %d.\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"xmit err %d.\0A\00", align 1
@ISCSI_ERR_XMIT_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_conn_xmit_pdu(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_tcp_conn*, align 8
  %5 = alloca %struct.cxgbi_conn*, align 8
  %6 = alloca %struct.cxgbi_task_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %11 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %14, align 8
  store %struct.iscsi_tcp_conn* %15, %struct.iscsi_tcp_conn** %4, align 8
  %16 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %16, i32 0, i32 0
  %18 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %17, align 8
  store %struct.cxgbi_conn* %18, %struct.cxgbi_conn** %5, align 8
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %20 = call %struct.cxgbi_task_data* @iscsi_task_cxgbi_data(%struct.iscsi_task* %19)
  store %struct.cxgbi_task_data* %20, %struct.cxgbi_task_data** %6, align 8
  %21 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %6, align 8
  %22 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %33 = call i32 (i32, i8*, %struct.iscsi_task*, ...) @log_debug(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.iscsi_task* %32)
  store i32 0, i32* %2, align 4
  br label %161

34:                                               ; preds = %1
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %6, align 8
  %39 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %38, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %39, align 8
  %40 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %5, align 8
  %41 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @cxgbi_sock_send_pdus(i32 %44, %struct.sk_buff* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %102

49:                                               ; preds = %34
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %52 = shl i32 1, %51
  %53 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %54 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %55 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i32, i8*, %struct.iscsi_task*, ...) @log_debug(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.iscsi_task* %53, i32 %56, %struct.sk_buff* %57, i32 %60, i32 %63, i32 %64)
  %66 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %67 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %49
  %73 = load i64, i64* @ISCSI_DIGEST_SIZE, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %72, %49
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %83 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i64, i64* @ISCSI_DIGEST_SIZE, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %88, %81, %78
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %97 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, %95
  store i32 %101, i32* %99, align 8
  store i32 0, i32* %2, align 4
  br label %161

102:                                              ; preds = %34
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @EAGAIN, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @ENOBUFS, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %107, %102
  %113 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %114 = shl i32 1, %113
  %115 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 (i32, i8*, %struct.iscsi_task*, ...) @log_debug(i32 %114, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.iscsi_task* %115, %struct.sk_buff* %116, i32 %119, i32 %122, i32 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %126 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %6, align 8
  %127 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %126, i32 0, i32 0
  store %struct.sk_buff* %125, %struct.sk_buff** %127, align 8
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %2, align 4
  br label %161

129:                                              ; preds = %107
  %130 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %131 = call i32 @kfree_skb(%struct.sk_buff* %130)
  %132 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %133 = shl i32 1, %132
  %134 = load i32, i32* @CXGBI_DBG_PDU_TX, align 4
  %135 = shl i32 1, %134
  %136 = or i32 %133, %135
  %137 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %138 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %137, i32 0, i32 1
  %139 = load %struct.iscsi_task*, %struct.iscsi_task** %138, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 (i32, i8*, %struct.iscsi_task*, ...) @log_debug(i32 %136, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), %struct.iscsi_task* %139, %struct.sk_buff* %140, i32 %143, i32 %146, i32 %147)
  %149 = load i32, i32* @KERN_ERR, align 4
  %150 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %151 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @iscsi_conn_printk(i32 %149, %struct.TYPE_5__* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  %155 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %156 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %155, i32 0, i32 0
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load i32, i32* @ISCSI_ERR_XMIT_FAILED, align 4
  %159 = call i32 @iscsi_conn_failure(%struct.TYPE_5__* %157, i32 %158)
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %129, %112, %94, %26
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.cxgbi_task_data* @iscsi_task_cxgbi_data(%struct.iscsi_task*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_task*, ...) #1

declare dso_local i32 @cxgbi_sock_send_pdus(i32, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @iscsi_conn_failure(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
