; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_connect_service.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_connect_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, i32, i32 }
%struct.htc_service_connreq = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.htc_endpoint = type { i32, i32, i32, i32, i32 }
%struct.htc_conn_svc_msg = type { i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [41 x i8] c"Endpoint is not available forservice %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to allocate buf to sendservice connect req\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HTC_MSG_CONNECT_SERVICE_ID = common dso_local global i32 0, align 4
@ENDPOINT0 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Service connection timeout for: %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htc_connect_service(%struct.htc_target* %0, %struct.htc_service_connreq* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.htc_service_connreq*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.htc_endpoint*, align 8
  %10 = alloca %struct.htc_conn_svc_msg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %5, align 8
  store %struct.htc_service_connreq* %1, %struct.htc_service_connreq** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %14 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.htc_endpoint* @get_next_avail_ep(i32 %15)
  store %struct.htc_endpoint* %16, %struct.htc_endpoint** %9, align 8
  %17 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %18 = icmp ne %struct.htc_endpoint* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %21 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %24 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %136

29:                                               ; preds = %3
  %30 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %31 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %34 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %36 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %39 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %41 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @service_to_ulpipe(i32 %42)
  %44 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %45 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %47 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @service_to_dlpipe(i32 %48)
  %50 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %51 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %53 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %56 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call %struct.sk_buff* @alloc_skb(i32 36, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %8, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %29
  %62 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %63 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %136

68:                                               ; preds = %29
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = call i32 @skb_reserve(%struct.sk_buff* %69, i32 4)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call i64 @skb_put(%struct.sk_buff* %71, i32 32)
  %73 = inttoptr i64 %72 to %struct.htc_conn_svc_msg*
  store %struct.htc_conn_svc_msg* %73, %struct.htc_conn_svc_msg** %10, align 8
  %74 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %75 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_be16(i32 %76)
  %78 = load %struct.htc_conn_svc_msg*, %struct.htc_conn_svc_msg** %10, align 8
  %79 = getelementptr inbounds %struct.htc_conn_svc_msg, %struct.htc_conn_svc_msg* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @HTC_MSG_CONNECT_SERVICE_ID, align 4
  %81 = call i8* @cpu_to_be16(i32 %80)
  %82 = load %struct.htc_conn_svc_msg*, %struct.htc_conn_svc_msg** %10, align 8
  %83 = getelementptr inbounds %struct.htc_conn_svc_msg, %struct.htc_conn_svc_msg* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %85 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @cpu_to_be16(i32 %86)
  %88 = load %struct.htc_conn_svc_msg*, %struct.htc_conn_svc_msg** %10, align 8
  %89 = getelementptr inbounds %struct.htc_conn_svc_msg, %struct.htc_conn_svc_msg* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %91 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.htc_conn_svc_msg*, %struct.htc_conn_svc_msg** %10, align 8
  %94 = getelementptr inbounds %struct.htc_conn_svc_msg, %struct.htc_conn_svc_msg* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.htc_endpoint*, %struct.htc_endpoint** %9, align 8
  %96 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.htc_conn_svc_msg*, %struct.htc_conn_svc_msg** %10, align 8
  %99 = getelementptr inbounds %struct.htc_conn_svc_msg, %struct.htc_conn_svc_msg* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ENDPOINT0, align 4
  %106 = call i32 @htc_issue_send(%struct.htc_target* %100, %struct.sk_buff* %101, i32 %104, i32 0, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %68
  br label %132

110:                                              ; preds = %68
  %111 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %112 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %111, i32 0, i32 2
  %113 = load i32, i32* @HZ, align 4
  %114 = call i32 @wait_for_completion_timeout(i32* %112, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %110
  %118 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %119 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.htc_service_connreq*, %struct.htc_service_connreq** %6, align 8
  %122 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @dev_err(i32 %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @ETIMEDOUT, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %136

127:                                              ; preds = %110
  %128 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %129 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %7, align 8
  store i32 %130, i32* %131, align 4
  store i32 0, i32* %4, align 4
  br label %136

132:                                              ; preds = %109
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = call i32 @kfree_skb(%struct.sk_buff* %133)
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %132, %127, %117, %61, %19
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.htc_endpoint* @get_next_avail_ep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @service_to_ulpipe(i32) #1

declare dso_local i32 @service_to_dlpipe(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @htc_issue_send(%struct.htc_target*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
