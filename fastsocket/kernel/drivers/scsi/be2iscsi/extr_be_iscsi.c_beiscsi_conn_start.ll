; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.beiscsi_conn* }
%struct.beiscsi_conn = type { i64, i32, %struct.beiscsi_endpoint* }
%struct.beiscsi_endpoint = type { i32 }
%struct.beiscsi_offload_params = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"BS_%d : In beiscsi_conn_start\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"BS_%d : In beiscsi_conn_start , no beiscsi_ep\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_conn_start(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca %struct.iscsi_cls_conn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.beiscsi_conn*, align 8
  %5 = alloca %struct.beiscsi_endpoint*, align 8
  %6 = alloca %struct.beiscsi_offload_params, align 4
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %2, align 8
  %7 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %7, i32 0, i32 0
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %3, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %11, align 8
  store %struct.beiscsi_conn* %12, %struct.beiscsi_conn** %4, align 8
  %13 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %14 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @KERN_INFO, align 4
  %17 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %18 = call i32 @beiscsi_log(i32 %15, i32 %16, i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @memset(%struct.beiscsi_offload_params* %6, i32 0, i32 4)
  %20 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %21 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %20, i32 0, i32 2
  %22 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %21, align 8
  store %struct.beiscsi_endpoint* %22, %struct.beiscsi_endpoint** %5, align 8
  %23 = load %struct.beiscsi_endpoint*, %struct.beiscsi_endpoint** %5, align 8
  %24 = icmp ne %struct.beiscsi_endpoint* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %27 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %31 = call i32 @beiscsi_log(i32 %28, i32 %29, i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %34 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %36 = call i32 @beiscsi_set_params_for_offld(%struct.beiscsi_conn* %35, %struct.beiscsi_offload_params* %6)
  %37 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %4, align 8
  %38 = call i32 @beiscsi_offload_connection(%struct.beiscsi_conn* %37, %struct.beiscsi_offload_params* %6)
  %39 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %40 = call i32 @iscsi_conn_start(%struct.iscsi_cls_conn* %39)
  ret i32 0
}

declare dso_local i32 @beiscsi_log(i32, i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.beiscsi_offload_params*, i32, i32) #1

declare dso_local i32 @beiscsi_set_params_for_offld(%struct.beiscsi_conn*, %struct.beiscsi_offload_params*) #1

declare dso_local i32 @beiscsi_offload_connection(%struct.beiscsi_conn*, %struct.beiscsi_offload_params*) #1

declare dso_local i32 @iscsi_conn_start(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
