; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_ep_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_ep_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.iser_conn* }
%struct.iser_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"ib conn %p state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_endpoint*)* @iscsi_iser_ep_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_iser_ep_disconnect(%struct.iscsi_endpoint* %0) #0 {
  %2 = alloca %struct.iscsi_endpoint*, align 8
  %3 = alloca %struct.iser_conn*, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %2, align 8
  %4 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %4, i32 0, i32 0
  %6 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  store %struct.iser_conn* %6, %struct.iser_conn** %3, align 8
  %7 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %8 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %13 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iscsi_suspend_tx(i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %20 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %21 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @iser_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %19, i32 %22)
  %24 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %25 = call i32 @iser_conn_terminate(%struct.iser_conn* %24)
  ret void
}

declare dso_local i32 @iscsi_suspend_tx(i32) #1

declare dso_local i32 @iser_info(i8*, %struct.iser_conn*, i32) #1

declare dso_local i32 @iser_conn_terminate(%struct.iser_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
