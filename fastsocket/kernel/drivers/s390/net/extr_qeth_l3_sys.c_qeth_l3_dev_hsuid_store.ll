; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_hsuid_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_sys.c_qeth_l3_dev_hsuid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.qeth_card = type { i64, %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i8*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.qeth_ipaddr = type { i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i8* }

@EINVAL = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@CARD_STATE_DOWN = common dso_local global i64 0, align 8
@CARD_STATE_RECOVER = common dso_local global i64 0, align 8
@QETH_CQ_NOTAVAILABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@QETH_PROT_IPV6 = common dso_local global i32 0, align 4
@QETH_IP_TYPE_NORMAL = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i64 0, align 8
@QETH_CQ_DISABLED = common dso_local global i32 0, align 4
@QETH_CQ_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @qeth_l3_dev_hsuid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qeth_l3_dev_hsuid_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qeth_card*, align 8
  %11 = alloca %struct.qeth_ipaddr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.qeth_card* @dev_get_drvdata(%struct.device* %14)
  store %struct.qeth_card* %15, %struct.qeth_card** %10, align 8
  %16 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %17 = icmp ne %struct.qeth_card* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %303

21:                                               ; preds = %4
  %22 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i64, i64* @EPERM, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %303

31:                                               ; preds = %21
  %32 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CARD_STATE_DOWN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %39 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CARD_STATE_RECOVER, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* @EPERM, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %303

46:                                               ; preds = %37, %31
  %47 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i64, i64* @EPERM, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %303

55:                                               ; preds = %46
  %56 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %57 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @QETH_CQ_NOTAVAILABLE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i64, i64* @EPERM, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %5, align 8
  br label %303

65:                                               ; preds = %55
  %66 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = icmp sgt i32 %68, 8
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* @EINVAL, align 8
  %72 = sub i64 0, %71
  store i64 %72, i64* %5, align 8
  br label %303

73:                                               ; preds = %65
  %74 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %148

81:                                               ; preds = %73
  %82 = load i32, i32* @QETH_PROT_IPV6, align 4
  %83 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %82)
  store %struct.qeth_ipaddr* %83, %struct.qeth_ipaddr** %11, align 8
  %84 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %85 = icmp ne %struct.qeth_ipaddr* %84, null
  br i1 %85, label %86, label %134

86:                                               ; preds = %81
  %87 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %88 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 -25165824, i32* %93, align 4
  %94 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %95 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 0, i32* %100, align 4
  store i32 8, i32* %13, align 4
  br label %101

101:                                              ; preds = %123, %86
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 16
  br i1 %103, label %104, label %126

104:                                              ; preds = %101
  %105 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %106 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sub nsw i32 %109, 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %115 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 %113, i8* %122, align 1
  br label %123

123:                                              ; preds = %104
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %101

126:                                              ; preds = %101
  %127 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %128 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  %131 = load i8*, i8** @QETH_IP_TYPE_NORMAL, align 8
  %132 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %133 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  br label %137

134:                                              ; preds = %81
  %135 = load i64, i64* @ENOMEM, align 8
  %136 = sub i64 0, %135
  store i64 %136, i64* %5, align 8
  br label %303

137:                                              ; preds = %126
  %138 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %139 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %140 = call i32 @qeth_l3_delete_ip(%struct.qeth_card* %138, %struct.qeth_ipaddr* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %144 = call i32 @kfree(%struct.qeth_ipaddr* %143)
  br label %145

145:                                              ; preds = %142, %137
  %146 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %147 = call i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card* %146)
  br label %148

148:                                              ; preds = %145, %73
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 @strlen(i8* %149)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %178

152:                                              ; preds = %148
  %153 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %154 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  store i8 0, i8* %157, align 1
  %158 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %159 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %158, i32 0, i32 2
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = icmp ne %struct.TYPE_8__* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %152
  %163 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %164 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %163, i32 0, i32 2
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %169 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @memcpy(i32 %167, i8* %171, i32 9)
  br label %173

173:                                              ; preds = %162, %152
  %174 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %175 = load i32, i32* @QETH_CQ_DISABLED, align 4
  %176 = call i64 @qeth_configure_cq(%struct.qeth_card* %174, i32 %175)
  %177 = load i64, i64* %9, align 8
  store i64 %177, i64* %5, align 8
  br label %303

