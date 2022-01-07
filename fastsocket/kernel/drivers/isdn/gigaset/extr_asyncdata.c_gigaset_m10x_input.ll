; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_gigaset_m10x_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_gigaset_m10x_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i32, i32, i8*, i32, %struct.TYPE_2__*, %struct.cardstate* }
%struct.TYPE_2__ = type { i64 }
%struct.cardstate = type { i64, i32, i64 }

@DEBUG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"buffer state: %u -> %u\00", align 1
@RBUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"processing %u bytes\00", align 1
@MS_LOCKED = common dso_local global i64 0, align 8
@DLE_FLAG = common dso_local global i8 0, align 1
@INS_DLE_command = common dso_local global i32 0, align 4
@INS_DLE_char = common dso_local global i32 0, align 4
@INS_command = common dso_local global i32 0, align 4
@ISDN_PROTO_L2_HDLC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"received <DLE> 'X' in command mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"received <DLE> '.' in hdlc mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"received 0x10 0x%02x!\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"setting head to %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_m10x_input(%struct.inbuf_t* %0) #0 {
  %2 = alloca %struct.inbuf_t*, align 8
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.inbuf_t* %0, %struct.inbuf_t** %2, align 8
  %10 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %11 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %14 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @DEBUG_INTR, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %253

23:                                               ; preds = %1
  %24 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %25 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %24, i32 0, i32 5
  %26 = load %struct.cardstate*, %struct.cardstate** %25, align 8
  store %struct.cardstate* %26, %struct.cardstate** %3, align 8
  %27 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %28 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* @RBUFSIZE, align 4
  br label %40

38:                                               ; preds = %23
  %39 = load i32, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load i32, i32* %5, align 4
  %43 = sub i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @DEBUG_INTR, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %245, %40
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %246

50:                                               ; preds = %47
  %51 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %52 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MS_LOCKED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %60 = call i32 @lock_loop(i8* %57, i32 %58, %struct.inbuf_t* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %229

68:                                               ; preds = %50
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  %71 = load i8, i8* %69, align 1
  store i8 %71, i8* %8, align 1
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %6, align 4
  %74 = load i8, i8* %8, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @DLE_FLAG, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %68
  %80 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %81 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %86 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @INS_DLE_command, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %84, %79
  %92 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %93 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @INS_DLE_char, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* @INS_DLE_char, align 4
  %100 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %101 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %230

104:                                              ; preds = %91
  %105 = load i32, i32* @INS_DLE_char, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %108 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %104, %84, %68
  %112 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %113 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @INS_DLE_char, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %160, label %118

118:                                              ; preds = %111
  %119 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %120 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @INS_command, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i8, i8* %8, align 1
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %130 = call i32 @cmd_loop(i8 zeroext %126, i8* %127, i32 %128, %struct.inbuf_t* %129)
  store i32 %130, i32* %9, align 4
  br label %152

131:                                              ; preds = %118
  %132 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %133 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %132, i32 0, i32 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ISDN_PROTO_L2_HDLC, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = load i8, i8* %8, align 1
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %144 = call i32 @hdlc_loop(i8 zeroext %140, i8* %141, i32 %142, %struct.inbuf_t* %143)
  store i32 %144, i32* %9, align 4
  br label %151

145:                                              ; preds = %131
  %146 = load i8, i8* %8, align 1
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %150 = call i32 @iraw_loop(i8 zeroext %146, i8* %147, i32 %148, %struct.inbuf_t* %149)
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %145, %139
  br label %152

152:                                              ; preds = %151, %125
  %153 = load i32, i32* %9, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %7, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %6, align 4
  %159 = sub i32 %158, %157
  store i32 %159, i32* %6, align 4
  br label %228

160:                                              ; preds = %111
  %161 = load i32, i32* @INS_DLE_char, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %164 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load i8, i8* %8, align 1
  %168 = zext i8 %167 to i32
  switch i32 %168, label %220 [
    i32 88, label %169
    i32 46, label %189
  ]

169:                                              ; preds = %160
  %170 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %171 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @INS_command, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %169
  %177 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %178 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @dev_warn(i32 %179, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %181

181:                                              ; preds = %176, %169
  %182 = load i32, i32* @INS_command, align 4
  %183 = load i32, i32* @INS_DLE_command, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %186 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %227

189:                                              ; preds = %160
  %190 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %191 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @INS_command, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %189
  %197 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %198 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @dev_warn(i32 %199, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %201

201:                                              ; preds = %196, %189
  %202 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %203 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load i32, i32* @INS_DLE_command, align 4
  %208 = load i32, i32* @INS_command, align 4
  %209 = or i32 %207, %208
  %210 = xor i32 %209, -1
  br label %214

211:                                              ; preds = %201
  %212 = load i32, i32* @INS_DLE_command, align 4
  %213 = xor i32 %212, -1
  br label %214

214:                                              ; preds = %211, %206
  %215 = phi i32 [ %210, %206 ], [ %213, %211 ]
  %216 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %217 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %227

220:                                              ; preds = %160
  %221 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %222 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i8, i8* %8, align 1
  %225 = zext i8 %224 to i32
  %226 = call i32 @dev_err(i32 %223, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %220, %214, %181
  br label %228

228:                                              ; preds = %227, %152
  br label %229

229:                                              ; preds = %228, %56
  br label %230

230:                                              ; preds = %229, %98
  %231 = load i32, i32* %6, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %245, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* %4, align 4
  %236 = icmp ugt i32 %234, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  store i32 0, i32* %5, align 4
  %238 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %239 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  store i8* %240, i8** %7, align 8
  %241 = load i32, i32* %4, align 4
  store i32 %241, i32* %6, align 4
  br label %244

242:                                              ; preds = %233
  %243 = load i32, i32* %4, align 4
  store i32 %243, i32* %5, align 4
  br label %246

244:                                              ; preds = %237
  br label %245

245:                                              ; preds = %244, %230
  br label %47

246:                                              ; preds = %242, %47
  %247 = load i32, i32* @DEBUG_INTR, align 4
  %248 = load i32, i32* %5, align 4
  %249 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %247, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %248)
  %250 = load i32, i32* %5, align 4
  %251 = load %struct.inbuf_t*, %struct.inbuf_t** %2, align 8
  %252 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  br label %253

253:                                              ; preds = %246, %1
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @lock_loop(i8*, i32, %struct.inbuf_t*) #1

declare dso_local i32 @cmd_loop(i8 zeroext, i8*, i32, %struct.inbuf_t*) #1

declare dso_local i32 @hdlc_loop(i8 zeroext, i8*, i32, %struct.inbuf_t*) #1

declare dso_local i32 @iraw_loop(i8 zeroext, i8*, i32, %struct.inbuf_t*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
