; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_work_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_work_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_eacr = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.work_struct = type { i32 }
%struct.etr_aib = type { %struct.TYPE_7__ }

@etr_work_mutex = common dso_local global i32 0, align 4
@etr_eacr = common dso_local global %struct.etr_eacr zeroinitializer, align 8
@disable_sync_clock = common dso_local global i32 0, align 4
@etr_timer = common dso_local global i32 0, align 4
@etr_port0 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@etr_port1 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@etr_tolec = common dso_local global i32 0, align 4
@etr_lpsc_pps_mode = common dso_local global i64 0, align 8
@etr_port0_uptodate = common dso_local global i64 0, align 8
@etr_port1_uptodate = common dso_local global i64 0, align 8
@etr_lpsc_operational_step = common dso_local global i64 0, align 8
@etr_lpsc_operational_alt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @etr_work_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etr_work_fn(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.etr_eacr, align 8
  %5 = alloca %struct.etr_aib, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.etr_eacr, align 8
  %8 = alloca %struct.etr_eacr, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %9 = call i32 @mutex_lock(i32* @etr_work_mutex)
  %10 = bitcast %struct.etr_eacr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.etr_eacr* @etr_eacr to i8*), i64 40, i1 false)
  call void @etr_handle_events(%struct.etr_eacr* sret %7, %struct.etr_eacr* byval(%struct.etr_eacr) align 8 %4)
  %11 = bitcast %struct.etr_eacr* %4 to i8*
  %12 = bitcast %struct.etr_eacr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 40, i1 false)
  %13 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i1 [ true, %1 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* @disable_sync_clock, align 4
  %32 = call i32 @on_each_cpu(i32 %31, i32* null, i32 1)
  %33 = call i32 @del_timer_sync(i32* @etr_timer)
  %34 = call i32 @etr_update_eacr(%struct.etr_eacr* byval(%struct.etr_eacr) align 8 %4)
  br label %255

35:                                               ; preds = %20
  %36 = call i64 @etr_stetr(%struct.etr_aib* %5)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %5, i32 0, i32 0
  %41 = bitcast %struct.TYPE_7__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_8__* @etr_port1 to i8*), i8* align 8 %41, i64 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_8__* @etr_port0 to i8*), i8* align 8 bitcast (%struct.TYPE_8__* @etr_port1 to i8*), i64 16, i1 false)
  %42 = call i64 (...) @get_clock()
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i32, i32* @etr_tolec, align 4
  %45 = add nsw i32 %44, -2036334592
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  call void @etr_handle_update(%struct.etr_eacr* sret %8, %struct.etr_aib* %5, %struct.etr_eacr* byval(%struct.etr_eacr) align 8 %4)
  %49 = bitcast %struct.etr_eacr* %4 to i8*
  %50 = bitcast %struct.etr_eacr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 40, i1 false)
  br label %51

51:                                               ; preds = %48, %35
  %52 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %5, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @etr_lpsc_pps_mode, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %103

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 3
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 4
  store i32 1, i32* %63, align 8
  %64 = call i32 @etr_mode_is_pps(%struct.etr_eacr* byval(%struct.etr_eacr) align 8 @etr_eacr)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 2
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %66, %61
  %69 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %5, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @etr_lpsc_pps_mode, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76, %72, %68
  %83 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 5
  store i32 0, i32* %83, align 4
  br label %93

84:                                               ; preds = %76
  %85 = load i64, i64* @etr_port0_uptodate, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i64, i64* @etr_port1_uptodate, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 5
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %90, %87, %84
  br label %93

93:                                               ; preds = %92, %82
  %94 = load i64, i64* @etr_port0_uptodate, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = call i64 @etr_port_valid(%struct.TYPE_8__* @etr_port0, i32 0)
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i1 [ false, %93 ], [ %98, %96 ]
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 0, i32 -1
  store i32 %102, i32* %6, align 4
  br label %220

103:                                              ; preds = %55, %51
  %104 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %5, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @etr_lpsc_pps_mode, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 3
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 4
  store i32 0, i32* %115, align 8
  %116 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 5
  store i32 1, i32* %116, align 4
  %117 = call i32 @etr_mode_is_pps(%struct.etr_eacr* byval(%struct.etr_eacr) align 8 @etr_eacr)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 2
  store i32 0, i32* %120, align 8
  br label %121

121:                                              ; preds = %119, %113
  %122 = load i64, i64* @etr_port1_uptodate, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = call i64 @etr_port_valid(%struct.TYPE_8__* @etr_port1, i32 1)
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %124, %121
  %128 = phi i1 [ false, %121 ], [ %126, %124 ]
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 -1
  store i32 %130, i32* %6, align 4
  br label %219

131:                                              ; preds = %107, %103
  %132 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %186

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %5, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @etr_lpsc_operational_step, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %186

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 3
  store i32 1, i32* %142, align 4
  %143 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 4
  store i32 1, i32* %143, align 8
  %144 = call i32 @etr_mode_is_etr(%struct.etr_eacr* byval(%struct.etr_eacr) align 8 @etr_eacr)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 2
  store i32 0, i32* %147, align 8
  br label %148

148:                                              ; preds = %146, %141
  %149 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %5, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @etr_lpsc_operational_alt, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %156, %152, %148
  %163 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 5
  store i32 0, i32* %163, align 4
  br label %176

