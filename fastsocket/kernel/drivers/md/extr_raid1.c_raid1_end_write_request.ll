; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raid1_end_write_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_raid1_end_write_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.r1bio*, i32 }
%struct.r1bio = type { i32**, %struct.bio*, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.r1conf* }
%struct.r1conf = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@R1BIO_BehindIO = common dso_local global i32 0, align 4
@WriteErrorSeen = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@R1BIO_WriteError = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@R1BIO_Uptodate = common dso_local global i32 0, align 4
@IO_MADE_GOOD = common dso_local global i32* null, align 8
@R1BIO_MadeGood = common dso_local global i32 0, align 4
@WriteMostly = common dso_local global i32 0, align 4
@R1BIO_Returned = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"raid1: behind end write sectors %llu-%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @raid1_end_write_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid1_end_write_request(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.r1bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.r1conf*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @BIO_UPTODATE, align 4
  %15 = load %struct.bio*, %struct.bio** %3, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 2
  %17 = call i32 @test_bit(i32 %14, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 1
  %20 = load %struct.r1bio*, %struct.r1bio** %19, align 8
  store %struct.r1bio* %20, %struct.r1bio** %6, align 8
  %21 = load i32, i32* @R1BIO_BehindIO, align 4
  %22 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %23 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %22, i32 0, i32 2
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %26 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %25, i32 0, i32 7
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.r1conf*, %struct.r1conf** %28, align 8
  store %struct.r1conf* %29, %struct.r1conf** %9, align 8
  store %struct.bio* null, %struct.bio** %10, align 8
  %30 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %31 = load %struct.bio*, %struct.bio** %3, align 8
  %32 = call i32 @find_bio_disk(%struct.r1bio* %30, %struct.bio* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %71, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @WriteErrorSeen, align 4
  %37 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %38 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %36, i32* %45)
  %47 = load i32, i32* @WantReplacement, align 4
  %48 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %49 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @test_and_set_bit(i32 %47, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %35
  %60 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %61 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %62 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = call i32 @set_bit(i32 %60, i32* %64)
  br label %66

66:                                               ; preds = %59, %35
  %67 = load i32, i32* @R1BIO_WriteError, align 4
  %68 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %69 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %68, i32 0, i32 2
  %70 = call i32 @set_bit(i32 %67, i32* %69)
  br label %139

71:                                               ; preds = %2
  %72 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %73 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  store i32* null, i32** %77, align 8
  %78 = load %struct.bio*, %struct.bio** %3, align 8
  store %struct.bio* %78, %struct.bio** %10, align 8
  %79 = load i32, i32* @In_sync, align 4
  %80 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %81 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = call i32 @test_bit(i32 %79, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %71
  %92 = load i32, i32* @Faulty, align 4
  %93 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %94 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = call i32 @test_bit(i32 %92, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %91
  %105 = load i32, i32* @R1BIO_Uptodate, align 4
  %106 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %107 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %106, i32 0, i32 2
  %108 = call i32 @set_bit(i32 %105, i32* %107)
  br label %109

109:                                              ; preds = %104, %91, %71
  %110 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %111 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %119 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %122 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @is_badblock(%struct.TYPE_8__* %117, i32 %120, i32 %123, i32* %11, i32* %12)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %109
  %127 = load i32*, i32** @IO_MADE_GOOD, align 8
  %128 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %129 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  store i32* %127, i32** %133, align 8
  %134 = load i32, i32* @R1BIO_MadeGood, align 4
  %135 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %136 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %135, i32 0, i32 2
  %137 = call i32 @set_bit(i32 %134, i32* %136)
  br label %138

138:                                              ; preds = %126, %109
  br label %139

139:                                              ; preds = %138, %66
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %199

142:                                              ; preds = %139
  %143 = load i32, i32* @WriteMostly, align 4
  %144 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %145 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = call i32 @test_bit(i32 %143, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %142
  %156 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %157 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %156, i32 0, i32 4
  %158 = call i32 @atomic_dec(i32* %157)
  br label %159

159:                                              ; preds = %155, %142
  %160 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %161 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %160, i32 0, i32 4
  %162 = call i32 @atomic_read(i32* %161)
  %163 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %164 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %163, i32 0, i32 3
  %165 = call i32 @atomic_read(i32* %164)
  %166 = sub nsw i32 %165, 1
  %167 = icmp sge i32 %162, %166
  br i1 %167, label %168, label %198

168:                                              ; preds = %159
  %169 = load i32, i32* @R1BIO_Uptodate, align 4
  %170 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %171 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %170, i32 0, i32 2
  %172 = call i32 @test_bit(i32 %169, i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %198

174:                                              ; preds = %168
  %175 = load i32, i32* @R1BIO_Returned, align 4
  %176 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %177 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %176, i32 0, i32 2
  %178 = call i32 @test_and_set_bit(i32 %175, i32* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %197, label %180

180:                                              ; preds = %174
  %181 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %182 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %181, i32 0, i32 1
  %183 = load %struct.bio*, %struct.bio** %182, align 8
  store %struct.bio* %183, %struct.bio** %13, align 8
  %184 = load %struct.bio*, %struct.bio** %13, align 8
  %185 = getelementptr inbounds %struct.bio, %struct.bio* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.bio*, %struct.bio** %13, align 8
  %188 = getelementptr inbounds %struct.bio, %struct.bio* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.bio*, %struct.bio** %13, align 8
  %191 = call i64 @bio_sectors(%struct.bio* %190)
  %192 = add i64 %189, %191
  %193 = sub i64 %192, 1
  %194 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %186, i64 %193)
  %195 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %196 = call i32 @call_bio_endio(%struct.r1bio* %195)
  br label %197

197:                                              ; preds = %180, %174
  br label %198

198:                                              ; preds = %197, %168, %159
  br label %199

199:                                              ; preds = %198, %139
  %200 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %201 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %200, i32 0, i32 0
  %202 = load i32**, i32*** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  %206 = load i32*, i32** %205, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %221

208:                                              ; preds = %199
  %209 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %210 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %209, i32 0, i32 1
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = load %struct.r1conf*, %struct.r1conf** %9, align 8
  %218 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %217, i32 0, i32 0
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = call i32 @rdev_dec_pending(%struct.TYPE_8__* %216, %struct.TYPE_9__* %219)
  br label %221

221:                                              ; preds = %208, %199
  %222 = load %struct.r1bio*, %struct.r1bio** %6, align 8
  %223 = call i32 @r1_bio_write_done(%struct.r1bio* %222)
  %224 = load %struct.bio*, %struct.bio** %10, align 8
  %225 = icmp ne %struct.bio* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load %struct.bio*, %struct.bio** %10, align 8
  %228 = call i32 @bio_put(%struct.bio* %227)
  br label %229

229:                                              ; preds = %226, %221
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @find_bio_disk(%struct.r1bio*, %struct.bio*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @is_badblock(%struct.TYPE_8__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @call_bio_endio(%struct.r1bio*) #1

declare dso_local i32 @rdev_dec_pending(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @r1_bio_write_done(%struct.r1bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
