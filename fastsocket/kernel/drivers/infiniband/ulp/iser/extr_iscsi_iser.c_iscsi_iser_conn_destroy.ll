; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_conn_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_iser_conn* }
%struct.iscsi_iser_conn = type { %struct.iser_conn* }
%struct.iser_conn = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cls_conn*)* @iscsi_iser_conn_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_iser_conn_destroy(%struct.iscsi_cls_conn* %0) #0 {
  %2 = alloca %struct.iscsi_cls_conn*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_iser_conn*, align 8
  %5 = alloca %struct.iser_conn*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %2, align 8
  %6 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %6, i32 0, i32 0
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %3, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 0
  %11 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %10, align 8
  store %struct.iscsi_iser_conn* %11, %struct.iscsi_iser_conn** %4, align 8
  %12 = load %struct.iscsi_iser_conn*, %struct.iscsi_iser_conn** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_iser_conn, %struct.iscsi_iser_conn* %12, i32 0, i32 0
  %14 = load %struct.iser_conn*, %struct.iser_conn** %13, align 8
  store %struct.iser_conn* %14, %struct.iser_conn** %5, align 8
  %15 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %2, align 8
  %16 = call i32 @iscsi_conn_teardown(%struct.iscsi_cls_conn* %15)
  %17 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %18 = icmp ne %struct.iser_conn* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %21 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %23 = call i32 @iser_conn_put(%struct.iser_conn* %22, i32 1)
  br label %24

24:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @iscsi_conn_teardown(%struct.iscsi_cls_conn*) #1

declare dso_local i32 @iser_conn_put(%struct.iser_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
