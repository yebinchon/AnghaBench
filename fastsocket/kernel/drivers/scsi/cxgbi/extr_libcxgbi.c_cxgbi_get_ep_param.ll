; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_get_ep_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_get_ep_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.cxgbi_endpoint* }
%struct.cxgbi_endpoint = type { %struct.cxgbi_sock* }
%struct.cxgbi_sock = type { i32 }
%struct.sockaddr_storage = type { i32 }

@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cls_conn 0x%p, param %d.\0A\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_get_ep_param(%struct.iscsi_endpoint* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cxgbi_endpoint*, align 8
  %9 = alloca %struct.cxgbi_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %11, i32 0, i32 0
  %13 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %12, align 8
  store %struct.cxgbi_endpoint* %13, %struct.cxgbi_endpoint** %8, align 8
  %14 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %15 = shl i32 1, %14
  %16 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @log_debug(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.iscsi_endpoint* %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %42 [
    i32 128, label %20
    i32 129, label %20
  ]

20:                                               ; preds = %3, %3
  %21 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %8, align 8
  %22 = icmp ne %struct.cxgbi_endpoint* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @ENOTCONN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %45

26:                                               ; preds = %20
  %27 = load %struct.cxgbi_endpoint*, %struct.cxgbi_endpoint** %8, align 8
  %28 = getelementptr inbounds %struct.cxgbi_endpoint, %struct.cxgbi_endpoint* %27, i32 0, i32 0
  %29 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %28, align 8
  store %struct.cxgbi_sock* %29, %struct.cxgbi_sock** %9, align 8
  %30 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %31 = icmp ne %struct.cxgbi_sock* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %45

35:                                               ; preds = %26
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %37 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to %struct.sockaddr_storage*
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage* %38, i32 %39, i8* %40)
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @ENOSYS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %35, %32, %23
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_endpoint*, i32) #1

declare dso_local i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
