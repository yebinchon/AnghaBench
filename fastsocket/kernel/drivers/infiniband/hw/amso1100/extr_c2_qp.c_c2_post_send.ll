; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_c2_post_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_qp.c_c2_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { i32, i32, i32, %struct.ib_send_wr*, %struct.TYPE_15__*, %struct.TYPE_23__, %struct.TYPE_19__, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.c2_dev = type { i32 }
%struct.c2_qp = type { i64, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%union.c2wr = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_24__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_24__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_21__ = type { i8*, i32, i8*, i8* }
%struct.TYPE_20__ = type { i8*, i32, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.c2_data_addr = type { i32 }

@IB_QPS_RTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@SQ_SIGNALED = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@C2_WR_TYPE_SEND_SE = common dso_local global i32 0, align 4
@C2_WR_TYPE_SEND = common dso_local global i32 0, align 4
@C2_WR_TYPE_SEND_SE_INV = common dso_local global i32 0, align 4
@C2_WR_TYPE_SEND_INV = common dso_local global i32 0, align 4
@IB_SEND_FENCE = common dso_local global i32 0, align 4
@SQ_READ_FENCE = common dso_local global i32 0, align 4
@C2_WR_TYPE_RDMA_WRITE = common dso_local global i32 0, align 4
@C2_WR_TYPE_RDMA_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca %struct.ib_send_wr**, align 8
  %7 = alloca %struct.c2_dev*, align 8
  %8 = alloca %struct.c2_qp*, align 8
  %9 = alloca %union.c2wr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %6, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.c2_dev* @to_c2dev(i32 %18)
  store %struct.c2_dev* %19, %struct.c2_dev** %7, align 8
  %20 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %21 = call %struct.c2_qp* @to_c2qp(%struct.ib_qp* %20)
  store %struct.c2_qp* %21, %struct.c2_qp** %8, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %23 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_QPS_RTS, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %318

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %299, %30
  %32 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %33 = icmp ne %struct.ib_send_wr* %32, null
  br i1 %33, label %34, label %317

34:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  %35 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %36 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 8
  %43 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %44 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %34
  %50 = load i32, i32* @SQ_SIGNALED, align 4
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %49, %34
  %54 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %55 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %273 [
    i32 129, label %57
    i32 128, label %57
    i32 130, label %149
    i32 131, label %217
  ]

57:                                               ; preds = %53, %53
  %58 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %59 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 129
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %64 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @C2_WR_TYPE_SEND_SE, align 4
  %71 = call i32 @c2_wr_set_id(%union.c2wr* %9, i32 %70)
  br label %75

72:                                               ; preds = %62
  %73 = load i32, i32* @C2_WR_TYPE_SEND, align 4
  %74 = call i32 @c2_wr_set_id(%union.c2wr* %9, i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  store i8* null, i8** %78, align 8
  br label %101

79:                                               ; preds = %57
  %80 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %81 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @C2_WR_TYPE_SEND_SE_INV, align 4
  %88 = call i32 @c2_wr_set_id(%union.c2wr* %9, i32 %87)
  br label %92

89:                                               ; preds = %79
  %90 = load i32, i32* @C2_WR_TYPE_SEND_INV, align 4
  %91 = call i32 @c2_wr_set_id(%union.c2wr* %9, i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %94 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @cpu_to_be32(i32 %96)
  %98 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 2
  store i8* %97, i8** %100, align 8
  br label %101

101:                                              ; preds = %92, %75
  %102 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %103 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = add i64 4, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %15, align 4
  %109 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %110 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %113 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %111, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %101
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %11, align 4
  br label %276

119:                                              ; preds = %101
  %120 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %121 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IB_SEND_FENCE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32, i32* @SQ_READ_FENCE, align 4
  %128 = load i32, i32* %12, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %126, %119
  %131 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  %134 = bitcast i32* %133 to %struct.c2_data_addr*
  %135 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %136 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %135, i32 0, i32 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %139 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @move_sgl(%struct.c2_data_addr* %134, %struct.TYPE_15__* %137, i32 %140, i32* %13, i32* %14)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i8* @cpu_to_be32(i32 %142)
  %144 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  store i8* %143, i8** %146, align 8
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @c2_wr_set_sge_count(%union.c2wr* %9, i32 %147)
  br label %276

149:                                              ; preds = %53
  %150 = load i32, i32* @C2_WR_TYPE_RDMA_WRITE, align 4
  %151 = call i32 @c2_wr_set_id(%union.c2wr* %9, i32 %150)
  %152 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %153 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = mul i64 4, %155
  %157 = add i64 4, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %15, align 4
  %159 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %160 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %163 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %161, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %149
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %11, align 4
  br label %276

169:                                              ; preds = %149
  %170 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %171 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @IB_SEND_FENCE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i32, i32* @SQ_READ_FENCE, align 4
  %178 = load i32, i32* %12, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %176, %169
  %181 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %182 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i8* @cpu_to_be32(i32 %185)
  %187 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 3
  store i8* %186, i8** %189, align 8
  %190 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %191 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %190, i32 0, i32 5
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @cpu_to_be64(i32 %194)
  %196 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 2
  store i8* %195, i8** %198, align 8
  %199 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  %202 = bitcast i32* %201 to %struct.c2_data_addr*
  %203 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %204 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %203, i32 0, i32 4
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %204, align 8
  %206 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %207 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @move_sgl(%struct.c2_data_addr* %202, %struct.TYPE_15__* %205, i32 %208, i32* %13, i32* %14)
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i8* @cpu_to_be32(i32 %210)
  %212 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  store i8* %211, i8** %214, align 8
  %215 = load i32, i32* %14, align 4
  %216 = call i32 @c2_wr_set_sge_count(%union.c2wr* %9, i32 %215)
  br label %276

217:                                              ; preds = %53
  %218 = load i32, i32* @C2_WR_TYPE_RDMA_READ, align 4
  %219 = call i32 @c2_wr_set_id(%union.c2wr* %9, i32 %218)
  store i32 4, i32* %15, align 4
  %220 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %221 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %224, label %227

224:                                              ; preds = %217
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %11, align 4
  br label %276

227:                                              ; preds = %217
  %228 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %229 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %228, i32 0, i32 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i8* @cpu_to_be32(i32 %232)
  %234 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 4
  store i8* %233, i8** %236, align 8
  %237 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %238 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %237, i32 0, i32 4
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i8* @cpu_to_be64(i32 %241)
  %243 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 3
  store i8* %242, i8** %245, align 8
  %246 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %247 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i8* @cpu_to_be32(i32 %250)
  %252 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 2
  store i8* %251, i8** %254, align 8
  %255 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %256 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i8* @cpu_to_be64(i32 %259)
  %261 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 1
  store i8* %260, i8** %263, align 8
  %264 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %265 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %264, i32 0, i32 4
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i8* @cpu_to_be32(i32 %268)
  %270 = bitcast %union.c2wr* %9 to %struct.TYPE_13__*
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 0
  store i8* %269, i8** %272, align 8
  br label %276

273:                                              ; preds = %53
  store i32 0, i32* %15, align 4
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %11, align 4
  br label %276

276:                                              ; preds = %273, %227, %224, %180, %166, %130, %116
  %277 = load i32, i32* %11, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %276
  br label %317

280:                                              ; preds = %276
  %281 = load i32, i32* %12, align 4
  %282 = call i32 @c2_wr_set_flags(%union.c2wr* %9, i32 %281)
  %283 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %284 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %283, i32 0, i32 3
  %285 = load i64, i64* %10, align 8
  %286 = call i32 @spin_lock_irqsave(i32* %284, i64 %285)
  %287 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %288 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %287, i32 0, i32 4
  %289 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %290 = load i32, i32* %15, align 4
  %291 = call i32 @qp_wr_post(%struct.TYPE_14__* %288, %union.c2wr* %9, %struct.c2_qp* %289, i32 %290)
  store i32 %291, i32* %11, align 4
  %292 = load i32, i32* %11, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %280
  %295 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %296 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %295, i32 0, i32 3
  %297 = load i64, i64* %10, align 8
  %298 = call i32 @spin_unlock_irqrestore(i32* %296, i64 %297)
  br label %317

299:                                              ; preds = %280
  %300 = load %struct.c2_dev*, %struct.c2_dev** %7, align 8
  %301 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %302 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %301, i32 0, i32 4
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %306 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %305, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @c2_activity(%struct.c2_dev* %300, i32 %304, i32 %308)
  %310 = load %struct.c2_qp*, %struct.c2_qp** %8, align 8
  %311 = getelementptr inbounds %struct.c2_qp, %struct.c2_qp* %310, i32 0, i32 3
  %312 = load i64, i64* %10, align 8
  %313 = call i32 @spin_unlock_irqrestore(i32* %311, i64 %312)
  %314 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %315 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %314, i32 0, i32 3
  %316 = load %struct.ib_send_wr*, %struct.ib_send_wr** %315, align 8
  store %struct.ib_send_wr* %316, %struct.ib_send_wr** %5, align 8
  br label %31

317:                                              ; preds = %294, %279, %31
  br label %318

318:                                              ; preds = %317, %27
  %319 = load i32, i32* %11, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %323 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %6, align 8
  store %struct.ib_send_wr* %322, %struct.ib_send_wr** %323, align 8
  br label %324

324:                                              ; preds = %321, %318
  %325 = load i32, i32* %11, align 4
  ret i32 %325
}

declare dso_local %struct.c2_dev* @to_c2dev(i32) #1

declare dso_local %struct.c2_qp* @to_c2qp(%struct.ib_qp*) #1

declare dso_local i32 @c2_wr_set_id(%union.c2wr*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @move_sgl(%struct.c2_data_addr*, %struct.TYPE_15__*, i32, i32*, i32*) #1

declare dso_local i32 @c2_wr_set_sge_count(%union.c2wr*, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @c2_wr_set_flags(%union.c2wr*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qp_wr_post(%struct.TYPE_14__*, %union.c2wr*, %struct.c2_qp*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @c2_activity(%struct.c2_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
