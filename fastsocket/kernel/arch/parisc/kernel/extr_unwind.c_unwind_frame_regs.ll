; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_frame_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_unwind.c_unwind_frame_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_frame_info = type { i64, i64, i32, i64, i64, i64 }
%struct.unwind_table_entry = type { i64, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Cannot find unwind entry for 0x%lx; forced unwinding\0A\00", align 1
@RP_OFFSET = common dso_local global i64 0, align 8
@_stext = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"analyzing func @ %lx with no unwind info, setting prev_sp=%lx prev_ip=%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"e->start = 0x%x, e->end = 0x%x, Save_SP = %d, Save_RP = %d, Millicode = %d size = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"analyzing func @ %lx, insn=%08x @ %lx, frame_size = %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"analyzing func @ %lx, insn=stw rp,-20(sp) @ %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"analyzing func @ %lx, insn=std rp,-16(sp) @ %lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"analyzing func @ %lx, setting prev_sp=%lx prev_ip=%lx npc=%lx\0A\00", align 1
@CALLEE_SAVE_FRAME_SIZE = common dso_local global i64 0, align 8
@KSYM_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unwind_frame_info*)* @unwind_frame_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unwind_frame_regs(%struct.unwind_frame_info* %0) #0 {
  %2 = alloca %struct.unwind_frame_info*, align 8
  %3 = alloca %struct.unwind_table_entry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.unwind_frame_info* %0, %struct.unwind_frame_info** %2, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %12 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.unwind_table_entry* @find_unwind_entry(i64 %13)
  store %struct.unwind_table_entry* %14, %struct.unwind_table_entry** %3, align 8
  %15 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %16 = icmp eq %struct.unwind_table_entry* %15, null
  br i1 %16, label %17, label %76

17:                                               ; preds = %1
  %18 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %19 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %23 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, -64
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %61, %17
  %28 = load i64, i64* %9, align 8
  %29 = sub i64 %28, 64
  %30 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %31 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %33 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %36 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RP_OFFSET, align 8
  %39 = sub i64 %37, %38
  %40 = inttoptr i64 %39 to i64*
  %41 = call i64 @get_user(i64 %34, i64* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %63

44:                                               ; preds = %27
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %47 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %49 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %44
  %52 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %53 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %54, ptrtoint ([0 x i8]* @_stext to i64)
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %58 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ugt i64 %59, ptrtoint ([0 x i8]* @_etext to i64)
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ true, %51 ], [ %60, %56 ]
  br i1 %62, label %27, label %63

63:                                               ; preds = %61, %43
  %64 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %65 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %67 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %70 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %73 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %71, i64 %74)
  br label %264

76:                                               ; preds = %1
  %77 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %78 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %81 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %84 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %87 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %90 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %93 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i64 %79, i32 %82, i32 %85, i32 %88, i64 %91, i32 %94)
  %96 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %97 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %7, align 4
  %99 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %100 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %4, align 8
  br label %102

102:                                              ; preds = %199, %76
  %103 = load i64, i64* %6, align 8
  %104 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %105 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 3
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %103, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110, %102
  %114 = load i64, i64* %4, align 8
  %115 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %116 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %114, %117
  br label %119

119:                                              ; preds = %113, %110
  %120 = phi i1 [ false, %110 ], [ %118, %113 ]
  br i1 %120, label %121, label %202

121:                                              ; preds = %119
  %122 = load i64, i64* %4, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, -16384
  %127 = icmp eq i32 %126, 937295872
  br i1 %127, label %132, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %5, align 4
  %130 = and i32 %129, -2097152
  %131 = icmp eq i32 %130, 1874853888
  br i1 %131, label %132, label %152

132:                                              ; preds = %128, %121
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 -8192, i32 0
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, 16383
  %140 = lshr i32 %139, 1
  %141 = or i32 %137, %140
  %142 = zext i32 %141 to i64
  %143 = load i64, i64* %6, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %6, align 8
  %145 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %146 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = load i64, i64* %4, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %147, i32 %148, i64 %149, i64 %150)
  br label %198

152:                                              ; preds = %128
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, -2097144
  %155 = icmp eq i32 %154, 1941962760
  br i1 %155, label %156, label %177

156:                                              ; preds = %152
  %157 = load i32, i32* %5, align 4
  %158 = and i32 %157, 1
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 -8192, i32 0
  %162 = load i32, i32* %5, align 4
  %163 = lshr i32 %162, 4
  %164 = and i32 %163, 1023
  %165 = shl i32 %164, 3
  %166 = or i32 %161, %165
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* %6, align 8
  %169 = add nsw i64 %168, %167
  store i64 %169, i64* %6, align 8
  %170 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %171 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = load i64, i64* %4, align 8
  %175 = load i64, i64* %6, align 8
  %176 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %172, i32 %173, i64 %174, i64 %175)
  br label %197

177:                                              ; preds = %152
  %178 = load i32, i32* %5, align 4
  %179 = icmp eq i32 %178, 1807892441
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  store i32 20, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %181 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %182 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %4, align 8
  %185 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %183, i64 %184)
  br label %196

186:                                              ; preds = %177
  %187 = load i32, i32* %5, align 4
  %188 = icmp eq i32 %187, 264377025
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  store i32 16, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %190 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %191 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %4, align 8
  %194 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %192, i64 %193)
  br label %195

195:                                              ; preds = %189, %186
  br label %196

196:                                              ; preds = %195, %180
  br label %197

197:                                              ; preds = %196, %156
  br label %198

198:                                              ; preds = %197, %132
  br label %199

199:                                              ; preds = %198
  %200 = load i64, i64* %4, align 8
  %201 = add i64 %200, 4
  store i64 %201, i64* %4, align 8
  br label %102

202:                                              ; preds = %119
  %203 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %204 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %205 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %6, align 8
  %208 = call i32 @unwind_special(%struct.unwind_frame_info* %203, i64 %206, i64 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %252, label %210

210:                                              ; preds = %202
  %211 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %212 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* %6, align 8
  %216 = sub nsw i64 %214, %215
  %217 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %218 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  %219 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %220 = getelementptr inbounds %struct.unwind_table_entry, %struct.unwind_table_entry* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %210
  %224 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %225 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %228 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %227, i32 0, i32 4
  store i64 %226, i64* %228, align 8
  br label %244

229:                                              ; preds = %210
  %230 = load i32, i32* %8, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %234 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = sub i64 %235, %237
  %239 = inttoptr i64 %238 to i64*
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %242 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %241, i32 0, i32 4
  store i64 %240, i64* %242, align 8
  br label %243

243:                                              ; preds = %232, %229
  br label %244

244:                                              ; preds = %243, %223
  %245 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %246 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %249 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %248, i32 0, i32 3
  store i64 %247, i64* %249, align 8
  %250 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %251 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %250, i32 0, i32 4
  store i64 0, i64* %251, align 8
  br label %252

252:                                              ; preds = %244, %202
  %253 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %254 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %257 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.unwind_frame_info*, %struct.unwind_frame_info** %2, align 8
  %260 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* %4, align 8
  %263 = call i32 (i8*, i64, ...) @dbg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i64 %255, i64 %258, i64 %261, i64 %262)
  br label %264

264:                                              ; preds = %252, %63
  ret void
}

declare dso_local %struct.unwind_table_entry* @find_unwind_entry(i64) #1

declare dso_local i32 @dbg(i8*, i64, ...) #1

declare dso_local i64 @get_user(i64, i64*) #1

declare dso_local i32 @unwind_special(%struct.unwind_frame_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
