; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_conn_get_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_conn_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.qla_conn* }
%struct.qla_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_conn*, i32, i8*)* @qla4xxx_conn_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_conn_get_param(%struct.iscsi_cls_conn* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cls_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.qla_conn*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %12, i32 0, i32 0
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %8, align 8
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 0
  %17 = load %struct.qla_conn*, %struct.qla_conn** %16, align 8
  store %struct.qla_conn* %17, %struct.qla_conn** %9, align 8
  %18 = load %struct.qla_conn*, %struct.qla_conn** %9, align 8
  %19 = getelementptr inbounds %struct.qla_conn, %struct.qla_conn* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast i32* %21 to %struct.sockaddr*
  store %struct.sockaddr* %22, %struct.sockaddr** %10, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %30 [
    i32 128, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %3, %3
  %25 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_storage*
  %27 = load i32, i32* %6, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage* %26, i32 %27, i8* %28)
  store i32 %29, i32* %4, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @iscsi_conn_get_param(%struct.iscsi_cls_conn* %31, i32 %32, i8* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %24
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage*, i32, i8*) #1

declare dso_local i32 @iscsi_conn_get_param(%struct.iscsi_cls_conn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
