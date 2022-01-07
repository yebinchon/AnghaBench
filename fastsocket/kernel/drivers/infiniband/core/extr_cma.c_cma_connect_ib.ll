; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_connect_ib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_cma_connect_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_3__, i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { %struct.ib_cm_id* }
%struct.ib_cm_id = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.rdma_route, i32 }
%struct.rdma_route = type { i32, i32* }
%struct.rdma_conn_param = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ib_cm_req_param = type { i64, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cma_ib_handler = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@CMA_CM_RESPONSE_TIMEOUT = common dso_local global i8* null, align 8
@CMA_MAX_CM_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.rdma_conn_param*)* @cma_connect_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_connect_ib(%struct.rdma_id_private* %0, %struct.rdma_conn_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.rdma_conn_param*, align 8
  %6 = alloca %struct.ib_cm_req_param, align 8
  %7 = alloca %struct.rdma_route*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ib_cm_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.rdma_conn_param* %1, %struct.rdma_conn_param** %5, align 8
  %12 = call i32 @memset(%struct.ib_cm_req_param* %6, i32 0, i32 104)
  %13 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %14 = call i32 @cma_user_data_offset(%struct.rdma_id_private* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %18 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %25 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %198

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call i8* @kzalloc(i64 %37, i32 %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %198

45:                                               ; preds = %35
  br label %47

46:                                               ; preds = %31
  store i8* null, i8** %8, align 8
  br label %47

47:                                               ; preds = %46, %45
  %48 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %49 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %54 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %58, i64 %60
  %62 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %63 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %66 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @memcpy(i8* %61, i32 %64, i64 %67)
  br label %69

69:                                               ; preds = %57, %52, %47
  %70 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %71 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @cma_ib_handler, align 4
  %75 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %76 = call %struct.ib_cm_id* @ib_create_cm_id(i32 %73, i32 %74, %struct.rdma_id_private* %75)
  store %struct.ib_cm_id* %76, %struct.ib_cm_id** %9, align 8
  %77 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %78 = call i64 @IS_ERR(%struct.ib_cm_id* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %82 = call i32 @PTR_ERR(%struct.ib_cm_id* %81)
  store i32 %82, i32* %11, align 4
  br label %181

83:                                               ; preds = %69
  %84 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %85 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %86 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store %struct.ib_cm_id* %84, %struct.ib_cm_id** %87, align 8
  %88 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %89 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store %struct.rdma_route* %90, %struct.rdma_route** %7, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %83
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %96 = call i32 @cma_format_hdr(i8* %94, %struct.rdma_id_private* %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %181

100:                                              ; preds = %93
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 16
  store i8* %101, i8** %102, align 8
  br label %103

103:                                              ; preds = %100, %83
  %104 = load %struct.rdma_route*, %struct.rdma_route** %7, align 8
  %105 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 15
  store i32* %107, i32** %108, align 8
  %109 = load %struct.rdma_route*, %struct.rdma_route** %7, align 8
  %110 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %119

113:                                              ; preds = %103
  %114 = load %struct.rdma_route*, %struct.rdma_route** %7, align 8
  %115 = getelementptr inbounds %struct.rdma_route, %struct.rdma_route* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 14
  store i32* %117, i32** %118, align 8
  br label %119

119:                                              ; preds = %113, %103
  %120 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %121 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %120, i32 0, i32 3
  %122 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %123 = call i32 @cma_dst_addr(%struct.rdma_id_private* %122)
  %124 = call i32 @rdma_get_service_id(%struct.TYPE_4__* %121, i32 %123)
  %125 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 13
  store i32 %124, i32* %125, align 8
  %126 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %127 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 12
  store i32 %128, i32* %129, align 4
  %130 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %131 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 11
  store i32 %133, i32* %134, align 8
  %135 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %136 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 10
  store i32 %137, i32* %138, align 4
  %139 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %140 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 9
  store i32 %141, i32* %142, align 8
  %143 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %144 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 8
  store i32 %145, i32* %146, align 4
  %147 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %148 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 7
  store i32 %149, i32* %150, align 8
  %151 = load i32, i32* @u8, align 4
  %152 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %153 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @min_t(i32 %151, i32 7, i32 %154)
  %156 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 6
  store i8* %155, i8** %156, align 8
  %157 = load i32, i32* @u8, align 4
  %158 = load %struct.rdma_conn_param*, %struct.rdma_conn_param** %5, align 8
  %159 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i8* @min_t(i32 %157, i32 7, i32 %160)
  %162 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 5
  store i8* %161, i8** %162, align 8
  %163 = load i8*, i8** @CMA_CM_RESPONSE_TIMEOUT, align 8
  %164 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 4
  store i8* %163, i8** %164, align 8
  %165 = load i8*, i8** @CMA_CM_RESPONSE_TIMEOUT, align 8
  %166 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 3
  store i8* %165, i8** %166, align 8
  %167 = load i32, i32* @CMA_MAX_CM_RETRIES, align 4
  %168 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 2
  store i32 %167, i32* %168, align 4
  %169 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %170 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 1, i32 0
  %175 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %6, i32 0, i32 1
  store i32 %174, i32* %175, align 8
  %176 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %177 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load %struct.ib_cm_id*, %struct.ib_cm_id** %178, align 8
  %180 = call i32 @ib_send_cm_req(%struct.ib_cm_id* %179, %struct.ib_cm_req_param* %6)
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %119, %99, %80
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  %185 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %186 = call i64 @IS_ERR(%struct.ib_cm_id* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = load %struct.ib_cm_id*, %struct.ib_cm_id** %9, align 8
  %190 = call i32 @ib_destroy_cm_id(%struct.ib_cm_id* %189)
  %191 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %192 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store %struct.ib_cm_id* null, %struct.ib_cm_id** %193, align 8
  br label %194

194:                                              ; preds = %188, %184, %181
  %195 = load i8*, i8** %8, align 8
  %196 = call i32 @kfree(i8* %195)
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %194, %42, %28
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @memset(%struct.ib_cm_req_param*, i32, i32) #1

declare dso_local i32 @cma_user_data_offset(%struct.rdma_id_private*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local %struct.ib_cm_id* @ib_create_cm_id(i32, i32, %struct.rdma_id_private*) #1

declare dso_local i64 @IS_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @cma_format_hdr(i8*, %struct.rdma_id_private*) #1

declare dso_local i32 @rdma_get_service_id(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @cma_dst_addr(%struct.rdma_id_private*) #1

declare dso_local i8* @min_t(i32, i32, i32) #1

declare dso_local i32 @ib_send_cm_req(%struct.ib_cm_id*, %struct.ib_cm_req_param*) #1

declare dso_local i32 @ib_destroy_cm_id(%struct.ib_cm_id*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
