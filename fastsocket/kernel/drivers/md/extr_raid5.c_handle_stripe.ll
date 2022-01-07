; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_stripe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i64, i64, i64, i64, %struct.r5dev*, i32, i64, i64, i32, i32, %struct.r5conf* }
%struct.r5dev = type { i64, i64 }
%struct.r5conf = type { i64, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32 }
%struct.stripe_head_state = type { i32, i64, i64*, i32, i32, i32, i32, i32, i64, i64, %struct.md_rdev*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@STRIPE_SYNC_REQUESTED = common dso_local global i32 0, align 4
@STRIPE_DISCARD = common dso_local global i32 0, align 4
@STRIPE_SYNCING = common dso_local global i32 0, align 4
@STRIPE_INSYNC = common dso_local global i32 0, align 4
@STRIPE_REPLACED = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"handling stripe %llu, state=%#lx cnt=%d, pd_idx=%d, qd_idx=%d\0A, check:%d, reconstruct:%d\0A\00", align 1
@STRIPE_BIOFILL_RUN = common dso_local global i32 0, align 4
@STRIPE_OP_BIOFILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"locked=%d uptodate=%d to_read=%d to_write=%d failed=%d failed_num=%d,%d\0A\00", align 1
@reconstruct_state_prexor_drain_result = common dso_local global i64 0, align 8
@reconstruct_state_drain_result = common dso_local global i64 0, align 8
@reconstruct_state_idle = common dso_local global i8* null, align 8
@R5_UPTODATE = common dso_local global i32 0, align 4
@R5_Discard = common dso_local global i32 0, align 4
@R5_LOCKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Writing block %d\0A\00", align 1
@R5_Wantwrite = common dso_local global i32 0, align 4
@R5_Insync = common dso_local global i32 0, align 4
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4
@STRIPE_COMPUTE_RUN = common dso_local global i32 0, align 4
@R5_NeedReplace = common dso_local global i32 0, align 4
@R5_WantReplace = common dso_local global i32 0, align 4
@STRIPE_SECTORS = common dso_local global i32 0, align 4
@R5_Overlap = common dso_local global i32 0, align 4
@R5_ReadError = common dso_local global i32 0, align 4
@R5_ReWrite = common dso_local global i32 0, align 4
@R5_Wantread = common dso_local global i32 0, align 4
@reconstruct_state_result = common dso_local global i64 0, align 8
@STRIPE_EXPAND_SOURCE = common dso_local global i32 0, align 4
@STRIPE_EXPANDING = common dso_local global i32 0, align 4
@STRIPE_EXPAND_READY = common dso_local global i32 0, align 4
@R5_WriteError = common dso_local global i32 0, align 4
@R5_MadeGood = common dso_local global i32 0, align 4
@R5_MadeGoodRepl = common dso_local global i32 0, align 4
@IO_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*)* @handle_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_stripe(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.stripe_head_state, align 8
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r5dev*, align 8
  %9 = alloca %struct.r5dev*, align 8
  %10 = alloca %struct.r5dev*, align 8
  %11 = alloca %struct.r5dev*, align 8
  %12 = alloca %struct.stripe_head*, align 8
  %13 = alloca %struct.md_rdev*, align 8
  %14 = alloca %struct.r5dev*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %15 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %16 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %15, i32 0, i32 11
  %17 = load %struct.r5conf*, %struct.r5conf** %16, align 8
  store %struct.r5conf* %17, %struct.r5conf** %4, align 8
  %18 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %19 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %22 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %21, i32 0, i32 6
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i32, i32* @STRIPE_SYNC_REQUESTED, align 4
  %25 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %26 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %25, i32 0, i32 7
  %27 = call i64 @test_bit(i32 %24, i64* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %1
  %30 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %31 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %30, i32 0, i32 10
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load i32, i32* @STRIPE_DISCARD, align 4
  %34 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %35 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %34, i32 0, i32 7
  %36 = call i64 @test_bit(i32 %33, i64* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @STRIPE_SYNC_REQUESTED, align 4
  %40 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %41 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %40, i32 0, i32 7
  %42 = call i64 @test_and_clear_bit(i32 %39, i64* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load i32, i32* @STRIPE_SYNCING, align 4
  %46 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %47 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %46, i32 0, i32 7
  %48 = call i32 @set_bit(i32 %45, i64* %47)
  %49 = load i32, i32* @STRIPE_INSYNC, align 4
  %50 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %51 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %50, i32 0, i32 7
  %52 = call i32 @clear_bit(i32 %49, i64* %51)
  %53 = load i32, i32* @STRIPE_REPLACED, align 4
  %54 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %55 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %54, i32 0, i32 7
  %56 = call i32 @clear_bit(i32 %53, i64* %55)
  br label %57

57:                                               ; preds = %44, %38, %29
  %58 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %59 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %58, i32 0, i32 10
  %60 = call i32 @spin_unlock(i32* %59)
  br label %61

61:                                               ; preds = %57, %1
  %62 = load i32, i32* @STRIPE_HANDLE, align 4
  %63 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %64 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %63, i32 0, i32 7
  %65 = call i32 @clear_bit(i32 %62, i64* %64)
  %66 = load i32, i32* @STRIPE_DELAYED, align 4
  %67 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %68 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %67, i32 0, i32 7
  %69 = call i32 @clear_bit(i32 %66, i64* %68)
  %70 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %71 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %75 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %78 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %77, i32 0, i32 9
  %79 = call i64 @atomic_read(i32* %78)
  %80 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %81 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %84 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %87 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %90 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %73, i64 %76, i64 %79, i64 %82, i64 %85, i64 %88, i64 %91)
  %93 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %94 = call i32 @analyse_stripe(%struct.stripe_head* %93, %struct.stripe_head_state* %3)
  %95 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 9
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %61
  %99 = load i32, i32* @STRIPE_HANDLE, align 4
  %100 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %101 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %100, i32 0, i32 7
  %102 = call i32 @set_bit(i32 %99, i64* %101)
  br label %1040

103:                                              ; preds = %61
  %104 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  %105 = load %struct.md_rdev*, %struct.md_rdev** %104, align 8
  %106 = call i64 @unlikely(%struct.md_rdev* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %145

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %132, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 12
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %132, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 13
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 16
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 19
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128, %124, %120, %116, %112, %108
  %133 = load i32, i32* @STRIPE_HANDLE, align 4
  %134 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %135 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %134, i32 0, i32 7
  %136 = call i32 @set_bit(i32 %133, i64* %135)
  br label %1040

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  %139 = load %struct.md_rdev*, %struct.md_rdev** %138, align 8
  %140 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %141 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %140, i32 0, i32 3
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = call i32 @rdev_dec_pending(%struct.md_rdev* %139, %struct.TYPE_7__* %142)
  %144 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  store %struct.md_rdev* null, %struct.md_rdev** %144, align 8
  br label %145

145:                                              ; preds = %137, %103
  %146 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 20
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %145
  %150 = load i32, i32* @STRIPE_BIOFILL_RUN, align 4
  %151 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %152 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %151, i32 0, i32 7
  %153 = call i64 @test_bit(i32 %150, i64* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* @STRIPE_OP_BIOFILL, align 4
  %157 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 8
  %158 = call i32 @set_bit(i32 %156, i64* %157)
  %159 = load i32, i32* @STRIPE_BIOFILL_RUN, align 4
  %160 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %161 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %160, i32 0, i32 7
  %162 = call i32 @set_bit(i32 %159, i64* %161)
  br label %163

163:                                              ; preds = %155, %149, %145
  %164 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 18
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 16
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %179 = load i64*, i64** %178, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %165, i32 %167, i64 %169, i64 %171, i64 %173, i64 %177, i64 %181)
  %183 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %186 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %184, %187
  br i1 %188, label %189, label %221

189:                                              ; preds = %163
  %190 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %191 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %190, i32 0, i32 8
  store i64 0, i64* %191, align 8
  %192 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %193 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %192, i32 0, i32 3
  store i64 0, i64* %193, align 8
  %194 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 18
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 16
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %195, %197
  %199 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 19
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %198, %200
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %189
  %204 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %205 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %206 = load i32, i32* %7, align 4
  %207 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 7
  %208 = call i32 @handle_failed_stripe(%struct.r5conf* %204, %struct.stripe_head* %205, %struct.stripe_head_state* %3, i32 %206, i32* %207)
  br label %209

209:                                              ; preds = %203, %189
  %210 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %211, %213
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %209
  %217 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %218 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %219 = call i32 @handle_failed_sync(%struct.r5conf* %217, %struct.stripe_head* %218, %struct.stripe_head_state* %3)
  br label %220

220:                                              ; preds = %216, %209
  br label %221

221:                                              ; preds = %220, %163
  store i32 0, i32* %6, align 4
  %222 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %223 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @reconstruct_state_prexor_drain_result, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  store i32 1, i32* %6, align 4
  br label %228

228:                                              ; preds = %227, %221
  %229 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %230 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @reconstruct_state_drain_result, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %240, label %234

234:                                              ; preds = %228
  %235 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %236 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @reconstruct_state_prexor_drain_result, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %392

240:                                              ; preds = %234, %228
  %241 = load i8*, i8** @reconstruct_state_idle, align 8
  %242 = ptrtoint i8* %241 to i64
  %243 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %244 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %243, i32 0, i32 3
  store i64 %242, i64* %244, align 8
  %245 = load i32, i32* @R5_UPTODATE, align 4
  %246 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %247 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %246, i32 0, i32 5
  %248 = load %struct.r5dev*, %struct.r5dev** %247, align 8
  %249 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %250 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %248, i64 %251
  %253 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %252, i32 0, i32 0
  %254 = call i64 @test_bit(i32 %245, i64* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %269, label %256

256:                                              ; preds = %240
  %257 = load i32, i32* @R5_Discard, align 4
  %258 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %259 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %258, i32 0, i32 5
  %260 = load %struct.r5dev*, %struct.r5dev** %259, align 8
  %261 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %262 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %260, i64 %263
  %265 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %264, i32 0, i32 0
  %266 = call i64 @test_bit(i32 %257, i64* %265)
  %267 = icmp ne i64 %266, 0
  %268 = xor i1 %267, true
  br label %269

269:                                              ; preds = %256, %240
  %270 = phi i1 [ false, %240 ], [ %268, %256 ]
  %271 = zext i1 %270 to i32
  %272 = call i32 @BUG_ON(i32 %271)
  %273 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %274 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = icmp sge i64 %275, 0
  br i1 %276, label %277, label %302

277:                                              ; preds = %269
  %278 = load i32, i32* @R5_UPTODATE, align 4
  %279 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %280 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %279, i32 0, i32 5
  %281 = load %struct.r5dev*, %struct.r5dev** %280, align 8
  %282 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %283 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %281, i64 %284
  %286 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %285, i32 0, i32 0
  %287 = call i64 @test_bit(i32 %278, i64* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %302, label %289

289:                                              ; preds = %277
  %290 = load i32, i32* @R5_Discard, align 4
  %291 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %292 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %291, i32 0, i32 5
  %293 = load %struct.r5dev*, %struct.r5dev** %292, align 8
  %294 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %295 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %293, i64 %296
  %298 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %297, i32 0, i32 0
  %299 = call i64 @test_bit(i32 %290, i64* %298)
  %300 = icmp ne i64 %299, 0
  %301 = xor i1 %300, true
  br label %302

302:                                              ; preds = %289, %277, %269
  %303 = phi i1 [ false, %277 ], [ false, %269 ], [ %301, %289 ]
  %304 = zext i1 %303 to i32
  %305 = call i32 @BUG_ON(i32 %304)
  %306 = load i32, i32* %7, align 4
  store i32 %306, i32* %5, align 4
  br label %307

307:                                              ; preds = %382, %351, %302
  %308 = load i32, i32* %5, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %5, align 4
  %310 = icmp ne i32 %308, 0
  br i1 %310, label %311, label %383

311:                                              ; preds = %307
  %312 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %313 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %312, i32 0, i32 5
  %314 = load %struct.r5dev*, %struct.r5dev** %313, align 8
  %315 = load i32, i32* %5, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %314, i64 %316
  store %struct.r5dev* %317, %struct.r5dev** %10, align 8
  %318 = load i32, i32* @R5_LOCKED, align 4
  %319 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %320 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %319, i32 0, i32 0
  %321 = call i64 @test_bit(i32 %318, i64* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %382

323:                                              ; preds = %311
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %327 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = icmp eq i64 %325, %328
  br i1 %329, label %342, label %330

330:                                              ; preds = %323
  %331 = load i32, i32* %5, align 4
  %332 = sext i32 %331 to i64
  %333 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %334 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %333, i32 0, i32 2
  %335 = load i64, i64* %334, align 8
  %336 = icmp eq i64 %332, %335
  br i1 %336, label %342, label %337

337:                                              ; preds = %330
  %338 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %339 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %382

342:                                              ; preds = %337, %330, %323
  %343 = load i32, i32* %5, align 4
  %344 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %343)
  %345 = load i32, i32* @R5_Wantwrite, align 4
  %346 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %347 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %346, i32 0, i32 0
  %348 = call i32 @set_bit(i32 %345, i64* %347)
  %349 = load i32, i32* %6, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %342
  br label %307

352:                                              ; preds = %342
  %353 = load i32, i32* @R5_Insync, align 4
  %354 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %355 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %354, i32 0, i32 0
  %356 = call i64 @test_bit(i32 %353, i64* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %376

358:                                              ; preds = %352
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %362 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = icmp eq i64 %360, %363
  br i1 %364, label %372, label %365

365:                                              ; preds = %358
  %366 = load i32, i32* %5, align 4
  %367 = sext i32 %366 to i64
  %368 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %369 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = icmp eq i64 %367, %370
  br i1 %371, label %372, label %381

372:                                              ; preds = %365, %358
  %373 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %381

376:                                              ; preds = %372, %352
  %377 = load i32, i32* @STRIPE_INSYNC, align 4
  %378 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %379 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %378, i32 0, i32 7
  %380 = call i32 @set_bit(i32 %377, i64* %379)
  br label %381

381:                                              ; preds = %376, %372, %365
  br label %382

382:                                              ; preds = %381, %337, %311
  br label %307

383:                                              ; preds = %307
  %384 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %385 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %386 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %385, i32 0, i32 7
  %387 = call i64 @test_and_clear_bit(i32 %384, i64* %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %383
  %390 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 3
  store i32 1, i32* %390, align 8
  br label %391

391:                                              ; preds = %389, %383
  br label %392

392:                                              ; preds = %391, %234
  %393 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %394 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %393, i32 0, i32 5
  %395 = load %struct.r5dev*, %struct.r5dev** %394, align 8
  %396 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %397 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %395, i64 %398
  store %struct.r5dev* %399, %struct.r5dev** %8, align 8
  %400 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = icmp sge i64 %401, 1
  br i1 %402, label %403, label %412

403:                                              ; preds = %392
  %404 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %405 = load i64*, i64** %404, align 8
  %406 = getelementptr inbounds i64, i64* %405, i64 0
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %409 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = icmp eq i64 %407, %410
  br i1 %411, label %427, label %412

412:                                              ; preds = %403, %392
  %413 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = icmp sge i64 %414, 2
  br i1 %415, label %416, label %425

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %418 = load i64*, i64** %417, align 8
  %419 = getelementptr inbounds i64, i64* %418, i64 1
  %420 = load i64, i64* %419, align 8
  %421 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %422 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = icmp eq i64 %420, %423
  br label %425

425:                                              ; preds = %416, %412
  %426 = phi i1 [ false, %412 ], [ %424, %416 ]
  br label %427

427:                                              ; preds = %425, %403
  %428 = phi i1 [ true, %403 ], [ %426, %425 ]
  %429 = zext i1 %428 to i32
  %430 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 4
  store i32 %429, i32* %430, align 4
  %431 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %432 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %431, i32 0, i32 5
  %433 = load %struct.r5dev*, %struct.r5dev** %432, align 8
  %434 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %435 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %434, i32 0, i32 2
  %436 = load i64, i64* %435, align 8
  %437 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %433, i64 %436
  store %struct.r5dev* %437, %struct.r5dev** %9, align 8
  %438 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = icmp sge i64 %439, 1
  br i1 %440, label %441, label %450

441:                                              ; preds = %427
  %442 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %443 = load i64*, i64** %442, align 8
  %444 = getelementptr inbounds i64, i64* %443, i64 0
  %445 = load i64, i64* %444, align 8
  %446 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %447 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %446, i32 0, i32 2
  %448 = load i64, i64* %447, align 8
  %449 = icmp eq i64 %445, %448
  br i1 %449, label %468, label %450

450:                                              ; preds = %441, %427
  %451 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = icmp sge i64 %452, 2
  br i1 %453, label %454, label %463

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %456 = load i64*, i64** %455, align 8
  %457 = getelementptr inbounds i64, i64* %456, i64 1
  %458 = load i64, i64* %457, align 8
  %459 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %460 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %459, i32 0, i32 2
  %461 = load i64, i64* %460, align 8
  %462 = icmp eq i64 %458, %461
  br i1 %462, label %468, label %463

463:                                              ; preds = %454, %450
  %464 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %465 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = icmp slt i32 %466, 6
  br label %468

468:                                              ; preds = %463, %454, %441
  %469 = phi i1 [ true, %454 ], [ true, %441 ], [ %467, %463 ]
  %470 = zext i1 %469 to i32
  %471 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 5
  store i32 %470, i32* %471, align 8
  %472 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 19
  %473 = load i64, i64* %472, align 8
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %537

475:                                              ; preds = %468
  %476 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 4
  %477 = load i32, i32* %476, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %503, label %479

479:                                              ; preds = %475
  %480 = load i32, i32* @R5_Insync, align 4
  %481 = load %struct.r5dev*, %struct.r5dev** %8, align 8
  %482 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %481, i32 0, i32 0
  %483 = call i64 @test_bit(i32 %480, i64* %482)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %537

485:                                              ; preds = %479
  %486 = load i32, i32* @R5_LOCKED, align 4
  %487 = load %struct.r5dev*, %struct.r5dev** %8, align 8
  %488 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %487, i32 0, i32 0
  %489 = call i64 @test_bit(i32 %486, i64* %488)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %537, label %491

491:                                              ; preds = %485
  %492 = load i32, i32* @R5_UPTODATE, align 4
  %493 = load %struct.r5dev*, %struct.r5dev** %8, align 8
  %494 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %493, i32 0, i32 0
  %495 = call i64 @test_bit(i32 %492, i64* %494)
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %503, label %497

497:                                              ; preds = %491
  %498 = load i32, i32* @R5_Discard, align 4
  %499 = load %struct.r5dev*, %struct.r5dev** %8, align 8
  %500 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %499, i32 0, i32 0
  %501 = call i64 @test_bit(i32 %498, i64* %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %537

503:                                              ; preds = %497, %491, %475
  %504 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 5
  %505 = load i32, i32* %504, align 8
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %531, label %507

507:                                              ; preds = %503
  %508 = load i32, i32* @R5_Insync, align 4
  %509 = load %struct.r5dev*, %struct.r5dev** %9, align 8
  %510 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %509, i32 0, i32 0
  %511 = call i64 @test_bit(i32 %508, i64* %510)
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %537

513:                                              ; preds = %507
  %514 = load i32, i32* @R5_LOCKED, align 4
  %515 = load %struct.r5dev*, %struct.r5dev** %9, align 8
  %516 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %515, i32 0, i32 0
  %517 = call i64 @test_bit(i32 %514, i64* %516)
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %537, label %519

519:                                              ; preds = %513
  %520 = load i32, i32* @R5_UPTODATE, align 4
  %521 = load %struct.r5dev*, %struct.r5dev** %9, align 8
  %522 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %521, i32 0, i32 0
  %523 = call i64 @test_bit(i32 %520, i64* %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %531, label %525

525:                                              ; preds = %519
  %526 = load i32, i32* @R5_Discard, align 4
  %527 = load %struct.r5dev*, %struct.r5dev** %9, align 8
  %528 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %527, i32 0, i32 0
  %529 = call i64 @test_bit(i32 %526, i64* %528)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %537

531:                                              ; preds = %525, %519, %503
  %532 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %533 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %534 = load i32, i32* %7, align 4
  %535 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 7
  %536 = call i32 @handle_stripe_clean_event(%struct.r5conf* %532, %struct.stripe_head* %533, i32 %534, i32* %535)
  br label %537

537:                                              ; preds = %531, %525, %513, %507, %497, %485, %479, %468
  %538 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 18
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %578, label %541

541:                                              ; preds = %537
  %542 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 17
  %543 = load i64, i64* %542, align 8
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %578, label %545

545:                                              ; preds = %541
  %546 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %547 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 8
  %549 = icmp eq i32 %548, 6
  br i1 %549, label %550, label %558

550:                                              ; preds = %545
  %551 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 16
  %552 = load i64, i64* %551, align 8
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %558

554:                                              ; preds = %550
  %555 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %556 = load i64, i64* %555, align 8
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %578, label %558

558:                                              ; preds = %554, %550, %545
  %559 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %560 = load i64, i64* %559, align 8
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %570

562:                                              ; preds = %558
  %563 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 6
  %566 = load i32, i32* %565, align 4
  %567 = add nsw i32 %564, %566
  %568 = load i32, i32* %7, align 4
  %569 = icmp slt i32 %567, %568
  br i1 %569, label %578, label %570

570:                                              ; preds = %562, %558
  %571 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %572 = load i64, i64* %571, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %578, label %574

574:                                              ; preds = %570
  %575 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 12
  %576 = load i64, i64* %575, align 8
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %582

578:                                              ; preds = %574, %570, %562, %554, %541, %537
  %579 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %580 = load i32, i32* %7, align 4
  %581 = call i32 @handle_stripe_fill(%struct.stripe_head* %579, %struct.stripe_head_state* %3, i32 %580)
  br label %582

582:                                              ; preds = %578, %574
  %583 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 16
  %584 = load i64, i64* %583, align 8
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %601

586:                                              ; preds = %582
  %587 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %588 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %587, i32 0, i32 3
  %589 = load i64, i64* %588, align 8
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %601, label %591

591:                                              ; preds = %586
  %592 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %593 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %592, i32 0, i32 8
  %594 = load i64, i64* %593, align 8
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %601, label %596

596:                                              ; preds = %591
  %597 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %598 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %599 = load i32, i32* %7, align 4
  %600 = call i32 @handle_stripe_dirtying(%struct.r5conf* %597, %struct.stripe_head* %598, %struct.stripe_head_state* %3, i32 %599)
  br label %601

601:                                              ; preds = %596, %591, %586, %582
  %602 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %603 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %602, i32 0, i32 8
  %604 = load i64, i64* %603, align 8
  %605 = icmp ne i64 %604, 0
  br i1 %605, label %626, label %606

606:                                              ; preds = %601
  %607 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %608 = load i64, i64* %607, align 8
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %642

610:                                              ; preds = %606
  %611 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %612 = load i32, i32* %611, align 8
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %642

614:                                              ; preds = %610
  %615 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %616 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %617 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %616, i32 0, i32 7
  %618 = call i64 @test_bit(i32 %615, i64* %617)
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %642, label %620

620:                                              ; preds = %614
  %621 = load i32, i32* @STRIPE_INSYNC, align 4
  %622 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %623 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %622, i32 0, i32 7
  %624 = call i64 @test_bit(i32 %621, i64* %623)
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %642, label %626

626:                                              ; preds = %620, %601
  %627 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %628 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 8
  %630 = icmp eq i32 %629, 6
  br i1 %630, label %631, label %636

631:                                              ; preds = %626
  %632 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %633 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %634 = load i32, i32* %7, align 4
  %635 = call i32 @handle_parity_checks6(%struct.r5conf* %632, %struct.stripe_head* %633, %struct.stripe_head_state* %3, i32 %634)
  br label %641

636:                                              ; preds = %626
  %637 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %638 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %639 = load i32, i32* %7, align 4
  %640 = call i32 @handle_parity_checks5(%struct.r5conf* %637, %struct.stripe_head* %638, %struct.stripe_head_state* %3, i32 %639)
  br label %641

641:                                              ; preds = %636, %631
  br label %642

642:                                              ; preds = %641, %620, %614, %610, %606
  %643 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %644 = load i64, i64* %643, align 8
  %645 = icmp ne i64 %644, 0
  br i1 %645, label %650, label %646

646:                                              ; preds = %642
  %647 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %648 = load i64, i64* %647, align 8
  %649 = icmp ne i64 %648, 0
  br i1 %649, label %650, label %737

650:                                              ; preds = %646, %642
  %651 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %652 = load i32, i32* %651, align 8
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %737

654:                                              ; preds = %650
  %655 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %656 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %657 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %656, i32 0, i32 7
  %658 = call i64 @test_bit(i32 %655, i64* %657)
  %659 = icmp ne i64 %658, 0
  br i1 %659, label %737, label %660

660:                                              ; preds = %654
  %661 = load i32, i32* @STRIPE_REPLACED, align 4
  %662 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %663 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %662, i32 0, i32 7
  %664 = call i64 @test_bit(i32 %661, i64* %663)
  %665 = icmp ne i64 %664, 0
  br i1 %665, label %737, label %666

666:                                              ; preds = %660
  store i32 0, i32* %5, align 4
  br label %667

667:                                              ; preds = %720, %666
  %668 = load i32, i32* %5, align 4
  %669 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %670 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %669, i32 0, i32 2
  %671 = load i32, i32* %670, align 4
  %672 = icmp slt i32 %668, %671
  br i1 %672, label %673, label %723

673:                                              ; preds = %667
  %674 = load i32, i32* @R5_NeedReplace, align 4
  %675 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %676 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %675, i32 0, i32 5
  %677 = load %struct.r5dev*, %struct.r5dev** %676, align 8
  %678 = load i32, i32* %5, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %677, i64 %679
  %681 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %680, i32 0, i32 0
  %682 = call i64 @test_bit(i32 %674, i64* %681)
  %683 = icmp ne i64 %682, 0
  br i1 %683, label %684, label %719

684:                                              ; preds = %673
  %685 = load i32, i32* @R5_UPTODATE, align 4
  %686 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %687 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %686, i32 0, i32 5
  %688 = load %struct.r5dev*, %struct.r5dev** %687, align 8
  %689 = load i32, i32* %5, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %688, i64 %690
  %692 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %691, i32 0, i32 0
  %693 = call i64 @test_bit(i32 %685, i64* %692)
  %694 = icmp ne i64 %693, 0
  %695 = xor i1 %694, true
  %696 = zext i1 %695 to i32
  %697 = call i32 @WARN_ON(i32 %696)
  %698 = load i32, i32* @R5_WantReplace, align 4
  %699 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %700 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %699, i32 0, i32 5
  %701 = load %struct.r5dev*, %struct.r5dev** %700, align 8
  %702 = load i32, i32* %5, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %701, i64 %703
  %705 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %704, i32 0, i32 0
  %706 = call i32 @set_bit(i32 %698, i64* %705)
  %707 = load i32, i32* @R5_LOCKED, align 4
  %708 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %709 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %708, i32 0, i32 5
  %710 = load %struct.r5dev*, %struct.r5dev** %709, align 8
  %711 = load i32, i32* %5, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %710, i64 %712
  %714 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %713, i32 0, i32 0
  %715 = call i32 @set_bit(i32 %707, i64* %714)
  %716 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %717 = load i32, i32* %716, align 8
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* %716, align 8
  br label %719

719:                                              ; preds = %684, %673
  br label %720

720:                                              ; preds = %719
  %721 = load i32, i32* %5, align 4
  %722 = add nsw i32 %721, 1
  store i32 %722, i32* %5, align 4
  br label %667

723:                                              ; preds = %667
  %724 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %725 = load i64, i64* %724, align 8
  %726 = icmp ne i64 %725, 0
  br i1 %726, label %727, label %732

727:                                              ; preds = %723
  %728 = load i32, i32* @STRIPE_INSYNC, align 4
  %729 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %730 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %729, i32 0, i32 7
  %731 = call i32 @set_bit(i32 %728, i64* %730)
  br label %732

732:                                              ; preds = %727, %723
  %733 = load i32, i32* @STRIPE_REPLACED, align 4
  %734 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %735 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %734, i32 0, i32 7
  %736 = call i32 @set_bit(i32 %733, i64* %735)
  br label %737

737:                                              ; preds = %732, %660, %654, %650, %646
  %738 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 15
  %739 = load i64, i64* %738, align 8
  %740 = icmp ne i64 %739, 0
  br i1 %740, label %745, label %741

741:                                              ; preds = %737
  %742 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 14
  %743 = load i64, i64* %742, align 8
  %744 = icmp ne i64 %743, 0
  br i1 %744, label %745, label %787

745:                                              ; preds = %741, %737
  %746 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %747 = load i32, i32* %746, align 8
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %749, label %787

749:                                              ; preds = %745
  %750 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %751 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %752 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %751, i32 0, i32 7
  %753 = call i64 @test_bit(i32 %750, i64* %752)
  %754 = icmp ne i64 %753, 0
  br i1 %754, label %787, label %755

755:                                              ; preds = %749
  %756 = load i32, i32* @STRIPE_INSYNC, align 4
  %757 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %758 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %757, i32 0, i32 7
  %759 = call i64 @test_bit(i32 %756, i64* %758)
  %760 = icmp ne i64 %759, 0
  br i1 %760, label %761, label %787

761:                                              ; preds = %755
  %762 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %763 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %762, i32 0, i32 3
  %764 = load %struct.TYPE_7__*, %struct.TYPE_7__** %763, align 8
  %765 = load i32, i32* @STRIPE_SECTORS, align 4
  %766 = call i32 @md_done_sync(%struct.TYPE_7__* %764, i32 %765, i32 1)
  %767 = load i32, i32* @STRIPE_SYNCING, align 4
  %768 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %769 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %768, i32 0, i32 7
  %770 = call i32 @clear_bit(i32 %767, i64* %769)
  %771 = load i32, i32* @R5_Overlap, align 4
  %772 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %773 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %772, i32 0, i32 5
  %774 = load %struct.r5dev*, %struct.r5dev** %773, align 8
  %775 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %776 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %775, i32 0, i32 1
  %777 = load i64, i64* %776, align 8
  %778 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %774, i64 %777
  %779 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %778, i32 0, i32 0
  %780 = call i64 @test_and_clear_bit(i32 %771, i64* %779)
  %781 = icmp ne i64 %780, 0
  br i1 %781, label %782, label %786

782:                                              ; preds = %761
  %783 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %784 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %783, i32 0, i32 6
  %785 = call i32 @wake_up(i32* %784)
  br label %786

786:                                              ; preds = %782, %761
  br label %787

787:                                              ; preds = %786, %755, %749, %745, %741
  %788 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %789 = load i64, i64* %788, align 8
  %790 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %791 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %790, i32 0, i32 0
  %792 = load i64, i64* %791, align 8
  %793 = icmp sle i64 %789, %792
  br i1 %793, label %794, label %876

794:                                              ; preds = %787
  %795 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %796 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %795, i32 0, i32 3
  %797 = load %struct.TYPE_7__*, %struct.TYPE_7__** %796, align 8
  %798 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %797, i32 0, i32 2
  %799 = load i32, i32* %798, align 8
  %800 = icmp ne i32 %799, 0
  br i1 %800, label %876, label %801

801:                                              ; preds = %794
  store i32 0, i32* %5, align 4
  br label %802

802:                                              ; preds = %872, %801
  %803 = load i32, i32* %5, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 1
  %806 = load i64, i64* %805, align 8
  %807 = icmp slt i64 %804, %806
  br i1 %807, label %808, label %875

808:                                              ; preds = %802
  %809 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %810 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %809, i32 0, i32 5
  %811 = load %struct.r5dev*, %struct.r5dev** %810, align 8
  %812 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 2
  %813 = load i64*, i64** %812, align 8
  %814 = load i32, i32* %5, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds i64, i64* %813, i64 %815
  %817 = load i64, i64* %816, align 8
  %818 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %811, i64 %817
  store %struct.r5dev* %818, %struct.r5dev** %11, align 8
  %819 = load i32, i32* @R5_ReadError, align 4
  %820 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %821 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %820, i32 0, i32 0
  %822 = call i64 @test_bit(i32 %819, i64* %821)
  %823 = icmp ne i64 %822, 0
  br i1 %823, label %824, label %871

824:                                              ; preds = %808
  %825 = load i32, i32* @R5_LOCKED, align 4
  %826 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %827 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %826, i32 0, i32 0
  %828 = call i64 @test_bit(i32 %825, i64* %827)
  %829 = icmp ne i64 %828, 0
  br i1 %829, label %871, label %830

830:                                              ; preds = %824
  %831 = load i32, i32* @R5_UPTODATE, align 4
  %832 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %833 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %832, i32 0, i32 0
  %834 = call i64 @test_bit(i32 %831, i64* %833)
  %835 = icmp ne i64 %834, 0
  br i1 %835, label %836, label %871

836:                                              ; preds = %830
  %837 = load i32, i32* @R5_ReWrite, align 4
  %838 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %839 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %838, i32 0, i32 0
  %840 = call i64 @test_bit(i32 %837, i64* %839)
  %841 = icmp ne i64 %840, 0
  br i1 %841, label %858, label %842

842:                                              ; preds = %836
  %843 = load i32, i32* @R5_Wantwrite, align 4
  %844 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %845 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %844, i32 0, i32 0
  %846 = call i32 @set_bit(i32 %843, i64* %845)
  %847 = load i32, i32* @R5_ReWrite, align 4
  %848 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %849 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %848, i32 0, i32 0
  %850 = call i32 @set_bit(i32 %847, i64* %849)
  %851 = load i32, i32* @R5_LOCKED, align 4
  %852 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %853 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %852, i32 0, i32 0
  %854 = call i32 @set_bit(i32 %851, i64* %853)
  %855 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %856 = load i32, i32* %855, align 8
  %857 = add nsw i32 %856, 1
  store i32 %857, i32* %855, align 8
  br label %870

858:                                              ; preds = %836
  %859 = load i32, i32* @R5_Wantread, align 4
  %860 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %861 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %860, i32 0, i32 0
  %862 = call i32 @set_bit(i32 %859, i64* %861)
  %863 = load i32, i32* @R5_LOCKED, align 4
  %864 = load %struct.r5dev*, %struct.r5dev** %11, align 8
  %865 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %864, i32 0, i32 0
  %866 = call i32 @set_bit(i32 %863, i64* %865)
  %867 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %868 = load i32, i32* %867, align 8
  %869 = add nsw i32 %868, 1
  store i32 %869, i32* %867, align 8
  br label %870

870:                                              ; preds = %858, %842
  br label %871

871:                                              ; preds = %870, %830, %824, %808
  br label %872

872:                                              ; preds = %871
  %873 = load i32, i32* %5, align 4
  %874 = add nsw i32 %873, 1
  store i32 %874, i32* %5, align 4
  br label %802

875:                                              ; preds = %802
  br label %876

876:                                              ; preds = %875, %794, %787
  %877 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %878 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %877, i32 0, i32 3
  %879 = load i64, i64* %878, align 8
  %880 = load i64, i64* @reconstruct_state_result, align 8
  %881 = icmp eq i64 %879, %880
  br i1 %881, label %882, label %962

882:                                              ; preds = %876
  %883 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %884 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %885 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %884, i32 0, i32 4
  %886 = load i64, i64* %885, align 8
  %887 = call %struct.stripe_head* @get_active_stripe(%struct.r5conf* %883, i64 %886, i32 1, i32 1, i32 1)
  store %struct.stripe_head* %887, %struct.stripe_head** %12, align 8
  %888 = load %struct.stripe_head*, %struct.stripe_head** %12, align 8
  %889 = icmp ne %struct.stripe_head* %888, null
  br i1 %889, label %890, label %917

890:                                              ; preds = %882
  %891 = load i32, i32* @STRIPE_EXPAND_SOURCE, align 4
  %892 = load %struct.stripe_head*, %struct.stripe_head** %12, align 8
  %893 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %892, i32 0, i32 7
  %894 = call i64 @test_bit(i32 %891, i64* %893)
  %895 = icmp ne i64 %894, 0
  br i1 %895, label %896, label %917

896:                                              ; preds = %890
  %897 = load i32, i32* @STRIPE_DELAYED, align 4
  %898 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %899 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %898, i32 0, i32 7
  %900 = call i32 @set_bit(i32 %897, i64* %899)
  %901 = load i32, i32* @STRIPE_HANDLE, align 4
  %902 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %903 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %902, i32 0, i32 7
  %904 = call i32 @set_bit(i32 %901, i64* %903)
  %905 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %906 = load %struct.stripe_head*, %struct.stripe_head** %12, align 8
  %907 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %906, i32 0, i32 7
  %908 = call i32 @test_and_set_bit(i32 %905, i64* %907)
  %909 = icmp ne i32 %908, 0
  br i1 %909, label %914, label %910

910:                                              ; preds = %896
  %911 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %912 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %911, i32 0, i32 4
  %913 = call i32 @atomic_inc(i32* %912)
  br label %914

914:                                              ; preds = %910, %896
  %915 = load %struct.stripe_head*, %struct.stripe_head** %12, align 8
  %916 = call i32 @release_stripe(%struct.stripe_head* %915)
  br label %1040

917:                                              ; preds = %890, %882
  %918 = load %struct.stripe_head*, %struct.stripe_head** %12, align 8
  %919 = icmp ne %struct.stripe_head* %918, null
  br i1 %919, label %920, label %923

920:                                              ; preds = %917
  %921 = load %struct.stripe_head*, %struct.stripe_head** %12, align 8
  %922 = call i32 @release_stripe(%struct.stripe_head* %921)
  br label %923

923:                                              ; preds = %920, %917
  %924 = load i8*, i8** @reconstruct_state_idle, align 8
  %925 = ptrtoint i8* %924 to i64
  %926 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %927 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %926, i32 0, i32 3
  store i64 %925, i64* %927, align 8
  %928 = load i32, i32* @STRIPE_EXPANDING, align 4
  %929 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %930 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %929, i32 0, i32 7
  %931 = call i32 @clear_bit(i32 %928, i64* %930)
  %932 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %933 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %932, i32 0, i32 2
  %934 = load i32, i32* %933, align 4
  store i32 %934, i32* %5, align 4
  br label %935

935:                                              ; preds = %939, %923
  %936 = load i32, i32* %5, align 4
  %937 = add nsw i32 %936, -1
  store i32 %937, i32* %5, align 4
  %938 = icmp ne i32 %936, 0
  br i1 %938, label %939, label %961

939:                                              ; preds = %935
  %940 = load i32, i32* @R5_Wantwrite, align 4
  %941 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %942 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %941, i32 0, i32 5
  %943 = load %struct.r5dev*, %struct.r5dev** %942, align 8
  %944 = load i32, i32* %5, align 4
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %943, i64 %945
  %947 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %946, i32 0, i32 0
  %948 = call i32 @set_bit(i32 %940, i64* %947)
  %949 = load i32, i32* @R5_LOCKED, align 4
  %950 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %951 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %950, i32 0, i32 5
  %952 = load %struct.r5dev*, %struct.r5dev** %951, align 8
  %953 = load i32, i32* %5, align 4
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %952, i64 %954
  %956 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %955, i32 0, i32 0
  %957 = call i32 @set_bit(i32 %949, i64* %956)
  %958 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %959 = load i32, i32* %958, align 8
  %960 = add nsw i32 %959, 1
  store i32 %960, i32* %958, align 8
  br label %935

961:                                              ; preds = %935
  br label %962

962:                                              ; preds = %961, %876
  %963 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 13
  %964 = load i64, i64* %963, align 8
  %965 = icmp ne i64 %964, 0
  br i1 %965, label %966, label %991

966:                                              ; preds = %962
  %967 = load i32, i32* @STRIPE_EXPANDING, align 4
  %968 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %969 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %968, i32 0, i32 7
  %970 = call i64 @test_bit(i32 %967, i64* %969)
  %971 = icmp ne i64 %970, 0
  br i1 %971, label %972, label %991

972:                                              ; preds = %966
  %973 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %974 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %973, i32 0, i32 3
  %975 = load i64, i64* %974, align 8
  %976 = icmp ne i64 %975, 0
  br i1 %976, label %991, label %977

977:                                              ; preds = %972
  %978 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %979 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %978, i32 0, i32 2
  %980 = load i32, i32* %979, align 4
  %981 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %982 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %981, i32 0, i32 0
  store i32 %980, i32* %982, align 8
  %983 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %984 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %983, i32 0, i32 4
  %985 = load i64, i64* %984, align 8
  %986 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %987 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %988 = call i32 @stripe_set_idx(i64 %985, %struct.r5conf* %986, i32 0, %struct.stripe_head* %987)
  %989 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %990 = call i32 @schedule_reconstruction(%struct.stripe_head* %989, %struct.stripe_head_state* %3, i32 1, i32 1)
  br label %1021

991:                                              ; preds = %972, %966, %962
  %992 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 13
  %993 = load i64, i64* %992, align 8
  %994 = icmp ne i64 %993, 0
  br i1 %994, label %995, label %1020

995:                                              ; preds = %991
  %996 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %997 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %996, i32 0, i32 3
  %998 = load i64, i64* %997, align 8
  %999 = icmp ne i64 %998, 0
  br i1 %999, label %1020, label %1000

1000:                                             ; preds = %995
  %1001 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %1002 = load i32, i32* %1001, align 8
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1020

1004:                                             ; preds = %1000
  %1005 = load i32, i32* @STRIPE_EXPAND_READY, align 4
  %1006 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1007 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1006, i32 0, i32 7
  %1008 = call i32 @clear_bit(i32 %1005, i64* %1007)
  %1009 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1010 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1009, i32 0, i32 7
  %1011 = call i32 @atomic_dec(i32* %1010)
  %1012 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1013 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1012, i32 0, i32 6
  %1014 = call i32 @wake_up(i32* %1013)
  %1015 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1016 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1015, i32 0, i32 3
  %1017 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1016, align 8
  %1018 = load i32, i32* @STRIPE_SECTORS, align 4
  %1019 = call i32 @md_done_sync(%struct.TYPE_7__* %1017, i32 %1018, i32 1)
  br label %1020

1020:                                             ; preds = %1004, %1000, %995, %991
  br label %1021

1021:                                             ; preds = %1020, %977
  %1022 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 12
  %1023 = load i64, i64* %1022, align 8
  %1024 = icmp ne i64 %1023, 0
  br i1 %1024, label %1025, label %1039

1025:                                             ; preds = %1021
  %1026 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 11
  %1027 = load i32, i32* %1026, align 8
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1029, label %1039

1029:                                             ; preds = %1025
  %1030 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %1031 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1032 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1031, i32 0, i32 7
  %1033 = call i64 @test_bit(i32 %1030, i64* %1032)
  %1034 = icmp ne i64 %1033, 0
  br i1 %1034, label %1039, label %1035

1035:                                             ; preds = %1029
  %1036 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1037 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1038 = call i32 @handle_stripe_expansion(%struct.r5conf* %1036, %struct.stripe_head* %1037)
  br label %1039

1039:                                             ; preds = %1035, %1029, %1025, %1021
  br label %1040

1040:                                             ; preds = %1039, %914, %132, %98
  %1041 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1042 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1041, i32 0, i32 6
  %1043 = call i32 @spin_unlock(i32* %1042)
  %1044 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  %1045 = load %struct.md_rdev*, %struct.md_rdev** %1044, align 8
  %1046 = call i64 @unlikely(%struct.md_rdev* %1045)
  %1047 = icmp ne i64 %1046, 0
  br i1 %1047, label %1048, label %1070

1048:                                             ; preds = %1040
  %1049 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1050 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1049, i32 0, i32 3
  %1051 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1050, align 8
  %1052 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1051, i32 0, i32 1
  %1053 = load i64, i64* %1052, align 8
  %1054 = icmp ne i64 %1053, 0
  br i1 %1054, label %1055, label %1062

1055:                                             ; preds = %1048
  %1056 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  %1057 = load %struct.md_rdev*, %struct.md_rdev** %1056, align 8
  %1058 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1059 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1058, i32 0, i32 3
  %1060 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1059, align 8
  %1061 = call i32 @md_wait_for_blocked_rdev(%struct.md_rdev* %1057, %struct.TYPE_7__* %1060)
  br label %1069

1062:                                             ; preds = %1048
  %1063 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 10
  %1064 = load %struct.md_rdev*, %struct.md_rdev** %1063, align 8
  %1065 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1066 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1065, i32 0, i32 3
  %1067 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1066, align 8
  %1068 = call i32 @rdev_dec_pending(%struct.md_rdev* %1064, %struct.TYPE_7__* %1067)
  br label %1069

1069:                                             ; preds = %1062, %1055
  br label %1070

1070:                                             ; preds = %1069, %1040
  %1071 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 9
  %1072 = load i64, i64* %1071, align 8
  %1073 = icmp ne i64 %1072, 0
  br i1 %1073, label %1074, label %1186

1074:                                             ; preds = %1070
  %1075 = load i32, i32* %7, align 4
  store i32 %1075, i32* %5, align 4
  br label %1076

1076:                                             ; preds = %1184, %1074
  %1077 = load i32, i32* %5, align 4
  %1078 = add nsw i32 %1077, -1
  store i32 %1078, i32* %5, align 4
  %1079 = icmp ne i32 %1077, 0
  br i1 %1079, label %1080, label %1185

1080:                                             ; preds = %1076
  %1081 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1082 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1081, i32 0, i32 5
  %1083 = load %struct.r5dev*, %struct.r5dev** %1082, align 8
  %1084 = load i32, i32* %5, align 4
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1083, i64 %1085
  store %struct.r5dev* %1086, %struct.r5dev** %14, align 8
  %1087 = load i32, i32* @R5_WriteError, align 4
  %1088 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %1089 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1088, i32 0, i32 0
  %1090 = call i64 @test_and_clear_bit(i32 %1087, i64* %1089)
  %1091 = icmp ne i64 %1090, 0
  br i1 %1091, label %1092, label %1120

1092:                                             ; preds = %1080
  %1093 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1094 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1093, i32 0, i32 5
  %1095 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1094, align 8
  %1096 = load i32, i32* %5, align 4
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1095, i64 %1097
  %1099 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1098, i32 0, i32 0
  %1100 = load %struct.md_rdev*, %struct.md_rdev** %1099, align 8
  store %struct.md_rdev* %1100, %struct.md_rdev** %13, align 8
  %1101 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %1102 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1103 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1102, i32 0, i32 4
  %1104 = load i64, i64* %1103, align 8
  %1105 = load i32, i32* @STRIPE_SECTORS, align 4
  %1106 = call i32 @rdev_set_badblocks(%struct.md_rdev* %1101, i64 %1104, i32 %1105, i32 0)
  %1107 = icmp ne i32 %1106, 0
  br i1 %1107, label %1114, label %1108

1108:                                             ; preds = %1092
  %1109 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1110 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1109, i32 0, i32 3
  %1111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1110, align 8
  %1112 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %1113 = call i32 @md_error(%struct.TYPE_7__* %1111, %struct.md_rdev* %1112)
  br label %1114

1114:                                             ; preds = %1108, %1092
  %1115 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %1116 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1117 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1116, i32 0, i32 3
  %1118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1117, align 8
  %1119 = call i32 @rdev_dec_pending(%struct.md_rdev* %1115, %struct.TYPE_7__* %1118)
  br label %1120

1120:                                             ; preds = %1114, %1080
  %1121 = load i32, i32* @R5_MadeGood, align 4
  %1122 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %1123 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1122, i32 0, i32 0
  %1124 = call i64 @test_and_clear_bit(i32 %1121, i64* %1123)
  %1125 = icmp ne i64 %1124, 0
  br i1 %1125, label %1126, label %1146

1126:                                             ; preds = %1120
  %1127 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1128 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1127, i32 0, i32 5
  %1129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1128, align 8
  %1130 = load i32, i32* %5, align 4
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1129, i64 %1131
  %1133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1132, i32 0, i32 0
  %1134 = load %struct.md_rdev*, %struct.md_rdev** %1133, align 8
  store %struct.md_rdev* %1134, %struct.md_rdev** %13, align 8
  %1135 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %1136 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1137 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1136, i32 0, i32 4
  %1138 = load i64, i64* %1137, align 8
  %1139 = load i32, i32* @STRIPE_SECTORS, align 4
  %1140 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %1135, i64 %1138, i32 %1139, i32 0)
  %1141 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %1142 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1143 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1142, i32 0, i32 3
  %1144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1143, align 8
  %1145 = call i32 @rdev_dec_pending(%struct.md_rdev* %1141, %struct.TYPE_7__* %1144)
  br label %1146

1146:                                             ; preds = %1126, %1120
  %1147 = load i32, i32* @R5_MadeGoodRepl, align 4
  %1148 = load %struct.r5dev*, %struct.r5dev** %14, align 8
  %1149 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %1148, i32 0, i32 0
  %1150 = call i64 @test_and_clear_bit(i32 %1147, i64* %1149)
  %1151 = icmp ne i64 %1150, 0
  br i1 %1151, label %1152, label %1184

1152:                                             ; preds = %1146
  %1153 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1154 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1153, i32 0, i32 5
  %1155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1154, align 8
  %1156 = load i32, i32* %5, align 4
  %1157 = sext i32 %1156 to i64
  %1158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1155, i64 %1157
  %1159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1158, i32 0, i32 1
  %1160 = load %struct.md_rdev*, %struct.md_rdev** %1159, align 8
  store %struct.md_rdev* %1160, %struct.md_rdev** %13, align 8
  %1161 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %1162 = icmp ne %struct.md_rdev* %1161, null
  br i1 %1162, label %1172, label %1163

1163:                                             ; preds = %1152
  %1164 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1165 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1164, i32 0, i32 5
  %1166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1165, align 8
  %1167 = load i32, i32* %5, align 4
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1166, i64 %1168
  %1170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1169, i32 0, i32 0
  %1171 = load %struct.md_rdev*, %struct.md_rdev** %1170, align 8
  store %struct.md_rdev* %1171, %struct.md_rdev** %13, align 8
  br label %1172

1172:                                             ; preds = %1163, %1152
  %1173 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %1174 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1175 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %1174, i32 0, i32 4
  %1176 = load i64, i64* %1175, align 8
  %1177 = load i32, i32* @STRIPE_SECTORS, align 4
  %1178 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %1173, i64 %1176, i32 %1177, i32 0)
  %1179 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %1180 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1181 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1180, i32 0, i32 3
  %1182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1181, align 8
  %1183 = call i32 @rdev_dec_pending(%struct.md_rdev* %1179, %struct.TYPE_7__* %1182)
  br label %1184

1184:                                             ; preds = %1172, %1146
  br label %1076

1185:                                             ; preds = %1076
  br label %1186

1186:                                             ; preds = %1185, %1070
  %1187 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 8
  %1188 = load i64, i64* %1187, align 8
  %1189 = icmp ne i64 %1188, 0
  br i1 %1189, label %1190, label %1195

1190:                                             ; preds = %1186
  %1191 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1192 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 8
  %1193 = load i64, i64* %1192, align 8
  %1194 = call i32 @raid_run_ops(%struct.stripe_head* %1191, i64 %1193)
  br label %1195

1195:                                             ; preds = %1190, %1186
  %1196 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %1197 = call i32 @ops_run_io(%struct.stripe_head* %1196, %struct.stripe_head_state* %3)
  %1198 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 3
  %1199 = load i32, i32* %1198, align 8
  %1200 = icmp ne i32 %1199, 0
  br i1 %1200, label %1201, label %1218

1201:                                             ; preds = %1195
  %1202 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1203 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1202, i32 0, i32 4
  %1204 = call i32 @atomic_dec(i32* %1203)
  %1205 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1206 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1205, i32 0, i32 4
  %1207 = call i64 @atomic_read(i32* %1206)
  %1208 = load i64, i64* @IO_THRESHOLD, align 8
  %1209 = icmp slt i64 %1207, %1208
  br i1 %1209, label %1210, label %1217

1210:                                             ; preds = %1201
  %1211 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %1212 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %1211, i32 0, i32 3
  %1213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1212, align 8
  %1214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1213, i32 0, i32 0
  %1215 = load i32, i32* %1214, align 8
  %1216 = call i32 @md_wakeup_thread(i32 %1215)
  br label %1217

1217:                                             ; preds = %1210, %1201
  br label %1218

1218:                                             ; preds = %1217, %1195
  %1219 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %3, i32 0, i32 7
  %1220 = load i32, i32* %1219, align 8
  %1221 = call i32 @return_io(i32 %1220)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i64 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @analyse_stripe(%struct.stripe_head*, %struct.stripe_head_state*) #1

declare dso_local i64 @unlikely(%struct.md_rdev*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.TYPE_7__*) #1

declare dso_local i32 @handle_failed_stripe(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32, i32*) #1

declare dso_local i32 @handle_failed_sync(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @handle_stripe_clean_event(%struct.r5conf*, %struct.stripe_head*, i32, i32*) #1

declare dso_local i32 @handle_stripe_fill(%struct.stripe_head*, %struct.stripe_head_state*, i32) #1

declare dso_local i32 @handle_stripe_dirtying(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32) #1

declare dso_local i32 @handle_parity_checks6(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32) #1

declare dso_local i32 @handle_parity_checks5(%struct.r5conf*, %struct.stripe_head*, %struct.stripe_head_state*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @md_done_sync(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.stripe_head* @get_active_stripe(%struct.r5conf*, i64, i32, i32, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @release_stripe(%struct.stripe_head*) #1

declare dso_local i32 @stripe_set_idx(i64, %struct.r5conf*, i32, %struct.stripe_head*) #1

declare dso_local i32 @schedule_reconstruction(%struct.stripe_head*, %struct.stripe_head_state*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @handle_stripe_expansion(%struct.r5conf*, %struct.stripe_head*) #1

declare dso_local i32 @md_wait_for_blocked_rdev(%struct.md_rdev*, %struct.TYPE_7__*) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i64, i32, i32) #1

declare dso_local i32 @md_error(%struct.TYPE_7__*, %struct.md_rdev*) #1

declare dso_local i32 @rdev_clear_badblocks(%struct.md_rdev*, i64, i32, i32) #1

declare dso_local i32 @raid_run_ops(%struct.stripe_head*, i64) #1

declare dso_local i32 @ops_run_io(%struct.stripe_head*, %struct.stripe_head_state*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @return_io(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
