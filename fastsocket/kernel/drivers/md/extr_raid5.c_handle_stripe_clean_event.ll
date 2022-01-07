; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_stripe_clean_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_handle_stripe_clean_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.stripe_head = type { i64, i64, i32, %struct.r5dev*, i32 }
%struct.r5dev = type { i64, i32, %struct.bio* }
%struct.bio = type { i64, %struct.bio* }

@R5_LOCKED = common dso_local global i32 0, align 4
@R5_UPTODATE = common dso_local global i32 0, align 4
@R5_Discard = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Return write for disc %d\0A\00", align 1
@STRIPE_SECTORS = common dso_local global i64 0, align 8
@STRIPE_DEGRADED = common dso_local global i32 0, align 4
@STRIPE_DISCARD = common dso_local global i32 0, align 4
@STRIPE_SYNC_REQUESTED = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@STRIPE_FULL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*, i32, %struct.bio**)* @handle_stripe_clean_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_stripe_clean_event(%struct.r5conf* %0, %struct.stripe_head* %1, i32 %2, %struct.bio** %3) #0 {
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca %struct.stripe_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.r5dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio*, align 8
  %13 = alloca %struct.bio*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %5, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.bio** %3, %struct.bio*** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %136, %4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %9, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %137

19:                                               ; preds = %15
  %20 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %21 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %20, i32 0, i32 3
  %22 = load %struct.r5dev*, %struct.r5dev** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %22, i64 %24
  %26 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %25, i32 0, i32 2
  %27 = load %struct.bio*, %struct.bio** %26, align 8
  %28 = icmp ne %struct.bio* %27, null
  br i1 %28, label %29, label %136

29:                                               ; preds = %19
  %30 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %31 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %30, i32 0, i32 3
  %32 = load %struct.r5dev*, %struct.r5dev** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %32, i64 %34
  store %struct.r5dev* %35, %struct.r5dev** %10, align 8
  %36 = load i32, i32* @R5_LOCKED, align 4
  %37 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %38 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %127, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @R5_UPTODATE, align 4
  %43 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %44 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %43, i32 0, i32 1
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @R5_Discard, align 4
  %49 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %50 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %49, i32 0, i32 1
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %127

53:                                               ; preds = %47, %41
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @R5_Discard, align 4
  %57 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %58 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %57, i32 0, i32 1
  %59 = call i64 @test_and_clear_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i32, i32* @R5_UPTODATE, align 4
  %63 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %64 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %63, i32 0, i32 1
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  br label %66

66:                                               ; preds = %61, %53
  %67 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %68 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %67, i32 0, i32 2
  %69 = load %struct.bio*, %struct.bio** %68, align 8
  store %struct.bio* %69, %struct.bio** %12, align 8
  %70 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %71 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %70, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %71, align 8
  br label %72

72:                                               ; preds = %107, %66
  %73 = load %struct.bio*, %struct.bio** %12, align 8
  %74 = icmp ne %struct.bio* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.bio*, %struct.bio** %12, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %80 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @STRIPE_SECTORS, align 8
  %83 = add nsw i64 %81, %82
  %84 = icmp slt i64 %78, %83
  br label %85

85:                                               ; preds = %75, %72
  %86 = phi i1 [ false, %72 ], [ %84, %75 ]
  br i1 %86, label %87, label %109