178:                                              ; preds = %148
  %179 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %180 = load i32, i32* @QETH_CQ_ENABLED, align 4
  %181 = call i64 @qeth_configure_cq(%struct.qeth_card* %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i64, i64* @EPERM, align 8
  %185 = sub i64 0, %184
  store i64 %185, i64* %5, align 8
  br label %303

186:                                              ; preds = %178
  store i32 0, i32* %13, align 4
  br label %187

187:                                              ; preds = %198, %186
  %188 = load i32, i32* %13, align 4
  %189 = icmp slt i32 %188, 8
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %192 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  store i8 32, i8* %197, align 1
  br label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %187

201:                                              ; preds = %187
  %202 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %203 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 8
  store i8 0, i8* %206, align 1
  %207 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %208 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = load i8*, i8** %12, align 8
  %212 = load i8*, i8** %12, align 8
  %213 = call i32 @strlen(i8* %212)
  %214 = call i32 @strncpy(i8* %210, i8* %211, i32 %213)
  %215 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %216 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @ASCEBC(i8* %218, i32 8)
  %220 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %221 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %220, i32 0, i32 2
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = icmp ne %struct.TYPE_8__* %222, null
  br i1 %223, label %224, label %235

224:                                              ; preds = %201
  %225 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %226 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %225, i32 0, i32 2
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %231 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @memcpy(i32 %229, i8* %233, i32 9)
  br label %235

235:                                              ; preds = %224, %201
  %236 = load i32, i32* @QETH_PROT_IPV6, align 4
  %237 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32 %236)
  store %struct.qeth_ipaddr* %237, %struct.qeth_ipaddr** %11, align 8
  %238 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %239 = icmp ne %struct.qeth_ipaddr* %238, null
  br i1 %239, label %240, label %288

240:                                              ; preds = %235
  %241 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %242 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  store i32 -25165824, i32* %247, align 4
  %248 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %249 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  store i32 0, i32* %254, align 4
  store i32 8, i32* %13, align 4
  br label %255

255:                                              ; preds = %277, %240
  %256 = load i32, i32* %13, align 4
  %257 = icmp slt i32 %256, 16
  br i1 %257, label %258, label %280

258:                                              ; preds = %255
  %259 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %260 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sub nsw i32 %263, 8
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %262, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %269 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  %274 = load i32, i32* %13, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  store i8 %267, i8* %276, align 1
  br label %277

277:                                              ; preds = %258
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %13, align 4
  br label %255

280:                                              ; preds = %255
  %281 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %282 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 0
  store i64 0, i64* %284, align 8
  %285 = load i8*, i8** @QETH_IP_TYPE_NORMAL, align 8
  %286 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %287 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %286, i32 0, i32 0
  store i8* %285, i8** %287, align 8
  br label %291

288:                                              ; preds = %235
  %289 = load i64, i64* @ENOMEM, align 8
  %290 = sub i64 0, %289
  store i64 %290, i64* %5, align 8
  br label %303

291:                                              ; preds = %280
  %292 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %293 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %294 = call i32 @qeth_l3_add_ip(%struct.qeth_card* %292, %struct.qeth_ipaddr* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %291
  %297 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %11, align 8
  %298 = call i32 @kfree(%struct.qeth_ipaddr* %297)
  br label %299

299:                                              ; preds = %296, %291
  %300 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  %301 = call i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card* %300)
  %302 = load i64, i64* %9, align 8
  store i64 %302, i64* %5, align 8
  br label %303

303:                                              ; preds = %299, %288, %183, %173, %134, %70, %62, %52, %43, %28, %18
  %304 = load i64, i64* %5, align 8
  ret i64 %304
}

declare dso_local %struct.qeth_card* @dev_get_drvdata(%struct.device*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i32) #1

declare dso_local i32 @qeth_l3_delete_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @kfree(%struct.qeth_ipaddr*) #1

declare dso_local i32 @qeth_l3_set_ip_addr_list(%struct.qeth_card*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @qeth_configure_cq(%struct.qeth_card*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @ASCEBC(i8*, i32) #1

declare dso_local i32 @qeth_l3_add_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
