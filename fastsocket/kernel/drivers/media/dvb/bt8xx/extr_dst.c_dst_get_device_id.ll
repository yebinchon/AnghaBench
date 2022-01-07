; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_get_device_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_get_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32*, i32, i32, i32*, i32 }
%struct.dst_types = type { i64, i8*, i32, i32, i32, i32 }
%struct.tuner_types = type { i8*, i32, i32 }

@dst_get_device_id.device_type = internal global [8 x i32] [i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255], align 16
@FIXED_COMM = common dso_local global i32 0, align 4
@GET_ACK = common dso_local global i32 0, align 4
@ACK = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Write not Acknowledged! [Reply=0x%02x]\00", align 1
@DEVICE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Checksum failure!\00", align 1
@dst_tlist = common dso_local global i8* null, align 8
@DST_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Recognise [%s]\00", align 1
@TUNER_TYPE_MULTI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Unsupported\00", align 1
@TUNER_TYPE_MB86A15 = common dso_local global i32 0, align 4
@tuner_list = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"[%s] has a [%s]\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unable to recognize %s or %s\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"please email linux-dvb@linuxtv.org with this type in\00", align 1
@DST_TYPE_HAS_SYMDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_get_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_get_device_id(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_types*, align 8
  %8 = alloca %struct.tuner_types*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  store %struct.dst_types* null, %struct.dst_types** %7, align 8
  store %struct.tuner_types* null, %struct.tuner_types** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %12 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = call i32 @dst_check_sum(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dst_get_device_id.device_type, i64 0, i64 0), i32 7)
  store i32 %13, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dst_get_device_id.device_type, i64 0, i64 7), align 4
  %14 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %15 = load i32, i32* @FIXED_COMM, align 4
  %16 = call i64 @write_dst(%struct.dst_state* %14, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dst_get_device_id.device_type, i64 0, i64 0), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %244