87:                                               ; preds = %85
  %88 = load %struct.bio*, %struct.bio** %12, align 8
  %89 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %90 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call %struct.bio* @r5_next_bio(%struct.bio* %88, i64 %91)
  store %struct.bio* %92, %struct.bio** %13, align 8
  %93 = load %struct.bio*, %struct.bio** %12, align 8
  %94 = call i32 @raid5_dec_bi_active_stripes(%struct.bio* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %87
  %97 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %98 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = call i32 @md_write_end(%struct.TYPE_2__* %99)
  %101 = load %struct.bio**, %struct.bio*** %8, align 8
  %102 = load %struct.bio*, %struct.bio** %101, align 8
  %103 = load %struct.bio*, %struct.bio** %12, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 1
  store %struct.bio* %102, %struct.bio** %104, align 8
  %105 = load %struct.bio*, %struct.bio** %12, align 8
  %106 = load %struct.bio**, %struct.bio*** %8, align 8
  store %struct.bio* %105, %struct.bio** %106, align 8
  br label %107

107:                                              ; preds = %96, %87
  %108 = load %struct.bio*, %struct.bio** %13, align 8
  store %struct.bio* %108, %struct.bio** %12, align 8
  br label %72

109:                                              ; preds = %85
  %110 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %111 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %116 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i64, i64* @STRIPE_SECTORS, align 8
  %119 = load i32, i32* @STRIPE_DEGRADED, align 4
  %120 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %121 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %120, i32 0, i32 2
  %122 = call i64 @test_bit(i32 %119, i32* %121)
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @bitmap_endwrite(i32 %114, i32 %117, i64 %118, i32 %125, i32 0)
  br label %135

127:                                              ; preds = %47, %29
  %128 = load i32, i32* @R5_Discard, align 4
  %129 = load %struct.r5dev*, %struct.r5dev** %10, align 8
  %130 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %129, i32 0, i32 1
  %131 = call i64 @test_bit(i32 %128, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 1, i32* %11, align 4
  br label %134

134:                                              ; preds = %133, %127
  br label %135

135:                                              ; preds = %134, %109
  br label %136

136:                                              ; preds = %135, %19
  br label %15

137:                                              ; preds = %15
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %214, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @R5_Discard, align 4
  %142 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %143 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %142, i32 0, i32 3
  %144 = load %struct.r5dev*, %struct.r5dev** %143, align 8
  %145 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %146 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %144, i64 %147
  %149 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %148, i32 0, i32 1
  %150 = call i64 @test_bit(i32 %141, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %214

152:                                              ; preds = %140
  %153 = load i32, i32* @R5_Discard, align 4
  %154 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %155 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %154, i32 0, i32 3
  %156 = load %struct.r5dev*, %struct.r5dev** %155, align 8
  %157 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %158 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %156, i64 %159
  %161 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %160, i32 0, i32 1
  %162 = call i32 @clear_bit(i32 %153, i32* %161)
  %163 = load i32, i32* @R5_UPTODATE, align 4
  %164 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %165 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %164, i32 0, i32 3
  %166 = load %struct.r5dev*, %struct.r5dev** %165, align 8
  %167 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %168 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %166, i64 %169
  %171 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %170, i32 0, i32 1
  %172 = call i32 @clear_bit(i32 %163, i32* %171)
  %173 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %174 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp uge i64 %175, 0
  br i1 %176, label %177, label %198

177:                                              ; preds = %152
  %178 = load i32, i32* @R5_Discard, align 4
  %179 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %180 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %179, i32 0, i32 3
  %181 = load %struct.r5dev*, %struct.r5dev** %180, align 8
  %182 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %183 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %181, i64 %184
  %186 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %185, i32 0, i32 1
  %187 = call i32 @clear_bit(i32 %178, i32* %186)
  %188 = load i32, i32* @R5_UPTODATE, align 4
  %189 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %190 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %189, i32 0, i32 3
  %191 = load %struct.r5dev*, %struct.r5dev** %190, align 8
  %192 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %193 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %191, i64 %194
  %196 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %195, i32 0, i32 1
  %197 = call i32 @clear_bit(i32 %188, i32* %196)
  br label %198

198:                                              ; preds = %177, %152
  %199 = load i32, i32* @STRIPE_DISCARD, align 4
  %200 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %201 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %200, i32 0, i32 2
  %202 = call i32 @clear_bit(i32 %199, i32* %201)
  %203 = load i32, i32* @STRIPE_SYNC_REQUESTED, align 4
  %204 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %205 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %204, i32 0, i32 2
  %206 = call i64 @test_bit(i32 %203, i32* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %198
  %209 = load i32, i32* @STRIPE_HANDLE, align 4
  %210 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %211 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %210, i32 0, i32 2
  %212 = call i32 @set_bit(i32 %209, i32* %211)
  br label %213

213:                                              ; preds = %208, %198
  br label %214

214:                                              ; preds = %213, %140, %137
  %215 = load i32, i32* @STRIPE_FULL_WRITE, align 4
  %216 = load %struct.stripe_head*, %struct.stripe_head** %6, align 8
  %217 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %216, i32 0, i32 2
  %218 = call i64 @test_and_clear_bit(i32 %215, i32* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %214
  %221 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %222 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %221, i32 0, i32 1
  %223 = call i64 @atomic_dec_and_test(i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %220
  %226 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %227 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %226, i32 0, i32 0
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @md_wakeup_thread(i32 %230)
  br label %232

232:                                              ; preds = %225, %220
  br label %233

233:                                              ; preds = %232, %214
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.bio* @r5_next_bio(%struct.bio*, i64) #1

declare dso_local i32 @raid5_dec_bi_active_stripes(%struct.bio*) #1

declare dso_local i32 @md_write_end(%struct.TYPE_2__*) #1

declare dso_local i32 @bitmap_endwrite(i32, i32, i64, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