164:                                              ; preds = %156
  %165 = load i64, i64* @etr_port0_uptodate, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load i64, i64* @etr_port1_uptodate, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = call i64 @etr_compare_network(%struct.TYPE_8__* @etr_port0, %struct.TYPE_8__* @etr_port1)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 5
  store i32 1, i32* %174, align 4
  br label %175

175:                                              ; preds = %173, %170, %167, %164
  br label %176

176:                                              ; preds = %175, %162
  %177 = load i64, i64* @etr_port0_uptodate, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = call i64 @etr_port_valid(%struct.TYPE_8__* @etr_port0, i32 0)
  %181 = icmp ne i64 %180, 0
  br label %182

182:                                              ; preds = %179, %176
  %183 = phi i1 [ false, %176 ], [ %181, %179 ]
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 0, i32 -1
  store i32 %185, i32* %6, align 4
  br label %218

186:                                              ; preds = %135, %131
  %187 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %214

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.etr_aib, %struct.etr_aib* %5, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @etr_lpsc_operational_step, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %214

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 3
  store i32 1, i32* %197, align 4
  %198 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 4
  store i32 0, i32* %198, align 8
  %199 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 5
  store i32 1, i32* %199, align 4
  %200 = call i32 @etr_mode_is_etr(%struct.etr_eacr* byval(%struct.etr_eacr) align 8 @etr_eacr)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 2
  store i32 0, i32* %203, align 8
  br label %204

204:                                              ; preds = %202, %196
  %205 = load i64, i64* @etr_port1_uptodate, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = call i64 @etr_port_valid(%struct.TYPE_8__* @etr_port1, i32 1)
  %209 = icmp ne i64 %208, 0
  br label %210

210:                                              ; preds = %207, %204
  %211 = phi i1 [ false, %204 ], [ %209, %207 ]
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 1, i32 -1
  store i32 %213, i32* %6, align 4
  br label %217

214:                                              ; preds = %190, %186
  %215 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 3
  store i32 0, i32* %215, align 4
  %216 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 2
  store i32 0, i32* %216, align 8
  store i32 -1, i32* %6, align 4
  br label %217

217:                                              ; preds = %214, %210
  br label %218

218:                                              ; preds = %217, %182
  br label %219

219:                                              ; preds = %218, %127
  br label %220

220:                                              ; preds = %219, %99
  %221 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = call i64 (...) @check_sync_clock()
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224, %220
  %228 = load i32, i32* %6, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227, %224
  %231 = call i32 @etr_update_eacr(%struct.etr_eacr* byval(%struct.etr_eacr) align 8 %4)
  %232 = load i64, i64* %3, align 8
  %233 = call i32 @etr_set_tolec_timeout(i64 %232)
  br label %255

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 1
  store i32 0, i32* %235, align 4
  %236 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 2
  store i32 1, i32* %236, align 8
  %237 = call i32 @etr_update_eacr(%struct.etr_eacr* byval(%struct.etr_eacr) align 8 %4)
  %238 = load i64, i64* %3, align 8
  %239 = load i32, i32* @etr_tolec, align 4
  %240 = add nsw i32 %239, -2036334592
  %241 = sext i32 %240 to i64
  %242 = icmp ult i64 %238, %241
  br i1 %242, label %247, label %243

243:                                              ; preds = %234
  %244 = load i32, i32* %6, align 4
  %245 = call i64 @etr_sync_clock_stop(%struct.etr_aib* %5, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %243, %234
  %248 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %4, i32 0, i32 2
  store i32 0, i32* %248, align 8
  %249 = call i32 @etr_update_eacr(%struct.etr_eacr* byval(%struct.etr_eacr) align 8 %4)
  %250 = call i32 (...) @etr_set_sync_timeout()
  br label %254

251:                                              ; preds = %243
  %252 = load i64, i64* %3, align 8
  %253 = call i32 @etr_set_tolec_timeout(i64 %252)
  br label %254

254:                                              ; preds = %251, %247
  br label %255

255:                                              ; preds = %254, %230, %27
  %256 = call i32 @mutex_unlock(i32* @etr_work_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @etr_handle_events(%struct.etr_eacr* sret, %struct.etr_eacr* byval(%struct.etr_eacr) align 8) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @etr_update_eacr(%struct.etr_eacr* byval(%struct.etr_eacr) align 8) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @etr_stetr(%struct.etr_aib*) #1

declare dso_local i64 @get_clock(...) #1

declare dso_local void @etr_handle_update(%struct.etr_eacr* sret, %struct.etr_aib*, %struct.etr_eacr* byval(%struct.etr_eacr) align 8) #1

declare dso_local i32 @etr_mode_is_pps(%struct.etr_eacr* byval(%struct.etr_eacr) align 8) #1

declare dso_local i64 @etr_port_valid(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @etr_mode_is_etr(%struct.etr_eacr* byval(%struct.etr_eacr) align 8) #1

declare dso_local i64 @etr_compare_network(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i64 @check_sync_clock(...) #1

declare dso_local i32 @etr_set_tolec_timeout(i64) #1

declare dso_local i64 @etr_sync_clock_stop(%struct.etr_aib*, i32) #1

declare dso_local i32 @etr_set_sync_timeout(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
