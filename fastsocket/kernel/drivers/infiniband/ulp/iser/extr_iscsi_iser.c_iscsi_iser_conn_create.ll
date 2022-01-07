; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_iser_conn*, i32 }
%struct.iscsi_iser_conn = type { %struct.iscsi_conn* }
%struct.iscsi_cls_session = type { i32 }

@ISER_RECV_DATA_SEG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_cls_conn* (%struct.iscsi_cls_session*, i32)* @iscsi_iser_conn_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_cls_conn* @iscsi_iser_conn_create(%struct.iscsi_cls_session* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca %struct.iscsi_iser_conn*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session* %9, i32 8, i32 %10)
  store %struct.iscsi_cls_conn* %11, %struct.iscsi_cls_conn** %7, align 8
  %12 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %13 = icmp ne %struct.iscsi_cls_conn* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %17 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %16, i32 0, i32 0
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %6, align 8
  %19 = load i32, i32* @ISER_RECV_DATA_SEG_LEN, align 4
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %23 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %22, i32 0, i32 0
  %24 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %23, align 8
  store %struct.iscsi_iser_conn* %24, %struct.iscsi_iser_conn** %8, align 8
  %25 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %8, align 8
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 0
  store %struct.iscsi_iser_conn* %25, %struct.iscsi_iser_conn** %27, align 8
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %29 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %8, align 8
  %30 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %29, i32 0, i32 0
  store %struct.iscsi_conn* %28, %struct.iscsi_conn** %30, align 8
  %31 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  store %struct.iscsi_cls_conn* %31, %struct.iscsi_cls_conn** %3, align 8
  br label %32

32:                                               ; preds = %15, %14
  %33 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  ret %struct.iscsi_cls_conn* %33
}

declare dso_local %struct.iscsi_cls_conn* @iscsi_conn_setup(%struct.iscsi_cls_session*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
