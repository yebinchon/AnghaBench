; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_super_1_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_super_1_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i64, i64, i32, i32, i64, i64, i32, i64, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_3__*, i32*, %struct.TYPE_4__, i32, i64*, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32* }
%struct.md_rdev = type { i32, i32, i64, i32, i32 }
%struct.mdp_superblock_1 = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@WriteMostly = common dso_local global i32 0, align 4
@MD_FEATURE_BITMAP_OFFSET = common dso_local global i32 0, align 4
@MD_FEATURE_RESHAPE_ACTIVE = common dso_local global i32 0, align 4
@MD_FEATURE_RESHAPE_BACKWARDS = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LEVEL_MULTIPATH = common dso_local global i32 0, align 4
@MD_FEATURE_RECOVERY_OFFSET = common dso_local global i32 0, align 4
@WriteMostly1 = common dso_local global i32 0, align 4
@MD_FEATURE_REPLACEMENT = common dso_local global i32 0, align 4
@Replacement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @super_1_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_1_validate(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.mdp_superblock_1*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %9 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %10 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mdp_superblock_1* @page_address(i32 %11)
  store %struct.mdp_superblock_1* %12, %struct.mdp_superblock_1** %6, align 8
  %13 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %14 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %13, i32 0, i32 20
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @le64_to_cpu(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %18 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = load i32, i32* @Faulty, align 4
  %20 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %21 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %20, i32 0, i32 3
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = load i32, i32* @In_sync, align 4
  %24 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 3
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load i32, i32* @WriteMostly, align 4
  %28 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %29 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %28, i32 0, i32 3
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load %struct.mddev*, %struct.mddev** %4, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %260

35:                                               ; preds = %2
  %36 = load %struct.mddev*, %struct.mddev** %4, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.mddev*, %struct.mddev** %4, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 24
  store i64 0, i64* %39, align 8
  %40 = load %struct.mddev*, %struct.mddev** %4, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 23
  store i64 0, i64* %41, align 8
  %42 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %43 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %42, i32 0, i32 19
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = load %struct.mddev*, %struct.mddev** %4, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %49 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %48, i32 0, i32 18
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @le64_to_cpu(i32 %50)
  %52 = and i64 %51, 4294967295
  %53 = load %struct.mddev*, %struct.mddev** %4, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %56 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %55, i32 0, i32 17
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le64_to_cpu(i32 %57)
  %59 = and i64 %58, 4294967295
  %60 = load %struct.mddev*, %struct.mddev** %4, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %63 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %62, i32 0, i32 16
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = load %struct.mddev*, %struct.mddev** %4, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mddev*, %struct.mddev** %4, align 8
  %69 = getelementptr inbounds %struct.mddev, %struct.mddev* %68, i32 0, i32 22
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %73 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %72, i32 0, i32 15
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = load %struct.mddev*, %struct.mddev** %4, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %79 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = load %struct.mddev*, %struct.mddev** %4, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %85 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %84, i32 0, i32 13
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le64_to_cpu(i32 %86)
  %88 = load %struct.mddev*, %struct.mddev** %4, align 8
  %89 = getelementptr inbounds %struct.mddev, %struct.mddev* %88, i32 0, i32 7
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.mddev*, %struct.mddev** %4, align 8
  %92 = getelementptr inbounds %struct.mddev, %struct.mddev* %91, i32 0, i32 8
  store i64 %90, i64* %92, align 8
  %93 = load %struct.mddev*, %struct.mddev** %4, align 8
  %94 = getelementptr inbounds %struct.mddev, %struct.mddev* %93, i32 0, i32 20
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.mddev*, %struct.mddev** %4, align 8
  %97 = getelementptr inbounds %struct.mddev, %struct.mddev* %96, i32 0, i32 20
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.mddev*, %struct.mddev** %4, align 8
  %100 = getelementptr inbounds %struct.mddev, %struct.mddev* %99, i32 0, i32 20
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 2, i32* %101, align 8
  %102 = load %struct.mddev*, %struct.mddev** %4, align 8
  %103 = getelementptr inbounds %struct.mddev, %struct.mddev* %102, i32 0, i32 20
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store i32 6, i32* %104, align 4
  %105 = load %struct.mddev*, %struct.mddev** %4, align 8
  %106 = getelementptr inbounds %struct.mddev, %struct.mddev* %105, i32 0, i32 9
  store i32 0, i32* %106, align 8
  %107 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %108 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @le64_to_cpu(i32 %109)
  %111 = load %struct.mddev*, %struct.mddev** %4, align 8
  %112 = getelementptr inbounds %struct.mddev, %struct.mddev* %111, i32 0, i32 10
  store i64 %110, i64* %112, align 8
  %113 = load %struct.mddev*, %struct.mddev** %4, align 8
  %114 = getelementptr inbounds %struct.mddev, %struct.mddev* %113, i32 0, i32 21
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %117 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @memcpy(i32 %115, i32 %118, i32 16)
  %120 = load %struct.mddev*, %struct.mddev** %4, align 8
  %121 = getelementptr inbounds %struct.mddev, %struct.mddev* %120, i32 0, i32 11
  store i32 1920, i32* %121, align 8
  %122 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %123 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le32_to_cpu(i32 %124)
  %126 = load i32, i32* @MD_FEATURE_BITMAP_OFFSET, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %178

129:                                              ; preds = %35
  %130 = load %struct.mddev*, %struct.mddev** %4, align 8
  %131 = getelementptr inbounds %struct.mddev, %struct.mddev* %130, i32 0, i32 20
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %178

135:                                              ; preds = %129
  %136 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %137 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @le32_to_cpu(i32 %138)
  %140 = sext i32 %139 to i64
  %141 = load %struct.mddev*, %struct.mddev** %4, align 8
  %142 = getelementptr inbounds %struct.mddev, %struct.mddev* %141, i32 0, i32 20
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  %144 = load %struct.mddev*, %struct.mddev** %4, align 8
  %145 = getelementptr inbounds %struct.mddev, %struct.mddev* %144, i32 0, i32 12
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %135
  %149 = load %struct.mddev*, %struct.mddev** %4, align 8
  %150 = getelementptr inbounds %struct.mddev, %struct.mddev* %149, i32 0, i32 20
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  br label %177

152:                                              ; preds = %135
  %153 = load %struct.mddev*, %struct.mddev** %4, align 8
  %154 = getelementptr inbounds %struct.mddev, %struct.mddev* %153, i32 0, i32 20
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load %struct.mddev*, %struct.mddev** %4, align 8
  %160 = getelementptr inbounds %struct.mddev, %struct.mddev* %159, i32 0, i32 20
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 8, %162
  %164 = load %struct.mddev*, %struct.mddev** %4, align 8
  %165 = getelementptr inbounds %struct.mddev, %struct.mddev* %164, i32 0, i32 20
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  store i64 %163, i64* %166, align 8
  br label %176

167:                                              ; preds = %152
  %168 = load %struct.mddev*, %struct.mddev** %4, align 8
  %169 = getelementptr inbounds %struct.mddev, %struct.mddev* %168, i32 0, i32 20
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 0, %171
  %173 = load %struct.mddev*, %struct.mddev** %4, align 8
  %174 = getelementptr inbounds %struct.mddev, %struct.mddev* %173, i32 0, i32 20
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  store i64 %172, i64* %175, align 8
  br label %176

176:                                              ; preds = %167, %158
  br label %177

177:                                              ; preds = %176, %148
  br label %178

178:                                              ; preds = %177, %129, %35
  %179 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %180 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le32_to_cpu(i32 %181)
  %183 = load i32, i32* @MD_FEATURE_RESHAPE_ACTIVE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %238

186:                                              ; preds = %178
  %187 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %188 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @le64_to_cpu(i32 %189)
  %191 = load %struct.mddev*, %struct.mddev** %4, align 8
  %192 = getelementptr inbounds %struct.mddev, %struct.mddev* %191, i32 0, i32 13
  store i64 %190, i64* %192, align 8
  %193 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %194 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @le32_to_cpu(i32 %195)
  %197 = load %struct.mddev*, %struct.mddev** %4, align 8
  %198 = getelementptr inbounds %struct.mddev, %struct.mddev* %197, i32 0, i32 14
  store i32 %196, i32* %198, align 8
  %199 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %200 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @le32_to_cpu(i32 %201)
  %203 = load %struct.mddev*, %struct.mddev** %4, align 8
  %204 = getelementptr inbounds %struct.mddev, %struct.mddev* %203, i32 0, i32 15
  store i32 %202, i32* %204, align 4
  %205 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %206 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @le32_to_cpu(i32 %207)
  %209 = load %struct.mddev*, %struct.mddev** %4, align 8
  %210 = getelementptr inbounds %struct.mddev, %struct.mddev* %209, i32 0, i32 16
  store i32 %208, i32* %210, align 8
  %211 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %212 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @le32_to_cpu(i32 %213)
  %215 = load %struct.mddev*, %struct.mddev** %4, align 8
  %216 = getelementptr inbounds %struct.mddev, %struct.mddev* %215, i32 0, i32 17
  store i32 %214, i32* %216, align 4
  %217 = load %struct.mddev*, %struct.mddev** %4, align 8
  %218 = getelementptr inbounds %struct.mddev, %struct.mddev* %217, i32 0, i32 14
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %234, label %221

221:                                              ; preds = %186
  %222 = load %struct.mddev*, %struct.mddev** %4, align 8
  %223 = getelementptr inbounds %struct.mddev, %struct.mddev* %222, i32 0, i32 14
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %221
  %227 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %228 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @le32_to_cpu(i32 %229)
  %231 = load i32, i32* @MD_FEATURE_RESHAPE_BACKWARDS, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %226, %186
  %235 = load %struct.mddev*, %struct.mddev** %4, align 8
  %236 = getelementptr inbounds %struct.mddev, %struct.mddev* %235, i32 0, i32 9
  store i32 1, i32* %236, align 8
  br label %237

237:                                              ; preds = %234, %226, %221
  br label %259

238:                                              ; preds = %178
  %239 = load i64, i64* @MaxSector, align 8
  %240 = load %struct.mddev*, %struct.mddev** %4, align 8
  %241 = getelementptr inbounds %struct.mddev, %struct.mddev* %240, i32 0, i32 13
  store i64 %239, i64* %241, align 8
  %242 = load %struct.mddev*, %struct.mddev** %4, align 8
  %243 = getelementptr inbounds %struct.mddev, %struct.mddev* %242, i32 0, i32 14
  store i32 0, i32* %243, align 8
  %244 = load %struct.mddev*, %struct.mddev** %4, align 8
  %245 = getelementptr inbounds %struct.mddev, %struct.mddev* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.mddev*, %struct.mddev** %4, align 8
  %248 = getelementptr inbounds %struct.mddev, %struct.mddev* %247, i32 0, i32 15
  store i32 %246, i32* %248, align 4
  %249 = load %struct.mddev*, %struct.mddev** %4, align 8
  %250 = getelementptr inbounds %struct.mddev, %struct.mddev* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.mddev*, %struct.mddev** %4, align 8
  %253 = getelementptr inbounds %struct.mddev, %struct.mddev* %252, i32 0, i32 16
  store i32 %251, i32* %253, align 8
  %254 = load %struct.mddev*, %struct.mddev** %4, align 8
  %255 = getelementptr inbounds %struct.mddev, %struct.mddev* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.mddev*, %struct.mddev** %4, align 8
  %258 = getelementptr inbounds %struct.mddev, %struct.mddev* %257, i32 0, i32 17
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %238, %237
  br label %329

260:                                              ; preds = %2
  %261 = load %struct.mddev*, %struct.mddev** %4, align 8
  %262 = getelementptr inbounds %struct.mddev, %struct.mddev* %261, i32 0, i32 19
  %263 = load i32*, i32** %262, align 8
  %264 = icmp eq i32* %263, null
  br i1 %264, label %265, label %304

265:                                              ; preds = %260
  %266 = load i64, i64* %7, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %7, align 8
  %268 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %269 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp sge i32 %270, 0
  br i1 %271, label %272, label %303

272:                                              ; preds = %265
  %273 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %274 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %277 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @le32_to_cpu(i32 %278)
  %280 = icmp slt i32 %275, %279
  br i1 %280, label %281, label %303

281:                                              ; preds = %272
  %282 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %283 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %282, i32 0, i32 3
  %284 = load i32*, i32** %283, align 8
  %285 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %286 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %284, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @le16_to_cpu(i32 %290)
  %292 = icmp slt i32 %291, 65534
  br i1 %292, label %293, label %303

293:                                              ; preds = %281
  %294 = load i64, i64* %7, align 8
  %295 = load %struct.mddev*, %struct.mddev** %4, align 8
  %296 = getelementptr inbounds %struct.mddev, %struct.mddev* %295, i32 0, i32 8
  %297 = load i64, i64* %296, align 8
  %298 = icmp slt i64 %294, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %293
  %300 = load i32, i32* @EINVAL, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %3, align 4
  br label %427

302:                                              ; preds = %293
  br label %303

303:                                              ; preds = %302, %281, %272, %265
  br label %328

304:                                              ; preds = %260
  %305 = load %struct.mddev*, %struct.mddev** %4, align 8
  %306 = getelementptr inbounds %struct.mddev, %struct.mddev* %305, i32 0, i32 18
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %306, align 8
  %308 = icmp ne %struct.TYPE_3__* %307, null
  br i1 %308, label %309, label %319

309:                                              ; preds = %304
  %310 = load i64, i64* %7, align 8
  %311 = load %struct.mddev*, %struct.mddev** %4, align 8
  %312 = getelementptr inbounds %struct.mddev, %struct.mddev* %311, i32 0, i32 18
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp slt i64 %310, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  store i32 0, i32* %3, align 4
  br label %427

318:                                              ; preds = %309
  br label %327

319:                                              ; preds = %304
  %320 = load i64, i64* %7, align 8
  %321 = load %struct.mddev*, %struct.mddev** %4, align 8
  %322 = getelementptr inbounds %struct.mddev, %struct.mddev* %321, i32 0, i32 8
  %323 = load i64, i64* %322, align 8
  %324 = icmp slt i64 %320, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %319
  store i32 0, i32* %3, align 4
  br label %427

326:                                              ; preds = %319
  br label %327

327:                                              ; preds = %326, %318
  br label %328

328:                                              ; preds = %327, %303
  br label %329

329:                                              ; preds = %328, %259
  %330 = load %struct.mddev*, %struct.mddev** %4, align 8
  %331 = getelementptr inbounds %struct.mddev, %struct.mddev* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @LEVEL_MULTIPATH, align 4
  %334 = icmp ne i32 %332, %333
  br i1 %334, label %335, label %421

335:                                              ; preds = %329
  %336 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %337 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %349, label %340

340:                                              ; preds = %335
  %341 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %342 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %345 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = call i32 @le32_to_cpu(i32 %346)
  %348 = icmp sge i32 %343, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %340, %335
  store i32 65535, i32* %8, align 4
  %350 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %351 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %350, i32 0, i32 1
  store i32 -1, i32* %351, align 4
  br label %363

352:                                              ; preds = %340
  %353 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %354 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %353, i32 0, i32 3
  %355 = load i32*, i32** %354, align 8
  %356 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %357 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %355, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @le16_to_cpu(i32 %361)
  store i32 %362, i32* %8, align 4
  br label %363

363:                                              ; preds = %352, %349
  %364 = load i32, i32* %8, align 4
  switch i32 %364, label %371 [
    i32 65535, label %365
    i32 65534, label %366
  ]

365:                                              ; preds = %363
  br label %395

366:                                              ; preds = %363
  %367 = load i32, i32* @Faulty, align 4
  %368 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %369 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %368, i32 0, i32 3
  %370 = call i32 @set_bit(i32 %367, i32* %369)
  br label %395

371:                                              ; preds = %363
  %372 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %373 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @le32_to_cpu(i32 %374)
  %376 = load i32, i32* @MD_FEATURE_RECOVERY_OFFSET, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %386

379:                                              ; preds = %371
  %380 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %381 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = call i64 @le64_to_cpu(i32 %382)
  %384 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %385 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %384, i32 0, i32 2
  store i64 %383, i64* %385, align 8
  br label %391

386:                                              ; preds = %371
  %387 = load i32, i32* @In_sync, align 4
  %388 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %389 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %388, i32 0, i32 3
  %390 = call i32 @set_bit(i32 %387, i32* %389)
  br label %391

391:                                              ; preds = %386, %379
  %392 = load i32, i32* %8, align 4
  %393 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %394 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %393, i32 0, i32 0
  store i32 %392, i32* %394, align 8
  br label %395

395:                                              ; preds = %391, %366, %365
  %396 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %397 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @WriteMostly1, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %395
  %403 = load i32, i32* @WriteMostly, align 4
  %404 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %405 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %404, i32 0, i32 3
  %406 = call i32 @set_bit(i32 %403, i32* %405)
  br label %407

407:                                              ; preds = %402, %395
  %408 = load %struct.mdp_superblock_1*, %struct.mdp_superblock_1** %6, align 8
  %409 = getelementptr inbounds %struct.mdp_superblock_1, %struct.mdp_superblock_1* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @le32_to_cpu(i32 %410)
  %412 = load i32, i32* @MD_FEATURE_REPLACEMENT, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %407
  %416 = load i32, i32* @Replacement, align 4
  %417 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %418 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %417, i32 0, i32 3
  %419 = call i32 @set_bit(i32 %416, i32* %418)
  br label %420

420:                                              ; preds = %415, %407
  br label %426

421:                                              ; preds = %329
  %422 = load i32, i32* @In_sync, align 4
  %423 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %424 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %423, i32 0, i32 3
  %425 = call i32 @set_bit(i32 %422, i32* %424)
  br label %426

426:                                              ; preds = %421, %420
  store i32 0, i32* %3, align 4
  br label %427

427:                                              ; preds = %426, %325, %317, %299
  %428 = load i32, i32* %3, align 4
  ret i32 %428
}

declare dso_local %struct.mdp_superblock_1* @page_address(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
