; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_get_next_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_get_next_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qeth_card = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, i32, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i64, i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.qeth_qdio_buffer = type { %struct.qdio_buffer* }
%struct.qdio_buffer = type { i32 }
%struct.qdio_buffer_element = type { i32, %struct.qeth_hdr* }
%struct.qeth_hdr = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64 }

@QETH_LINK_TYPE_LANE_TR = common dso_local global i32 0, align 4
@QETH_LINK_TYPE_HSTR = common dso_local global i32 0, align 4
@TR_HLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_OSN = common dso_local global i64 0, align 8
@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unexeob\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@QERR = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"noskbmem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @qeth_core_get_next_skb(%struct.qeth_card* %0, %struct.qeth_qdio_buffer* %1, %struct.qdio_buffer_element** %2, i32* %3, %struct.qeth_hdr** %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca %struct.qeth_qdio_buffer*, align 8
  %9 = alloca %struct.qdio_buffer_element**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.qeth_hdr**, align 8
  %12 = alloca %struct.qdio_buffer_element*, align 8
  %13 = alloca %struct.qdio_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %7, align 8
  store %struct.qeth_qdio_buffer* %1, %struct.qeth_qdio_buffer** %8, align 8
  store %struct.qdio_buffer_element** %2, %struct.qdio_buffer_element*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.qeth_hdr** %4, %struct.qeth_hdr*** %11, align 8
  %22 = load %struct.qdio_buffer_element**, %struct.qdio_buffer_element*** %9, align 8
  %23 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %22, align 8
  store %struct.qdio_buffer_element* %23, %struct.qdio_buffer_element** %12, align 8
  %24 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %8, align 8
  %25 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %24, i32 0, i32 0
  %26 = load %struct.qdio_buffer*, %struct.qdio_buffer** %25, align 8
  store %struct.qdio_buffer* %26, %struct.qdio_buffer** %13, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %29 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %30 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 16
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %5
  %38 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %39 = call i64 @qeth_is_last_sbale(%struct.qdio_buffer_element* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %291

42:                                               ; preds = %37
  %43 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %44 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %43, i32 1
  store %struct.qdio_buffer_element* %44, %struct.qdio_buffer_element** %12, align 8
  store i32 0, i32* %14, align 4
  %45 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %46 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 16
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %291

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %5
  %53 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %54 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %53, i32 0, i32 1
  %55 = load %struct.qeth_hdr*, %struct.qeth_hdr** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %55, i64 %57
  %59 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %11, align 8
  store %struct.qeth_hdr* %58, %struct.qeth_hdr** %59, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 16
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %11, align 8
  %65 = load %struct.qeth_hdr*, %struct.qeth_hdr** %64, align 8
  %66 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %109 [
    i32 130, label %70
    i32 129, label %77
    i32 128, label %102
  ]

70:                                               ; preds = %52
  %71 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %11, align 8
  %72 = load %struct.qeth_hdr*, %struct.qeth_hdr** %71, align 8
  %73 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %16, align 4
  br label %110

77:                                               ; preds = %52
  %78 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %11, align 8
  %79 = load %struct.qeth_hdr*, %struct.qeth_hdr** %78, align 8
  %80 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %16, align 4
  %84 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %85 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @QETH_LINK_TYPE_LANE_TR, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %77
  %91 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @QETH_LINK_TYPE_HSTR, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90, %77
  %98 = load i32, i32* @TR_HLEN, align 4
  store i32 %98, i32* %19, align 4
  br label %101

99:                                               ; preds = %90
  %100 = load i32, i32* @ETH_HLEN, align 4
  store i32 %100, i32* %19, align 4
  br label %101

101:                                              ; preds = %99, %97
  br label %110

102:                                              ; preds = %52
  %103 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %11, align 8
  %104 = load %struct.qeth_hdr*, %struct.qeth_hdr** %103, align 8
  %105 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %16, align 4
  store i32 16, i32* %19, align 4
  br label %110

109:                                              ; preds = %52
  br label %110

110:                                              ; preds = %109, %102, %101, %70
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %291

114:                                              ; preds = %110
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %117 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %115, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %114
  %122 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %123 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %133, label %128

128:                                              ; preds = %121
  %129 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %130 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %129, i32 0, i32 3
  %131 = call i32 @atomic_read(i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128, %121, %114
  %134 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %135 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133, %128
  store i32 1, i32* %20, align 4
  br label %157

141:                                              ; preds = %133
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %142, %143
  %145 = call %struct.sk_buff* @dev_alloc_skb(i32 %144)
  store %struct.sk_buff* %145, %struct.sk_buff** %15, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %147 = icmp ne %struct.sk_buff* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %141
  br label %275

149:                                              ; preds = %141
  %150 = load i32, i32* %19, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @skb_reserve(%struct.sk_buff* %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %149
  br label %157

157:                                              ; preds = %156, %140
  %158 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %159 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %158, i32 0, i32 1
  %160 = load %struct.qeth_hdr*, %struct.qeth_hdr** %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %160, i64 %162
  %164 = bitcast %struct.qeth_hdr* %163 to i8*
  store i8* %164, i8** %17, align 8
  br label %165

165:                                              ; preds = %242, %157
  %166 = load i32, i32* %16, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %243

168:                                              ; preds = %165
  %169 = load i32, i32* %16, align 4
  %170 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %171 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sub nsw i32 %172, %173
  %175 = call i32 @min(i32 %169, i32 %174)
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* %18, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %198

178:                                              ; preds = %168
  %179 = load i32, i32* %20, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %178
  %182 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %8, align 8
  %183 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %18, align 4
  %186 = call i64 @qeth_create_skb_frag(%struct.qeth_qdio_buffer* %182, %struct.qdio_buffer_element* %183, %struct.sk_buff** %15, i32 %184, i32* %21, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  br label %275

189:                                              ; preds = %181
  br label %197

190:                                              ; preds = %178
  %191 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %192 = load i32, i32* %18, align 4
  %193 = call i32 @skb_put(%struct.sk_buff* %191, i32 %192)
  %194 = load i8*, i8** %17, align 8
  %195 = load i32, i32* %18, align 4
  %196 = call i32 @memcpy(i32 %193, i8* %194, i32 %195)
  br label %197

197:                                              ; preds = %190, %189
  br label %198

198:                                              ; preds = %197, %168
  %199 = load i32, i32* %18, align 4
  %200 = load i32, i32* %16, align 4
  %201 = sub nsw i32 %200, %199
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %238

204:                                              ; preds = %198
  %205 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %206 = call i64 @qeth_is_last_sbale(%struct.qdio_buffer_element* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %231

208:                                              ; preds = %204
  %209 = load i32, i32* @TRACE, align 4
  %210 = call i32 @QETH_DBF_TEXT(i32 %209, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %211 = load i32, i32* @TRACE, align 4
  %212 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %213 = call i32 @CARD_BUS_ID(%struct.qeth_card* %212)
  %214 = call i32 @QETH_DBF_TEXT_(i32 %211, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* @QERR, align 4
  %216 = call i32 @QETH_DBF_TEXT(i32 %215, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %217 = load i32, i32* @QERR, align 4
  %218 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %219 = call i32 @CARD_BUS_ID(%struct.qeth_card* %218)
  %220 = call i32 @QETH_DBF_TEXT_(i32 %217, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* @MISC, align 4
  %222 = load %struct.qdio_buffer*, %struct.qdio_buffer** %13, align 8
  %223 = call i32 @QETH_DBF_HEX(i32 %221, i32 4, %struct.qdio_buffer* %222, i32 4)
  %224 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %225 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %224)
  %226 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %227 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %291

231:                                              ; preds = %204
  %232 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %233 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %232, i32 1
  store %struct.qdio_buffer_element* %233, %struct.qdio_buffer_element** %12, align 8
  store i32 0, i32* %14, align 4
  %234 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %235 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %234, i32 0, i32 1
  %236 = load %struct.qeth_hdr*, %struct.qeth_hdr** %235, align 8
  %237 = bitcast %struct.qeth_hdr* %236 to i8*
  store i8* %237, i8** %17, align 8
  br label %242

238:                                              ; preds = %198
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* %14, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %14, align 4
  br label %242

242:                                              ; preds = %238, %231
  br label %165

243:                                              ; preds = %165
  %244 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %245 = load %struct.qdio_buffer_element**, %struct.qdio_buffer_element*** %9, align 8
  store %struct.qdio_buffer_element* %244, %struct.qdio_buffer_element** %245, align 8
  %246 = load i32, i32* %14, align 4
  %247 = load i32*, i32** %10, align 8
  store i32 %246, i32* %247, align 4
  %248 = load i32, i32* %20, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %273

250:                                              ; preds = %243
  %251 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %252 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %273

256:                                              ; preds = %250
  %257 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %258 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 4
  %262 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %263 = call %struct.TYPE_18__* @skb_shinfo(%struct.sk_buff* %262)
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %267 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %270, %265
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %268, align 8
  br label %273

273:                                              ; preds = %256, %250, %243
  %274 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %274, %struct.sk_buff** %6, align 8
  br label %291

275:                                              ; preds = %188, %148
  %276 = call i64 (...) @net_ratelimit()
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %275
  %279 = load i32, i32* @TRACE, align 4
  %280 = call i32 @QETH_DBF_TEXT(i32 %279, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %281 = load i32, i32* @TRACE, align 4
  %282 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %283 = call i32 @CARD_BUS_ID(%struct.qeth_card* %282)
  %284 = call i32 @QETH_DBF_TEXT_(i32 %281, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %278, %275
  %286 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %287 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %291

291:                                              ; preds = %285, %273, %208, %113, %50, %41
  %292 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %292
}

declare dso_local i64 @qeth_is_last_sbale(%struct.qdio_buffer_element*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @qeth_create_skb_frag(%struct.qeth_qdio_buffer*, %struct.qdio_buffer_element*, %struct.sk_buff**, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @CARD_BUS_ID(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qdio_buffer*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_18__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @net_ratelimit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
