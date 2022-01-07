; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_ep_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_ep_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.iser_conn* }
%struct.iser_conn = type { %struct.iscsi_endpoint* }
%struct.Scsi_Host = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_endpoint* (%struct.Scsi_Host*, %struct.sockaddr*, i32)* @iscsi_iser_ep_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_endpoint* @iscsi_iser_ep_connect(%struct.Scsi_Host* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_endpoint*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iser_conn*, align 8
  %10 = alloca %struct.iscsi_endpoint*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call %struct.iscsi_endpoint* @iscsi_create_endpoint(i32 8)
  store %struct.iscsi_endpoint* %11, %struct.iscsi_endpoint** %10, align 8
  %12 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %10, align 8
  %13 = icmp ne %struct.iscsi_endpoint* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %16)
  store %struct.iscsi_endpoint* %17, %struct.iscsi_endpoint** %4, align 8
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %10, align 8
  %20 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %19, i32 0, i32 0
  %21 = load %struct.iser_conn*, %struct.iser_conn** %20, align 8
  store %struct.iser_conn* %21, %struct.iser_conn** %9, align 8
  %22 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %10, align 8
  %23 = load %struct.iser_conn*, %struct.iser_conn** %9, align 8
  %24 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %23, i32 0, i32 0
  store %struct.iscsi_endpoint* %22, %struct.iscsi_endpoint** %24, align 8
  %25 = load %struct.iser_conn*, %struct.iser_conn** %9, align 8
  %26 = call i32 @iser_conn_init(%struct.iser_conn* %25)
  %27 = load %struct.iser_conn*, %struct.iser_conn** %9, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %29 = bitcast %struct.sockaddr* %28 to %struct.sockaddr_in*
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @iser_connect(%struct.iser_conn* %27, i32* null, %struct.sockaddr_in* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.iscsi_endpoint* @ERR_PTR(i32 %35)
  store %struct.iscsi_endpoint* %36, %struct.iscsi_endpoint** %4, align 8
  br label %39

37:                                               ; preds = %18
  %38 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %10, align 8
  store %struct.iscsi_endpoint* %38, %struct.iscsi_endpoint** %4, align 8
  br label %39

39:                                               ; preds = %37, %34, %14
  %40 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %4, align 8
  ret %struct.iscsi_endpoint* %40
}

declare dso_local %struct.iscsi_endpoint* @iscsi_create_endpoint(i32) #1

declare dso_local %struct.iscsi_endpoint* @ERR_PTR(i32) #1

declare dso_local i32 @iser_conn_init(%struct.iser_conn*) #1

declare dso_local i32 @iser_connect(%struct.iser_conn*, i32*, %struct.sockaddr_in*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