19:                                               ; preds = %1
  %20 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %21 = call i64 @dst_pio_disable(%struct.dst_state* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %244

24:                                               ; preds = %19
  %25 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %26 = load i32, i32* @GET_ACK, align 4
  %27 = call i64 @read_dst(%struct.dst_state* %25, i32* %4, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %244

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ACK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @verbose, align 4
  %36 = load i32, i32* @DST_INFO, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %35, i32 %36, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %2, align 4
  br label %244

39:                                               ; preds = %30
  %40 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %41 = load i32, i32* @DEVICE_INIT, align 4
  %42 = call i32 @dst_wait_dst_ready(%struct.dst_state* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  br label %244

45:                                               ; preds = %39
  %46 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %47 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %48 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @FIXED_COMM, align 4
  %51 = call i64 @read_dst(%struct.dst_state* %46, i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %244

54:                                               ; preds = %45
  %55 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %56 = call i64 @dst_pio_disable(%struct.dst_state* %55)
  %57 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %58 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 7
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %63 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @dst_check_sum(i32* %64, i32 7)
  %66 = icmp ne i32 %61, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load i32, i32* @verbose, align 4
  %69 = load i32, i32* @DST_INFO, align 4
  %70 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %68, i32 %69, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %244

71:                                               ; preds = %54
  %72 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %73 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 7
  store i32 0, i32* %75, align 4
  store i32 0, i32* %5, align 4
  %76 = load i8*, i8** @dst_tlist, align 8
  %77 = bitcast i8* %76 to %struct.dst_types*
  store %struct.dst_types* %77, %struct.dst_types** %7, align 8
  br label %78

78:                                               ; preds = %206, %71
  %79 = load i32, i32* %5, align 4
  %80 = load i8*, i8** @dst_tlist, align 8
  %81 = call i32 @ARRAY_SIZE(i8* %80)
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %211

83:                                               ; preds = %78
  %84 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %85 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %88 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = bitcast i32* %90 to i8*
  %92 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %93 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %96 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = call i32 @strncmp(i8* %91, i8* %94, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %205, label %101

101:                                              ; preds = %83
  %102 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %103 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %10, align 4
  %105 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %106 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %9, align 4
  %108 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %109 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %112 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @verbose, align 4
  %114 = load i32, i32* @DST_ERROR, align 4
  %115 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %116 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %113, i32 %114, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %117)
  %119 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %120 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %124 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strncpy(i32* %122, i8* %125, i32 6)
  %127 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %128 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @TUNER_TYPE_MULTI, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %101
  %134 = load i32, i32* %9, align 4
  switch i32 %134, label %147 [
    i32 128, label %135
  ]

135:                                              ; preds = %133
  %136 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %137 = call i32 @dst_check_stv0299(%struct.dst_state* %136)
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i32, i32* @verbose, align 4
  %141 = load i32, i32* @DST_ERROR, align 4
  %142 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %140, i32 %141, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %143 = load i32, i32* @TUNER_TYPE_MB86A15, align 4
  %144 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %145 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %139, %135
  br label %148

147:                                              ; preds = %133
  br label %148

148:                                              ; preds = %147, %146
  %149 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %150 = call i64 @dst_check_mb86a15(%struct.dst_state* %149)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, i32* @verbose, align 4
  %154 = load i32, i32* @DST_ERROR, align 4
  %155 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %153, i32 %154, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %156

156:                                              ; preds = %152, %148
  br label %163

157:                                              ; preds = %101
  %158 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %159 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %162 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %157, %156
  store i32 0, i32* %6, align 4
  %164 = load i8*, i8** @tuner_list, align 8
  %165 = bitcast i8* %164 to %struct.tuner_types*
  store %struct.tuner_types* %165, %struct.tuner_types** %8, align 8
  br label %166

166:                                              ; preds = %199, %163
  %167 = load i32, i32* %6, align 4
  %168 = load i8*, i8** @tuner_list, align 8
  %169 = call i32 @ARRAY_SIZE(i8* %168)
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %204

171:                                              ; preds = %166
  %172 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %173 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.tuner_types*, %struct.tuner_types** %8, align 8
  %176 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @strncmp(i8* %174, i8* %177, i32 7)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %198, label %180

180:                                              ; preds = %171
  %181 = load %struct.tuner_types*, %struct.tuner_types** %8, align 8
  %182 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %185 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %183, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %180
  %189 = load i32, i32* @verbose, align 4
  %190 = load i32, i32* @DST_ERROR, align 4
  %191 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %192 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct.tuner_types*, %struct.tuner_types** %8, align 8
  %195 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %189, i32 %190, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %193, i32 %196)
  br label %198

198:                                              ; preds = %188, %180, %171
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  %202 = load %struct.tuner_types*, %struct.tuner_types** %8, align 8
  %203 = getelementptr inbounds %struct.tuner_types, %struct.tuner_types* %202, i32 1
  store %struct.tuner_types* %203, %struct.tuner_types** %8, align 8
  br label %166

204:                                              ; preds = %166
  br label %211

205:                                              ; preds = %83
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %5, align 4
  %209 = load %struct.dst_types*, %struct.dst_types** %7, align 8
  %210 = getelementptr inbounds %struct.dst_types, %struct.dst_types* %209, i32 1
  store %struct.dst_types* %210, %struct.dst_types** %7, align 8
  br label %78

211:                                              ; preds = %204, %78
  %212 = load i32, i32* %5, align 4
  %213 = load i8*, i8** @dst_tlist, align 8
  %214 = call i32 @ARRAY_SIZE(i8* %213)
  %215 = icmp sge i32 %212, %214
  br i1 %215, label %216, label %232

216:                                              ; preds = %211
  %217 = load i32, i32* @verbose, align 4
  %218 = load i32, i32* @DST_ERROR, align 4
  %219 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %220 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %224 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %217, i32 %218, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32* %222, i32* %226)
  %228 = load i32, i32* @verbose, align 4
  %229 = load i32, i32* @DST_ERROR, align 4
  %230 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %228, i32 %229, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  store i32 128, i32* %9, align 4
  %231 = load i32, i32* @DST_TYPE_HAS_SYMDIV, align 4
  store i32 %231, i32* %10, align 4
  br label %232

232:                                              ; preds = %216, %211
  %233 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %234 = load i32, i32* %9, align 4
  %235 = call i32 @dst_type_print(%struct.dst_state* %233, i32 %234)
  %236 = load i32, i32* %10, align 4
  %237 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %238 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* %9, align 4
  %240 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %241 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %243 = call i32 @dst_type_flags_print(%struct.dst_state* %242)
  store i32 0, i32* %2, align 4
  br label %244

244:                                              ; preds = %232, %67, %53, %44, %34, %29, %23, %18
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @dst_check_sum(i32*, i32) #1

declare dso_local i64 @write_dst(%struct.dst_state*, i32*, i32) #1

declare dso_local i64 @dst_pio_disable(%struct.dst_state*) #1

declare dso_local i64 @read_dst(%struct.dst_state*, i32*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @dst_wait_dst_ready(%struct.dst_state*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

declare dso_local i32 @dst_check_stv0299(%struct.dst_state*) #1

declare dso_local i64 @dst_check_mb86a15(%struct.dst_state*) #1

declare dso_local i32 @dst_type_print(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_type_flags_print(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
