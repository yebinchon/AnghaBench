; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_bind_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_bind_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_4__*, %struct.iscsi_tcp_conn* }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_tcp_conn = type { %struct.cxgbi_conn* }
%struct.cxgbi_conn = type { %struct.cxgbi_endpoint*, i32, i64 }
%struct.cxgbi_endpoint = type { %struct.cxgbi_conn*, i32, %struct.cxgbi_sock* }
%struct.cxgbi_sock = type { i32, %struct.iscsi_conn*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.cxgbi_sock*, i32, i32, i32)* }
%struct.iscsi_endpoint = type { %struct.cxgbi_endpoint* }

@EINVAL = common dso_local global i32 0, align 4
@page_idx = common dso_local global i32 0, align 4
@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cls 0x%p,0x%p, ep 0x%p, cconn 0x%p, csk 0x%p.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_bind_conn(%struct.iscsi_cls_session* %0, %struct.iscsi_cls_conn* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_tcp_conn*, align 8
  %12 = alloca %struct.cxgbi_conn*, align 8
  %13 = alloca %struct.iscsi_endpoint*, align 8
  %14 = alloca %struct.cxgbi_endpoint*, align 8
  %15 = alloca %struct.cxgbi_sock*, align 8
  %16 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %6, align 8
  store %struct.iscsi_cls_conn* %1, %struct.iscsi_cls_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %18 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %17, i32 0, i32 0
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %18, align 8
  store %struct.iscsi_conn* %19, %struct.iscsi_conn** %10, align 8
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 1
  %22 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %21, align 8
  store %struct.iscsi_tcp_conn* %22, %struct.iscsi_tcp_conn** %11, align 8
  %23 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %11, align 8
  %24 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %23, i32 0, i32 0
  %25 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %24, align 8
  store %struct.cxgbi_conn* %25, %struct.cxgbi_conn** %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32 %26)
  store %struct.iscsi_endpoint* %27, %struct.iscsi_endpoint** %13, align 8
  %28 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %13, align 8
  %29 = icmp ne %struct.iscsi_endpoint* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %110

33:                                               ; preds = %4
  %34 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %13, align 8
  %35 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %34, i32 0, i32 0
  %36 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %35, align 8
  store %struct.cxgbi_endpoint* %36, %struct.cxgbi_endpoint** %14, align 8
  %37 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %14, align 8
  %38 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %37, i32 0, i32 2
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %38, align 8
  store %struct.cxgbi_sock* %39, %struct.cxgbi_sock** %15, align 8
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %15, align 8
  %41 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.cxgbi_sock*, i32, i32, i32)*, i32 (%struct.cxgbi_sock*, i32, i32, i32)** %43, align 8
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %15, align 8
  %46 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %15, align 8
  %47 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @page_idx, align 4
  %50 = call i32 %44(%struct.cxgbi_sock* %45, i32 %48, i32 %49, i32 0)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %5, align 4
  br label %110

55:                                               ; preds = %33
  %56 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %57 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @iscsi_conn_bind(%struct.iscsi_cls_session* %56, %struct.iscsi_cls_conn* %57, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %110

65:                                               ; preds = %55
  %66 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %67 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, 1
  %72 = call i64 @__ilog2_u32(i64 %71)
  %73 = add nsw i64 %72, 1
  %74 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %12, align 8
  %75 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %15, align 8
  %77 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %76, i32 0, i32 0
  %78 = call i32 @write_lock_bh(i32* %77)
  %79 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %80 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %15, align 8
  %81 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %80, i32 0, i32 1
  store %struct.iscsi_conn* %79, %struct.iscsi_conn** %81, align 8
  %82 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %14, align 8
  %83 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %12, align 8
  %86 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %14, align 8
  %88 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %12, align 8
  %89 = getelementptr inbounds %struct.cxgbi_conn, %struct.cxgbi_conn* %88, i32 0, i32 0
  store %struct.cxgbi_endpoint* %87, %struct.cxgbi_endpoint** %89, align 8
  %90 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %12, align 8
  %91 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %14, align 8
  %92 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %91, i32 0, i32 0
  store %struct.cxgbi_conn* %90, %struct.cxgbi_conn** %92, align 8
  %93 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %15, align 8
  %94 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %93, i32 0, i32 0
  %95 = call i32 @write_unlock_bh(i32* %94)
  %96 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %97 = call i32 @cxgbi_conn_max_xmit_dlength(%struct.iscsi_conn* %96)
  %98 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %99 = call i32 @cxgbi_conn_max_recv_dlength(%struct.iscsi_conn* %98)
  %100 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %101 = shl i32 1, %100
  %102 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %103 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %104 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %13, align 8
  %105 = load %struct.cxgbi_conn*, %struct.cxgbi_conn** %12, align 8
  %106 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %15, align 8
  %107 = call i32 @log_debug(i32 %101, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.iscsi_cls_session* %102, %struct.iscsi_cls_conn* %103, %struct.iscsi_endpoint* %104, %struct.cxgbi_conn* %105, %struct.cxgbi_sock* %106)
  %108 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %11, align 8
  %109 = call i32 @iscsi_tcp_hdr_recv_prep(%struct.iscsi_tcp_conn* %108)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %65, %62, %53, %30
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32) #1

declare dso_local i32 @iscsi_conn_bind(%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i32) #1

declare dso_local i64 @__ilog2_u32(i64) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_conn_max_xmit_dlength(%struct.iscsi_conn*) #1

declare dso_local i32 @cxgbi_conn_max_recv_dlength(%struct.iscsi_conn*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, %struct.iscsi_endpoint*, %struct.cxgbi_conn*, %struct.cxgbi_sock*) #1

declare dso_local i32 @iscsi_tcp_hdr_recv_prep(%struct.iscsi_tcp_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
