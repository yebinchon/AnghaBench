; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_resolve_ib_udp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_resolve_ib_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.ib_cm_id* }
%struct.ib_cm_id = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rdma_conn_param = type { i64, i32 }
%struct.ib_cm_sidr_req_param = type { i64, i32, i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_sidr_rep_handler = common dso_local global i32 0, align 4
@CMA_CM_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@CMA_MAX_CM_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_resolve_ib_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_resolve_ib_udp(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.rdma_conn_param*, align 8
  %6 = alloca %struct.ib_cm_sidr_req_param, align 8
  %7 = alloca %struct.ib_cm_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %5, align 8
  %10 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %11 = call i32 @cma_user_data_offset(%struct.rdma_id_private* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %15 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %22 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %144

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i32* @kzalloc(i64 %34, i32 %35)
  %37 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 2
  store i32* %36, i32** %37, align 8
  %38 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %144

44:                                               ; preds = %32
  br label %47

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 2
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %45, %44
  %48 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %49 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %54 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %60, i64 %62
  %64 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %65 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %68 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @memcpy(i8* %63, i32 %66, i64 %69)
  br label %71

71:                                               ; preds = %57, %52, %47
  %72 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = bitcast i32* %77 to i8*
  %79 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %80 = call i32 @cma_format_hdr(i8* %78, %struct.rdma_id_private* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %139

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %71
  %86 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %87 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @cma_sidr_rep_handler, align 4
  %91 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %92 = call %struct.ib_cm_id* @ib_create_cm_id(i32 %89, i32 %90, %struct.rdma_id_private* %91)
  store %struct.ib_cm_id* %92, %struct.ib_cm_id** %7, align 8
  %93 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %94 = call i64 @IS_ERR(%struct.ib_cm_id* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %98 = call i32 @PTR_ERR(%struct.ib_cm_id* %97)
  store i32 %98, i32* %9, align 4
  br label %139

99:                                               ; preds = %85
  %100 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %101 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %102 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store %struct.ib_cm_id* %100, %struct.ib_cm_id** %103, align 8
  %104 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %105 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 5
  store i32 %108, i32* %109, align 8
  %110 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %111 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %110, i32 0, i32 1
  %112 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %113 = call i32 @cma_dst_addr(%struct.rdma_id_private* %112)
  %114 = call i32 @rdma_get_service_id(%struct.TYPE_6__* %111, i32 %113)
  %115 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 4
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @CMA_CM_RESPONSE_TIMEOUT, align 4
  %117 = sub nsw i32 %116, 8
  %118 = shl i32 1, %117
  %119 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 1
  store i32 %118, i32* %119, align 8
  %120 = load i32, i32* @CMA_MAX_CM_RETRIES, align 4
  %121 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 3
  store i32 %120, i32* %121, align 8
  %122 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %123 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.ib_cm_id*, %struct.ib_cm_id** %124, align 8
  %126 = call i32 @ib_send_cm_sidr_req(%struct.ib_cm_id* %125, %struct.ib_cm_sidr_req_param* %6)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %99
  %130 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %131 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load %struct.ib_cm_id*, %struct.ib_cm_id** %132, align 8
  %134 = call i32 @ib_destroy_cm_id(%struct.ib_cm_id* %133)
  %135 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %136 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store %struct.ib_cm_id* null, %struct.ib_cm_id** %137, align 8
  br label %138

138:                                              ; preds = %129, %99
  br label %139

139:                                              ; preds = %138, %96, %83
  %140 = getelementptr inbounds %struct.ib_cm_sidr_req_param, %struct.ib_cm_sidr_req_param* %6, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @kfree(i32* %141)
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %139, %41, %25
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @cma_user_data_offset(%struct.rdma_id_private*) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @cma_format_hdr(i8*, %struct.rdma_id_private*) #1

declare dso_local %struct.ib_cm_id* @ib_create_cm_id(i32, i32, %struct.rdma_id_private*) #1

declare dso_local i64 @IS_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @rdma_get_service_id(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cma_dst_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @ib_send_cm_sidr_req(%struct.ib_cm_id*, %struct.ib_cm_sidr_req_param*) #1

declare dso_local i32 @ib_destroy_cm_id(%struct.ib_cm_id*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
