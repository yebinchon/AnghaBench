; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___clone_and_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___clone_and_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone_info = type { i64, i64, i64, %struct.TYPE_2__*, i32, %struct.bio* }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32, i32, %struct.bio_vec* }
%struct.bio_vec = type { i64, i32 }
%struct.dm_target = type { i32 }
%struct.dm_target_io = type { i32 }

@BIO_DISCARD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone_info*)* @__clone_and_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clone_and_map(%struct.clone_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clone_info*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dm_target_io*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bio_vec*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.clone_info* %0, %struct.clone_info** %3, align 8
  %16 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %17 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %16, i32 0, i32 5
  %18 = load %struct.bio*, %struct.bio** %17, align 8
  store %struct.bio* %18, %struct.bio** %5, align 8
  store i64 0, i64* %7, align 8
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BIO_DISCARD, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %28 = call i32 @__clone_and_map_discard(%struct.clone_info* %27)
  store i32 %28, i32* %2, align 4
  br label %251

29:                                               ; preds = %1
  %30 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %31 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %34 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.dm_target* @dm_table_find_target(i32 %32, i64 %35)
  store %struct.dm_target* %36, %struct.dm_target** %6, align 8
  %37 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %38 = call i32 @dm_target_is_valid(%struct.dm_target* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %251

43:                                               ; preds = %29
  %44 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %45 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %48 = call i64 @max_io_len(i64 %46, %struct.dm_target* %47)
  store i64 %48, i64* %8, align 8
  %49 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %50 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %56 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %57 = call i32 @__clone_and_map_simple(%struct.clone_info* %55, %struct.dm_target* %56)
  br label %250

58:                                               ; preds = %43
  %59 = load %struct.bio*, %struct.bio** %5, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 2
  %61 = load %struct.bio_vec*, %struct.bio_vec** %60, align 8
  %62 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %63 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %61, i64 %64
  %66 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @to_sector(i32 %67)
  %69 = load i64, i64* %8, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %156

71:                                               ; preds = %58
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %11, align 8
  %73 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %74 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %109, %71
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.bio*, %struct.bio** %5, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br label %86

86:                                               ; preds = %80, %77
  %87 = phi i1 [ false, %77 ], [ %85, %80 ]
  br i1 %87, label %88, label %112

88:                                               ; preds = %86
  %89 = load %struct.bio*, %struct.bio** %5, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 2
  %91 = load %struct.bio_vec*, %struct.bio_vec** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %91, i64 %93
  %95 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @to_sector(i32 %96)
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %112

102:                                              ; preds = %88
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %11, align 8
  %105 = sub nsw i64 %104, %103
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %7, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %7, align 8
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %77

112:                                              ; preds = %101, %86
  %113 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %114 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %115 = call %struct.dm_target_io* @alloc_tio(%struct.clone_info* %113, %struct.dm_target* %114)
  store %struct.dm_target_io* %115, %struct.dm_target_io** %9, align 8
  %116 = load %struct.bio*, %struct.bio** %5, align 8
  %117 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %118 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %121 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %127 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = sub i64 %125, %128
  %130 = trunc i64 %129 to i32
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %133 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %132, i32 0, i32 3
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.bio* @clone_bio(%struct.bio* %116, i64 %119, i32 %123, i32 %130, i64 %131, i32 %136)
  store %struct.bio* %137, %struct.bio** %4, align 8
  %138 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %139 = load %struct.bio*, %struct.bio** %4, align 8
  %140 = load %struct.dm_target_io*, %struct.dm_target_io** %9, align 8
  %141 = call i32 @__map_bio(%struct.dm_target* %138, %struct.bio* %139, %struct.dm_target_io* %140)
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %144 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %142
  store i64 %146, i64* %144, align 8
  %147 = load i64, i64* %7, align 8
  %148 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %149 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %155 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  br label %249

156:                                              ; preds = %58
  %157 = load %struct.bio*, %struct.bio** %5, align 8
  %158 = getelementptr inbounds %struct.bio, %struct.bio* %157, i32 0, i32 2
  %159 = load %struct.bio_vec*, %struct.bio_vec** %158, align 8
  %160 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %161 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %159, i64 %162
  store %struct.bio_vec* %163, %struct.bio_vec** %13, align 8
  %164 = load %struct.bio_vec*, %struct.bio_vec** %13, align 8
  %165 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @to_sector(i32 %166)
  store i64 %167, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %239, %156
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %168
  %172 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %173 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %176 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call %struct.dm_target* @dm_table_find_target(i32 %174, i64 %177)
  store %struct.dm_target* %178, %struct.dm_target** %6, align 8
  %179 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %180 = call i32 @dm_target_is_valid(%struct.dm_target* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %171
  %183 = load i32, i32* @EIO, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %2, align 4
  br label %251

185:                                              ; preds = %171
  %186 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %187 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %190 = call i64 @max_io_len(i64 %188, %struct.dm_target* %189)
  store i64 %190, i64* %8, align 8
  br label %191

191:                                              ; preds = %185, %168
  %192 = load i64, i64* %14, align 8
  %193 = load i64, i64* %8, align 8
  %194 = call i64 @min(i64 %192, i64 %193)
  store i64 %194, i64* %7, align 8
  %195 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %196 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %197 = call %struct.dm_target_io* @alloc_tio(%struct.clone_info* %195, %struct.dm_target* %196)
  store %struct.dm_target_io* %197, %struct.dm_target_io** %9, align 8
  %198 = load %struct.bio*, %struct.bio** %5, align 8
  %199 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %200 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %203 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = trunc i64 %204 to i32
  %206 = load %struct.bio_vec*, %struct.bio_vec** %13, align 8
  %207 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %15, align 4
  %210 = zext i32 %209 to i64
  %211 = add nsw i64 %208, %210
  %212 = load i64, i64* %7, align 8
  %213 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %214 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %213, i32 0, i32 3
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call %struct.bio* @split_bvec(%struct.bio* %198, i64 %201, i32 %205, i64 %211, i64 %212, i32 %217)
  store %struct.bio* %218, %struct.bio** %4, align 8
  %219 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %220 = load %struct.bio*, %struct.bio** %4, align 8
  %221 = load %struct.dm_target_io*, %struct.dm_target_io** %9, align 8
  %222 = call i32 @__map_bio(%struct.dm_target* %219, %struct.bio* %220, %struct.dm_target_io* %221)
  %223 = load i64, i64* %7, align 8
  %224 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %225 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, %223
  store i64 %227, i64* %225, align 8
  %228 = load i64, i64* %7, align 8
  %229 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %230 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = sub nsw i64 %231, %228
  store i64 %232, i64* %230, align 8
  %233 = load i64, i64* %7, align 8
  %234 = call i64 @to_bytes(i64 %233)
  %235 = load i32, i32* %15, align 4
  %236 = zext i32 %235 to i64
  %237 = add nsw i64 %236, %234
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %15, align 4
  br label %239

239:                                              ; preds = %191
  %240 = load i64, i64* %7, align 8
  %241 = load i64, i64* %14, align 8
  %242 = sub nsw i64 %241, %240
  store i64 %242, i64* %14, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %168, label %244

244:                                              ; preds = %239
  %245 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %246 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %246, align 8
  br label %249

249:                                              ; preds = %244, %112
  br label %250

250:                                              ; preds = %249, %54
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %250, %182, %40, %26
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__clone_and_map_discard(%struct.clone_info*) #1

declare dso_local %struct.dm_target* @dm_table_find_target(i32, i64) #1

declare dso_local i32 @dm_target_is_valid(%struct.dm_target*) #1

declare dso_local i64 @max_io_len(i64, %struct.dm_target*) #1

declare dso_local i32 @__clone_and_map_simple(%struct.clone_info*, %struct.dm_target*) #1

declare dso_local i64 @to_sector(i32) #1

declare dso_local %struct.dm_target_io* @alloc_tio(%struct.clone_info*, %struct.dm_target*) #1

declare dso_local %struct.bio* @clone_bio(%struct.bio*, i64, i32, i32, i64, i32) #1

declare dso_local i32 @__map_bio(%struct.dm_target*, %struct.bio*, %struct.dm_target_io*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.bio* @split_bvec(%struct.bio*, i64, i32, i64, i64, i32) #1

declare dso_local i64 @to_bytes(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
