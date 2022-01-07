; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_unpack_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_unpack_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.claw_privbk* }
%struct.claw_privbk = type { i32, i64, i64, %struct.ccwbk*, %struct.TYPE_8__, i64, %struct.claw_env*, %struct.TYPE_6__* }
%struct.ccwbk = type { i8*, %struct.ccwbk*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.claw_env = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.clawph = type { i32, i64, i64 }
%struct.clawctl = type { i64 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"unpkread\00", align 1
@READ = common dso_local global i64 0, align 8
@CLAW_PENDING = common dso_local global i64 0, align 8
@PACK_SEND = common dso_local global i64 0, align 8
@CONNECTION_RESPONSE = common dso_local global i64 0, align 8
@CONNECTION_CONFIRM = common dso_local global i64 0, align 8
@DO_PACKED = common dso_local global i64 0, align 8
@MORE_to_COME_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"The communication peer of %s sent a faulty frame of length %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UnpkCntl\00", align 1
@MAX_ENVELOPE_SIZE = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Allocating a buffer for incoming data failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rxpkt %d\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rxfrm %d\00", align 1
@LOCK_YES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @unpack_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_read(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.claw_privbk*, align 8
  %5 = alloca %struct.claw_env*, align 8
  %6 = alloca %struct.ccwbk*, align 8
  %7 = alloca %struct.ccwbk*, align 8
  %8 = alloca %struct.ccwbk*, align 8
  %9 = alloca %struct.clawph*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.clawctl*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store %struct.clawctl* null, %struct.clawctl** %11, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @trace, align 4
  %21 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.ccwbk* null, %struct.ccwbk** %7, align 8
  store %struct.ccwbk* null, %struct.ccwbk** %8, align 8
  store %struct.clawph* null, %struct.clawph** %9, align 8
  store i8* null, i8** %10, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load %struct.claw_privbk*, %struct.claw_privbk** %23, align 8
  store %struct.claw_privbk* %24, %struct.claw_privbk** %4, align 8
  %25 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %26 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %25, i32 0, i32 7
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i64, i64* @READ, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.device* %32, %struct.device** %12, align 8
  %33 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %34 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %33, i32 0, i32 6
  %35 = load %struct.claw_env*, %struct.claw_env** %34, align 8
  store %struct.claw_env* %35, %struct.claw_env** %5, align 8
  %36 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %37 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %36, i32 0, i32 3
  %38 = load %struct.ccwbk*, %struct.ccwbk** %37, align 8
  store %struct.ccwbk* %38, %struct.ccwbk** %6, align 8
  br label %39

39:                                               ; preds = %373, %1
  %40 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %41 = icmp ne %struct.ccwbk* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %44 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CLAW_PENDING, align 8
  %48 = icmp ne i64 %46, %47
  br label %49

49:                                               ; preds = %42, %39
  %50 = phi i1 [ false, %39 ], [ %48, %42 ]
  br i1 %50, label %51, label %381

51:                                               ; preds = %49
  store i64 0, i64* %14, align 8
  store i32 0, i32* %19, align 4
  %52 = load i64, i64* @CLAW_PENDING, align 8
  %53 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %54 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %57 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %56, i32 0, i32 1
  %58 = load %struct.ccwbk*, %struct.ccwbk** %57, align 8
  %59 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %60 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %59, i32 0, i32 3
  store %struct.ccwbk* %58, %struct.ccwbk** %60, align 8
  %61 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %62 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %61, i32 0, i32 1
  store %struct.ccwbk* null, %struct.ccwbk** %62, align 8
  %63 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %64 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = bitcast i8* %65 to %struct.clawph*
  store %struct.clawph* %66, %struct.clawph** %9, align 8
  %67 = load %struct.claw_env*, %struct.claw_env** %5, align 8
  %68 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PACK_SEND, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %51
  %73 = load %struct.clawph*, %struct.clawph** %9, align 8
  %74 = getelementptr inbounds %struct.clawph, %struct.clawph* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %105

77:                                               ; preds = %72
  %78 = load %struct.clawph*, %struct.clawph** %9, align 8
  %79 = getelementptr inbounds %struct.clawph, %struct.clawph* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %77
  %83 = load %struct.clawph*, %struct.clawph** %9, align 8
  %84 = getelementptr inbounds %struct.clawph, %struct.clawph* %83, i32 1
  store %struct.clawph* %84, %struct.clawph** %9, align 8
  %85 = load %struct.clawph*, %struct.clawph** %9, align 8
  %86 = bitcast %struct.clawph* %85 to %struct.clawctl*
  store %struct.clawctl* %86, %struct.clawctl** %11, align 8
  %87 = load %struct.clawph*, %struct.clawph** %9, align 8
  %88 = getelementptr inbounds %struct.clawph, %struct.clawph* %87, i32 -1
  store %struct.clawph* %88, %struct.clawph** %9, align 8
  %89 = load %struct.clawctl*, %struct.clawctl** %11, align 8
  %90 = getelementptr inbounds %struct.clawctl, %struct.clawctl* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CONNECTION_RESPONSE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %82
  %95 = load %struct.clawctl*, %struct.clawctl** %11, align 8
  %96 = getelementptr inbounds %struct.clawctl, %struct.clawctl* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CONNECTION_CONFIRM, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94, %82
  %101 = load i64, i64* @DO_PACKED, align 8
  %102 = load %struct.claw_env*, %struct.claw_env** %5, align 8
  %103 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %94
  br label %105

105:                                              ; preds = %104, %77, %72, %51
  %106 = load %struct.claw_env*, %struct.claw_env** %5, align 8
  %107 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DO_PACKED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load %struct.clawph*, %struct.clawph** %9, align 8
  %113 = getelementptr inbounds %struct.clawph, %struct.clawph* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %15, align 4
  br label %122

116:                                              ; preds = %105
  %117 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %118 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sdiv i32 %120, 8
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %116, %111
  %123 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %124 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @MORE_to_COME_FLAG, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %122
  store i32 1, i32* %16, align 4
  %131 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %132 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %136 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %135, i32 0, i32 6
  %137 = load %struct.claw_env*, %struct.claw_env** %136, align 8
  %138 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %134, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %130
  %142 = load %struct.device*, %struct.device** %12, align 8
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %147 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dev_warn(%struct.device* %142, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %149)
  br label %151

151:                                              ; preds = %141, %130
  br label %152

152:                                              ; preds = %151, %122
  %153 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %154 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load i32, i32* %16, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %162 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %161, i32 0, i32 5
  store i64 0, i64* %162, align 8
  %163 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %164 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %163, i32 0, i32 0
  store i32 -1, i32* %164, align 8
  br label %165

165:                                              ; preds = %160, %157
  br label %356

166:                                              ; preds = %152
  %167 = load i32, i32* %15, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load %struct.net_device*, %struct.net_device** %2, align 8
  %171 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %172 = call i32 @claw_process_control(%struct.net_device* %170, %struct.ccwbk* %171)
  %173 = load i32, i32* @trace, align 4
  %174 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %356

175:                                              ; preds = %166
  br label %176

176:                                              ; preds = %354, %175
  %177 = load %struct.claw_env*, %struct.claw_env** %5, align 8
  %178 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @DO_PACKED, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %219

182:                                              ; preds = %176
  %183 = load i64, i64* %14, align 8
  %184 = load %struct.claw_env*, %struct.claw_env** %5, align 8
  %185 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = icmp sgt i64 %183, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %356

190:                                              ; preds = %182
  %191 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %192 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i64, i64* %14, align 8
  %195 = getelementptr i8, i8* %193, i64 %194
  store i8* %195, i8** %10, align 8
  %196 = load i8*, i8** %10, align 8
  %197 = bitcast i8* %196 to %struct.clawph*
  store %struct.clawph* %197, %struct.clawph** %9, align 8
  %198 = load %struct.clawph*, %struct.clawph** %9, align 8
  %199 = getelementptr inbounds %struct.clawph, %struct.clawph* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %190
  %203 = load %struct.clawph*, %struct.clawph** %9, align 8
  %204 = getelementptr inbounds %struct.clawph, %struct.clawph* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202, %190
  br label %356

208:                                              ; preds = %202
  %209 = load %struct.clawph*, %struct.clawph** %9, align 8
  %210 = getelementptr inbounds %struct.clawph, %struct.clawph* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %17, align 8
  %213 = load i64, i64* %17, align 8
  %214 = add i64 %213, 24
  %215 = load i64, i64* %14, align 8
  %216 = add i64 %215, %214
  store i64 %216, i64* %14, align 8
  %217 = load i32, i32* %19, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %19, align 4
  br label %225

219:                                              ; preds = %176
  %220 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %221 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %17, align 8
  br label %225

225:                                              ; preds = %219, %208
  %226 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %227 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %232 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %231, i32 0, i32 1
  store i64 0, i64* %232, align 8
  %233 = load i32, i32* %15, align 4
  %234 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %235 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  br label %236

236:                                              ; preds = %230, %225
  %237 = load i64, i64* %17, align 8
  %238 = load i64, i64* @MAX_ENVELOPE_SIZE, align 8
  %239 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %240 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = sub nsw i64 %238, %241
  %243 = icmp sgt i64 %237, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %236
  %245 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %246 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 8
  br label %356

250:                                              ; preds = %236
  %251 = load %struct.claw_env*, %struct.claw_env** %5, align 8
  %252 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @DO_PACKED, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %268

256:                                              ; preds = %250
  %257 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %258 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %261 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %259, %262
  %264 = load i8*, i8** %10, align 8
  %265 = getelementptr i8, i8* %264, i64 24
  %266 = load i64, i64* %17, align 8
  %267 = call i32 @memcpy(i64 %263, i8* %265, i64 %266)
  br label %281

268:                                              ; preds = %250
  %269 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %270 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %273 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %271, %274
  %276 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %277 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = load i64, i64* %17, align 8
  %280 = call i32 @memcpy(i64 %275, i8* %278, i64 %279)
  br label %281

281:                                              ; preds = %268, %256
  %282 = load i32, i32* %16, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %342

284:                                              ; preds = %281
  %285 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %286 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* %17, align 8
  %289 = add nsw i64 %287, %288
  store i64 %289, i64* %13, align 8
  %290 = load i64, i64* %13, align 8
  %291 = call %struct.sk_buff* @dev_alloc_skb(i64 %290)
  store %struct.sk_buff* %291, %struct.sk_buff** %3, align 8
  %292 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %293 = icmp ne %struct.sk_buff* %292, null
  br i1 %293, label %294, label %329

294:                                              ; preds = %284
  %295 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %296 = load i64, i64* %13, align 8
  %297 = call i64 @skb_put(%struct.sk_buff* %295, i64 %296)
  %298 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %299 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = inttoptr i64 %300 to i8*
  %302 = load i64, i64* %13, align 8
  %303 = call i32 @memcpy(i64 %297, i8* %301, i64 %302)
  %304 = load %struct.net_device*, %struct.net_device** %2, align 8
  %305 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %306 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %305, i32 0, i32 2
  store %struct.net_device* %304, %struct.net_device** %306, align 8
  %307 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %308 = call i32 @skb_reset_mac_header(%struct.sk_buff* %307)
  %309 = load i32, i32* @ETH_P_IP, align 4
  %310 = call i32 @htons(i32 %309)
  %311 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %312 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %311, i32 0, i32 1
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %314 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %315 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  %316 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %317 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %316, i32 0, i32 4
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 4
  %321 = load i64, i64* %13, align 8
  %322 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %323 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = add nsw i64 %325, %321
  store i64 %326, i64* %324, align 8
  %327 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %328 = call i32 @netif_rx(%struct.sk_buff* %327)
  br label %337

329:                                              ; preds = %284
  %330 = load %struct.device*, %struct.device** %12, align 8
  %331 = call i32 @dev_info(%struct.device* %330, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %332 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %333 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %329, %294
  %338 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %339 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %338, i32 0, i32 1
  store i64 0, i64* %339, align 8
  %340 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %341 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %340, i32 0, i32 0
  store i32 -1, i32* %341, align 8
  br label %348

342:                                              ; preds = %281
  %343 = load i64, i64* %17, align 8
  %344 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %345 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = add nsw i64 %346, %343
  store i64 %347, i64* %345, align 8
  br label %348

348:                                              ; preds = %342, %337
  %349 = load %struct.claw_env*, %struct.claw_env** %5, align 8
  %350 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @DO_PACKED, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %348
  br label %176

355:                                              ; preds = %348
  br label %356

356:                                              ; preds = %355, %244, %207, %189, %169, %165
  %357 = load i32, i32* %18, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %18, align 4
  %359 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %360 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 2
  store i32 65535, i32* %361, align 4
  %362 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %363 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 1
  store i32 255, i32* %364, align 8
  %365 = load %struct.ccwbk*, %struct.ccwbk** %7, align 8
  %366 = icmp eq %struct.ccwbk* %365, null
  br i1 %366, label %367, label %369

367:                                              ; preds = %356
  %368 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  store %struct.ccwbk* %368, %struct.ccwbk** %7, align 8
  br label %373

369:                                              ; preds = %356
  %370 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  %371 = load %struct.ccwbk*, %struct.ccwbk** %8, align 8
  %372 = getelementptr inbounds %struct.ccwbk, %struct.ccwbk* %371, i32 0, i32 1
  store %struct.ccwbk* %370, %struct.ccwbk** %372, align 8
  br label %373

373:                                              ; preds = %369, %367
  %374 = load %struct.ccwbk*, %struct.ccwbk** %6, align 8
  store %struct.ccwbk* %374, %struct.ccwbk** %8, align 8
  %375 = load %struct.claw_privbk*, %struct.claw_privbk** %4, align 8
  %376 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %375, i32 0, i32 3
  %377 = load %struct.ccwbk*, %struct.ccwbk** %376, align 8
  store %struct.ccwbk* %377, %struct.ccwbk** %6, align 8
  %378 = load i32, i32* @trace, align 4
  %379 = load i32, i32* %19, align 4
  %380 = call i32 @CLAW_DBF_TEXT_(i32 4, i32 %378, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %379)
  br label %39

381:                                              ; preds = %49
  %382 = load i32, i32* @trace, align 4
  %383 = load i32, i32* %18, align 4
  %384 = call i32 @CLAW_DBF_TEXT_(i32 4, i32 %382, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %383)
  %385 = load %struct.net_device*, %struct.net_device** %2, align 8
  %386 = load %struct.ccwbk*, %struct.ccwbk** %7, align 8
  %387 = load %struct.ccwbk*, %struct.ccwbk** %8, align 8
  %388 = call i32 @add_claw_reads(%struct.net_device* %385, %struct.ccwbk* %386, %struct.ccwbk* %387)
  %389 = load %struct.net_device*, %struct.net_device** %2, align 8
  %390 = load i32, i32* @LOCK_YES, align 4
  %391 = call i32 @claw_strt_read(%struct.net_device* %389, i32 %390)
  ret void
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @claw_process_control(%struct.net_device*, %struct.ccwbk*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @add_claw_reads(%struct.net_device*, %struct.ccwbk*, %struct.ccwbk*) #1

declare dso_local i32 @claw_strt_read(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
