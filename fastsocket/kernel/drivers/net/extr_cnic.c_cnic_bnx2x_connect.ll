; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.cnic_context*, %struct.cnic_sock* }
%struct.cnic_context = type { i32 }
%struct.cnic_sock = type { i32, i32* }
%struct.kwqe = type { i32 }
%struct.bnx2x = type { i32 }
%struct.l4_kwq_connect_req1 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.l4_kwq_connect_req3 = type { i32 }
%struct.l5cm_active_conn_buffer = type { %struct.l5cm_conn_addr_params }
%struct.l5cm_conn_addr_params = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%union.l5cm_specific_data = type { i32 }
%struct.l4_kwq_connect_req2 = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@L4_KWQ_CONNECT_REQ1_IP_V6 = common dso_local global i32 0, align 4
@CNIC_KWQ16_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"conn_buf size too big\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@L5CM_CONN_ADDR_PARAMS_IP_VERSION = common dso_local global i32 0, align 4
@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@L4_KWQ_CONNECT_REQ1_TIME_STAMP = common dso_local global i32 0, align 4
@L5CM_RAMROD_CMD_ID_TCP_CONNECT = common dso_local global i32 0, align 4
@ISCSI_CONNECTION_TYPE = common dso_local global i32 0, align 4
@CTX_FL_OFFLD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe**, i64, i32*)* @cnic_bnx2x_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_connect(%struct.cnic_dev* %0, %struct.kwqe** %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_dev*, align 8
  %7 = alloca %struct.kwqe**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cnic_local*, align 8
  %11 = alloca %struct.bnx2x*, align 8
  %12 = alloca %struct.l4_kwq_connect_req1*, align 8
  %13 = alloca %struct.l4_kwq_connect_req3*, align 8
  %14 = alloca %struct.l5cm_active_conn_buffer*, align 8
  %15 = alloca %struct.l5cm_conn_addr_params*, align 8
  %16 = alloca %union.l5cm_specific_data, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.cnic_sock*, align 8
  %19 = alloca %struct.cnic_context*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.l4_kwq_connect_req2*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %6, align 8
  store %struct.kwqe** %1, %struct.kwqe*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %23 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %22, i32 0, i32 1
  %24 = load %struct.cnic_local*, %struct.cnic_local** %23, align 8
  store %struct.cnic_local* %24, %struct.cnic_local** %10, align 8
  %25 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %26 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.bnx2x* @netdev_priv(i32 %27)
  store %struct.bnx2x* %28, %struct.bnx2x** %11, align 8
  %29 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %30 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %29, i64 0
  %31 = load %struct.kwqe*, %struct.kwqe** %30, align 8
  %32 = bitcast %struct.kwqe* %31 to %struct.l4_kwq_connect_req1*
  store %struct.l4_kwq_connect_req1* %32, %struct.l4_kwq_connect_req1** %12, align 8
  %33 = load %struct.l4_kwq_connect_req1*, %struct.l4_kwq_connect_req1** %12, align 8
  %34 = getelementptr inbounds %struct.l4_kwq_connect_req1, %struct.l4_kwq_connect_req1* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %17, align 8
  %36 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %37 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %36, i32 0, i32 2
  %38 = load %struct.cnic_sock*, %struct.cnic_sock** %37, align 8
  %39 = load i64, i64* %17, align 8
  %40 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %38, i64 %39
  store %struct.cnic_sock* %40, %struct.cnic_sock** %18, align 8
  %41 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %42 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %41, i32 0, i32 1
  %43 = load %struct.cnic_context*, %struct.cnic_context** %42, align 8
  %44 = load i64, i64* %17, align 8
  %45 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %43, i64 %44
  store %struct.cnic_context* %45, %struct.cnic_context** %19, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ult i64 %46, 2
  br i1 %47, label %48, label %54

48:                                               ; preds = %4
  %49 = load i64, i64* %8, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %271

54:                                               ; preds = %4
  %55 = load %struct.l4_kwq_connect_req1*, %struct.l4_kwq_connect_req1** %12, align 8
  %56 = getelementptr inbounds %struct.l4_kwq_connect_req1, %struct.l4_kwq_connect_req1* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @L4_KWQ_CONNECT_REQ1_IP_V6, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32*, i32** %9, align 8
  store i32 3, i32* %62, align 4
  br label %65

63:                                               ; preds = %54
  %64 = load i32*, i32** %9, align 8
  store i32 2, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = load i64, i64* %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i64, i64* %8, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %271

77:                                               ; preds = %65
  %78 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ugt i64 72, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %83 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @netdev_err(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %271

88:                                               ; preds = %77
  %89 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %90 = load i64, i64* %17, align 8
  %91 = call %struct.l5cm_active_conn_buffer* @cnic_get_kwqe_16_data(%struct.cnic_local* %89, i64 %90, %union.l5cm_specific_data* %16)
  store %struct.l5cm_active_conn_buffer* %91, %struct.l5cm_active_conn_buffer** %14, align 8
  %92 = load %struct.l5cm_active_conn_buffer*, %struct.l5cm_active_conn_buffer** %14, align 8
  %93 = icmp ne %struct.l5cm_active_conn_buffer* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %271

97:                                               ; preds = %88
  %98 = load %struct.l5cm_active_conn_buffer*, %struct.l5cm_active_conn_buffer** %14, align 8
  %99 = call i32 @memset(%struct.l5cm_active_conn_buffer* %98, i32 0, i32 72)
  %100 = load %struct.l5cm_active_conn_buffer*, %struct.l5cm_active_conn_buffer** %14, align 8
  %101 = getelementptr inbounds %struct.l5cm_active_conn_buffer, %struct.l5cm_active_conn_buffer* %100, i32 0, i32 0
  store %struct.l5cm_conn_addr_params* %101, %struct.l5cm_conn_addr_params** %15, align 8
  %102 = load %struct.cnic_sock*, %struct.cnic_sock** %18, align 8
  %103 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %108 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %107, i32 0, i32 11
  store i32 %106, i32* %108, align 4
  %109 = load %struct.cnic_sock*, %struct.cnic_sock** %18, align 8
  %110 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %115 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %114, i32 0, i32 10
  store i32 %113, i32* %115, align 4
  %116 = load %struct.cnic_sock*, %struct.cnic_sock** %18, align 8
  %117 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %122 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 4
  %123 = load %struct.cnic_sock*, %struct.cnic_sock** %18, align 8
  %124 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %129 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 4
  %130 = load %struct.cnic_sock*, %struct.cnic_sock** %18, align 8
  %131 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %136 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 4
  %137 = load %struct.cnic_sock*, %struct.cnic_sock** %18, align 8
  %138 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 5
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %143 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 4
  %144 = load %struct.l4_kwq_connect_req1*, %struct.l4_kwq_connect_req1** %12, align 8
  %145 = getelementptr inbounds %struct.l4_kwq_connect_req1, %struct.l4_kwq_connect_req1* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @L4_KWQ_CONNECT_REQ1_IP_V6, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %196

150:                                              ; preds = %97
  %151 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %152 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %151, i64 1
  %153 = load %struct.kwqe*, %struct.kwqe** %152, align 8
  %154 = bitcast %struct.kwqe* %153 to %struct.l4_kwq_connect_req2*
  store %struct.l4_kwq_connect_req2* %154, %struct.l4_kwq_connect_req2** %21, align 8
  %155 = load %struct.l4_kwq_connect_req2*, %struct.l4_kwq_connect_req2** %21, align 8
  %156 = getelementptr inbounds %struct.l4_kwq_connect_req2, %struct.l4_kwq_connect_req2* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %159 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  store i32 %157, i32* %160, align 4
  %161 = load %struct.l4_kwq_connect_req2*, %struct.l4_kwq_connect_req2** %21, align 8
  %162 = getelementptr inbounds %struct.l4_kwq_connect_req2, %struct.l4_kwq_connect_req2* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %165 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 4
  %167 = load %struct.l4_kwq_connect_req2*, %struct.l4_kwq_connect_req2** %21, align 8
  %168 = getelementptr inbounds %struct.l4_kwq_connect_req2, %struct.l4_kwq_connect_req2* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %171 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  %173 = load %struct.l4_kwq_connect_req2*, %struct.l4_kwq_connect_req2** %21, align 8
  %174 = getelementptr inbounds %struct.l4_kwq_connect_req2, %struct.l4_kwq_connect_req2* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %177 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 3
  store i32 %175, i32* %178, align 4
  %179 = load %struct.l4_kwq_connect_req2*, %struct.l4_kwq_connect_req2** %21, align 8
  %180 = getelementptr inbounds %struct.l4_kwq_connect_req2, %struct.l4_kwq_connect_req2* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %183 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  store i32 %181, i32* %184, align 4
  %185 = load %struct.l4_kwq_connect_req2*, %struct.l4_kwq_connect_req2** %21, align 8
  %186 = getelementptr inbounds %struct.l4_kwq_connect_req2, %struct.l4_kwq_connect_req2* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %189 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load i32, i32* @L5CM_CONN_ADDR_PARAMS_IP_VERSION, align 4
  %192 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %193 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %150, %97
  %197 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %197, i64 %201
  %203 = load %struct.kwqe*, %struct.kwqe** %202, align 8
  %204 = bitcast %struct.kwqe* %203 to %struct.l4_kwq_connect_req3*
  store %struct.l4_kwq_connect_req3* %204, %struct.l4_kwq_connect_req3** %13, align 8
  %205 = load %struct.l4_kwq_connect_req1*, %struct.l4_kwq_connect_req1** %12, align 8
  %206 = getelementptr inbounds %struct.l4_kwq_connect_req1, %struct.l4_kwq_connect_req1* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %209 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 4
  %211 = load %struct.l4_kwq_connect_req1*, %struct.l4_kwq_connect_req1** %12, align 8
  %212 = getelementptr inbounds %struct.l4_kwq_connect_req1, %struct.l4_kwq_connect_req1* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %215 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  store i32 %213, i32* %216, align 4
  %217 = load %struct.l4_kwq_connect_req1*, %struct.l4_kwq_connect_req1** %12, align 8
  %218 = getelementptr inbounds %struct.l4_kwq_connect_req1, %struct.l4_kwq_connect_req1* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %221 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 4
  %222 = load %struct.l4_kwq_connect_req1*, %struct.l4_kwq_connect_req1** %12, align 8
  %223 = getelementptr inbounds %struct.l4_kwq_connect_req1, %struct.l4_kwq_connect_req1* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %226 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load %struct.l4_kwq_connect_req3*, %struct.l4_kwq_connect_req3** %13, align 8
  %228 = getelementptr inbounds %struct.l4_kwq_connect_req3, %struct.l4_kwq_connect_req3* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.l5cm_conn_addr_params*, %struct.l5cm_conn_addr_params** %15, align 8
  %231 = getelementptr inbounds %struct.l5cm_conn_addr_params, %struct.l5cm_conn_addr_params* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 4
  %232 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %233 = load %struct.l4_kwq_connect_req1*, %struct.l4_kwq_connect_req1** %12, align 8
  %234 = load %struct.l4_kwq_connect_req3*, %struct.l4_kwq_connect_req3** %13, align 8
  %235 = load %struct.l5cm_active_conn_buffer*, %struct.l5cm_active_conn_buffer** %14, align 8
  %236 = call i32 @cnic_init_storm_conn_bufs(%struct.cnic_dev* %232, %struct.l4_kwq_connect_req1* %233, %struct.l4_kwq_connect_req3* %234, %struct.l5cm_active_conn_buffer* %235)
  %237 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %238 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %239 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %240 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i64 @XSTORM_ISCSI_LOCAL_VLAN_OFFSET(i32 %241)
  %243 = add nsw i64 %238, %242
  %244 = load %struct.cnic_sock*, %struct.cnic_sock** %18, align 8
  %245 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @CNIC_WR16(%struct.cnic_dev* %237, i64 %243, i32 %246)
  %248 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %249 = load %struct.l4_kwq_connect_req1*, %struct.l4_kwq_connect_req1** %12, align 8
  %250 = getelementptr inbounds %struct.l4_kwq_connect_req1, %struct.l4_kwq_connect_req1* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @L4_KWQ_CONNECT_REQ1_TIME_STAMP, align 4
  %253 = and i32 %251, %252
  %254 = call i32 @cnic_bnx2x_set_tcp_timestamp(%struct.cnic_dev* %248, i32 %253)
  %255 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %256 = load i32, i32* @L5CM_RAMROD_CMD_ID_TCP_CONNECT, align 4
  %257 = load %struct.l4_kwq_connect_req1*, %struct.l4_kwq_connect_req1** %12, align 8
  %258 = getelementptr inbounds %struct.l4_kwq_connect_req1, %struct.l4_kwq_connect_req1* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @ISCSI_CONNECTION_TYPE, align 4
  %261 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %255, i32 %256, i32 %259, i32 %260, %union.l5cm_specific_data* %16)
  store i32 %261, i32* %20, align 4
  %262 = load i32, i32* %20, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %196
  %265 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %266 = load %struct.cnic_context*, %struct.cnic_context** %19, align 8
  %267 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %266, i32 0, i32 0
  %268 = call i32 @set_bit(i32 %265, i32* %267)
  br label %269

269:                                              ; preds = %264, %196
  %270 = load i32, i32* %20, align 4
  store i32 %270, i32* %5, align 4
  br label %271

271:                                              ; preds = %269, %94, %81, %71, %48
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local %struct.l5cm_active_conn_buffer* @cnic_get_kwqe_16_data(%struct.cnic_local*, i64, %union.l5cm_specific_data*) #1

declare dso_local i32 @memset(%struct.l5cm_active_conn_buffer*, i32, i32) #1

declare dso_local i32 @cnic_init_storm_conn_bufs(%struct.cnic_dev*, %struct.l4_kwq_connect_req1*, %struct.l4_kwq_connect_req3*, %struct.l5cm_active_conn_buffer*) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @XSTORM_ISCSI_LOCAL_VLAN_OFFSET(i32) #1

declare dso_local i32 @cnic_bnx2x_set_tcp_timestamp(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i32, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
