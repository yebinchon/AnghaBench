; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_process_conn_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_process_conn_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, %struct.htc_endpoint* }
%struct.htc_endpoint = type { i64, i64, i32, i32, i32, i32 }
%struct.htc_frame_hdr = type { i32 }
%struct.htc_conn_svc_rspmsg = type { i64, i32, i32, i32 }

@HTC_SERVICE_SUCCESS = common dso_local global i64 0, align 8
@ENDPOINT_MAX = common dso_local global i32 0, align 4
@ENDPOINT0 = common dso_local global i32 0, align 4
@ENDPOINT_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_frame_hdr*)* @htc_process_conn_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_process_conn_rsp(%struct.htc_target* %0, %struct.htc_frame_hdr* %1) #0 {
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_frame_hdr*, align 8
  %5 = alloca %struct.htc_conn_svc_rspmsg*, align 8
  %6 = alloca %struct.htc_endpoint*, align 8
  %7 = alloca %struct.htc_endpoint*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.htc_frame_hdr* %1, %struct.htc_frame_hdr** %4, align 8
  store %struct.htc_endpoint* null, %struct.htc_endpoint** %7, align 8
  %12 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %4, align 8
  %13 = bitcast %struct.htc_frame_hdr* %12 to i8*
  %14 = getelementptr i8, i8* %13, i64 4
  %15 = bitcast i8* %14 to %struct.htc_conn_svc_rspmsg*
  store %struct.htc_conn_svc_rspmsg* %15, %struct.htc_conn_svc_rspmsg** %5, align 8
  %16 = load %struct.htc_conn_svc_rspmsg*, %struct.htc_conn_svc_rspmsg** %5, align 8
  %17 = getelementptr inbounds %struct.htc_conn_svc_rspmsg, %struct.htc_conn_svc_rspmsg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HTC_SERVICE_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %102

21:                                               ; preds = %2
  %22 = load %struct.htc_conn_svc_rspmsg*, %struct.htc_conn_svc_rspmsg** %5, align 8
  %23 = getelementptr inbounds %struct.htc_conn_svc_rspmsg, %struct.htc_conn_svc_rspmsg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.htc_conn_svc_rspmsg*, %struct.htc_conn_svc_rspmsg** %5, align 8
  %26 = getelementptr inbounds %struct.htc_conn_svc_rspmsg, %struct.htc_conn_svc_rspmsg* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @be16_to_cpu(i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load %struct.htc_conn_svc_rspmsg*, %struct.htc_conn_svc_rspmsg** %5, align 8
  %30 = getelementptr inbounds %struct.htc_conn_svc_rspmsg, %struct.htc_conn_svc_rspmsg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @be16_to_cpu(i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %34 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %33, i32 0, i32 2
  %35 = load %struct.htc_endpoint*, %struct.htc_endpoint** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %35, i64 %37
  store %struct.htc_endpoint* %38, %struct.htc_endpoint** %6, align 8
  %39 = load i32, i32* @ENDPOINT_MAX, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %61, %21
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @ENDPOINT0, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %47 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %46, i32 0, i32 2
  %48 = load %struct.htc_endpoint*, %struct.htc_endpoint** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %48, i64 %50
  store %struct.htc_endpoint* %51, %struct.htc_endpoint** %7, align 8
  %52 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %53 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %59 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %64

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %11, align 4
  br label %41

64:                                               ; preds = %57, %41
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @ENDPOINT0, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %106

69:                                               ; preds = %64
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %72 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %74 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %77 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %79 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %82 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %84 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %87 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %89 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %92 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %95 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %98 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %100 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %99, i32 0, i32 1
  %101 = call i32 @complete(i32* %100)
  br label %106

102:                                              ; preds = %2
  %103 = load i32, i32* @ENDPOINT_UNUSED, align 4
  %104 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %105 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %68, %102, %69
  ret void
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
