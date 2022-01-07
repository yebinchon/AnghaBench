; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_super_90_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_super_90_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_7__*, i32*, %struct.TYPE_8__, i32, i64, i8*, i32, i32, i32, i32, i8*, i32, i64*, i32, i32, i64, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32* }
%struct.md_rdev = type { i32, i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i64, i64, i64, %struct.TYPE_10__*, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i32, i32 }

@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@WriteMostly = common dso_local global i32 0, align 4
@MD_SB_BYTES = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i8* null, align 8
@MD_SB_CLEAN = common dso_local global i32 0, align 4
@MD_SB_DISKS = common dso_local global i32 0, align 4
@MD_SB_BITMAP_PRESENT = common dso_local global i32 0, align 4
@MD_DISK_SYNC = common dso_local global i32 0, align 4
@MD_DISK_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LEVEL_MULTIPATH = common dso_local global i32 0, align 4
@MD_DISK_FAULTY = common dso_local global i32 0, align 4
@MD_DISK_WRITEMOSTLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.md_rdev*)* @super_90_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_90_validate(%struct.mddev* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %9 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %10 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_9__* @page_address(i32 %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = call i64 @md_event(%struct.TYPE_9__* %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %16 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load i32, i32* @Faulty, align 4
  %18 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %19 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %18, i32 0, i32 2
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load i32, i32* @In_sync, align 4
  %22 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 2
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load i32, i32* @WriteMostly, align 4
  %26 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %27 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %26, i32 0, i32 2
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load %struct.mddev*, %struct.mddev** %4, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 18
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %271

33:                                               ; preds = %2
  %34 = load %struct.mddev*, %struct.mddev** %4, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 24
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mddev*, %struct.mddev** %4, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 24
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mddev*, %struct.mddev** %4, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 23
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mddev*, %struct.mddev** %4, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 22
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 9
  %52 = load %struct.mddev*, %struct.mddev** %4, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 23
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mddev*, %struct.mddev** %4, align 8
  %58 = getelementptr inbounds %struct.mddev, %struct.mddev* %57, i32 0, i32 21
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 22
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mddev*, %struct.mddev** %4, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 20
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 21
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.mddev*, %struct.mddev** %4, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.mddev*, %struct.mddev** %4, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 19
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 20
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mddev*, %struct.mddev** %4, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 13
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 19
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mddev*, %struct.mddev** %4, align 8
  %82 = getelementptr inbounds %struct.mddev, %struct.mddev* %81, i32 0, i32 18
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 18
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = mul nsw i32 %86, 2
  %88 = load %struct.mddev*, %struct.mddev** %4, align 8
  %89 = getelementptr inbounds %struct.mddev, %struct.mddev* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.mddev*, %struct.mddev** %4, align 8
  %92 = getelementptr inbounds %struct.mddev, %struct.mddev* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  %93 = load %struct.mddev*, %struct.mddev** %4, align 8
  %94 = getelementptr inbounds %struct.mddev, %struct.mddev* %93, i32 0, i32 9
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.mddev*, %struct.mddev** %4, align 8
  %97 = getelementptr inbounds %struct.mddev, %struct.mddev* %96, i32 0, i32 9
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @MD_SB_BYTES, align 4
  %100 = ashr i32 %99, 9
  %101 = load %struct.mddev*, %struct.mddev** %4, align 8
  %102 = getelementptr inbounds %struct.mddev, %struct.mddev* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @MD_SB_BYTES, align 4
  %105 = ashr i32 %104, 9
  %106 = sub nsw i32 128, %105
  %107 = load %struct.mddev*, %struct.mddev** %4, align 8
  %108 = getelementptr inbounds %struct.mddev, %struct.mddev* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 8
  %110 = load %struct.mddev*, %struct.mddev** %4, align 8
  %111 = getelementptr inbounds %struct.mddev, %struct.mddev* %110, i32 0, i32 4
  store i32 0, i32* %111, align 8
  %112 = load %struct.mddev*, %struct.mddev** %4, align 8
  %113 = getelementptr inbounds %struct.mddev, %struct.mddev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sge i32 %114, 91
  br i1 %115, label %116, label %151

116:                                              ; preds = %33
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 17
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.mddev*, %struct.mddev** %4, align 8
  %121 = getelementptr inbounds %struct.mddev, %struct.mddev* %120, i32 0, i32 17
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 16
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.mddev*, %struct.mddev** %4, align 8
  %126 = getelementptr inbounds %struct.mddev, %struct.mddev* %125, i32 0, i32 16
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 15
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mddev*, %struct.mddev** %4, align 8
  %131 = getelementptr inbounds %struct.mddev, %struct.mddev* %130, i32 0, i32 15
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 14
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.mddev*, %struct.mddev** %4, align 8
  %136 = getelementptr inbounds %struct.mddev, %struct.mddev* %135, i32 0, i32 14
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = ashr i32 %139, 9
  %141 = load %struct.mddev*, %struct.mddev** %4, align 8
  %142 = getelementptr inbounds %struct.mddev, %struct.mddev* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.mddev*, %struct.mddev** %4, align 8
  %144 = getelementptr inbounds %struct.mddev, %struct.mddev* %143, i32 0, i32 16
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %116
  %148 = load %struct.mddev*, %struct.mddev** %4, align 8
  %149 = getelementptr inbounds %struct.mddev, %struct.mddev* %148, i32 0, i32 4
  store i32 1, i32* %149, align 8
  br label %150

150:                                              ; preds = %147, %116
  br label %172

151:                                              ; preds = %33
  %152 = load i8*, i8** @MaxSector, align 8
  %153 = load %struct.mddev*, %struct.mddev** %4, align 8
  %154 = getelementptr inbounds %struct.mddev, %struct.mddev* %153, i32 0, i32 17
  store i8* %152, i8** %154, align 8
  %155 = load %struct.mddev*, %struct.mddev** %4, align 8
  %156 = getelementptr inbounds %struct.mddev, %struct.mddev* %155, i32 0, i32 16
  store i32 0, i32* %156, align 4
  %157 = load %struct.mddev*, %struct.mddev** %4, align 8
  %158 = getelementptr inbounds %struct.mddev, %struct.mddev* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.mddev*, %struct.mddev** %4, align 8
  %161 = getelementptr inbounds %struct.mddev, %struct.mddev* %160, i32 0, i32 15
  store i32 %159, i32* %161, align 8
  %162 = load %struct.mddev*, %struct.mddev** %4, align 8
  %163 = getelementptr inbounds %struct.mddev, %struct.mddev* %162, i32 0, i32 13
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.mddev*, %struct.mddev** %4, align 8
  %166 = getelementptr inbounds %struct.mddev, %struct.mddev* %165, i32 0, i32 14
  store i32 %164, i32* %166, align 4
  %167 = load %struct.mddev*, %struct.mddev** %4, align 8
  %168 = getelementptr inbounds %struct.mddev, %struct.mddev* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.mddev*, %struct.mddev** %4, align 8
  %171 = getelementptr inbounds %struct.mddev, %struct.mddev* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %151, %150
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @MD_SB_CLEAN, align 4
  %177 = shl i32 1, %176
  %178 = and i32 %175, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = load i8*, i8** @MaxSector, align 8
  %182 = load %struct.mddev*, %struct.mddev** %4, align 8
  %183 = getelementptr inbounds %struct.mddev, %struct.mddev* %182, i32 0, i32 12
  store i8* %181, i8** %183, align 8
  br label %210

184:                                              ; preds = %172
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %187, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %184
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 6
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %195, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %192
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 13
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.mddev*, %struct.mddev** %4, align 8
  %205 = getelementptr inbounds %struct.mddev, %struct.mddev* %204, i32 0, i32 12
  store i8* %203, i8** %205, align 8
  br label %209

206:                                              ; preds = %192, %184
  %207 = load %struct.mddev*, %struct.mddev** %4, align 8
  %208 = getelementptr inbounds %struct.mddev, %struct.mddev* %207, i32 0, i32 12
  store i8* null, i8** %208, align 8
  br label %209

209:                                              ; preds = %206, %200
  br label %210

210:                                              ; preds = %209, %180
  %211 = load %struct.mddev*, %struct.mddev** %4, align 8
  %212 = getelementptr inbounds %struct.mddev, %struct.mddev* %211, i32 0, i32 11
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, 0
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 12
  %217 = call i32 @memcpy(i64 %214, i32* %216, i32 4)
  %218 = load %struct.mddev*, %struct.mddev** %4, align 8
  %219 = getelementptr inbounds %struct.mddev, %struct.mddev* %218, i32 0, i32 11
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, 4
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 11
  %224 = call i32 @memcpy(i64 %221, i32* %223, i32 4)
  %225 = load %struct.mddev*, %struct.mddev** %4, align 8
  %226 = getelementptr inbounds %struct.mddev, %struct.mddev* %225, i32 0, i32 11
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, 8
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 10
  %231 = call i32 @memcpy(i64 %228, i32* %230, i32 4)
  %232 = load %struct.mddev*, %struct.mddev** %4, align 8
  %233 = getelementptr inbounds %struct.mddev, %struct.mddev* %232, i32 0, i32 11
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, 12
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 9
  %238 = call i32 @memcpy(i64 %235, i32* %237, i32 4)
  %239 = load i32, i32* @MD_SB_DISKS, align 4
  %240 = load %struct.mddev*, %struct.mddev** %4, align 8
  %241 = getelementptr inbounds %struct.mddev, %struct.mddev* %240, i32 0, i32 10
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @MD_SB_BITMAP_PRESENT, align 4
  %246 = shl i32 1, %245
  %247 = and i32 %244, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %270

249:                                              ; preds = %210
  %250 = load %struct.mddev*, %struct.mddev** %4, align 8
  %251 = getelementptr inbounds %struct.mddev, %struct.mddev* %250, i32 0, i32 9
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %270

255:                                              ; preds = %249
  %256 = load %struct.mddev*, %struct.mddev** %4, align 8
  %257 = getelementptr inbounds %struct.mddev, %struct.mddev* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.mddev*, %struct.mddev** %4, align 8
  %261 = getelementptr inbounds %struct.mddev, %struct.mddev* %260, i32 0, i32 9
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  store i32 %259, i32* %262, align 8
  %263 = load %struct.mddev*, %struct.mddev** %4, align 8
  %264 = getelementptr inbounds %struct.mddev, %struct.mddev* %263, i32 0, i32 9
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.mddev*, %struct.mddev** %4, align 8
  %268 = getelementptr inbounds %struct.mddev, %struct.mddev* %267, i32 0, i32 9
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 3
  store i64 %266, i64* %269, align 8
  br label %270

270:                                              ; preds = %255, %249, %210
  br label %331

271:                                              ; preds = %2
  %272 = load %struct.mddev*, %struct.mddev** %4, align 8
  %273 = getelementptr inbounds %struct.mddev, %struct.mddev* %272, i32 0, i32 8
  %274 = load i32*, i32** %273, align 8
  %275 = icmp eq i32* %274, null
  br i1 %275, label %276, label %306

276:                                              ; preds = %271
  %277 = load i64, i64* %8, align 8
  %278 = add nsw i64 %277, 1
  store i64 %278, i64* %8, align 8
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 8
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %280, align 8
  %282 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %283 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @MD_DISK_SYNC, align 4
  %289 = shl i32 1, %288
  %290 = load i32, i32* @MD_DISK_ACTIVE, align 4
  %291 = shl i32 1, %290
  %292 = or i32 %289, %291
  %293 = and i32 %287, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %305

295:                                              ; preds = %276
  %296 = load i64, i64* %8, align 8
  %297 = load %struct.mddev*, %struct.mddev** %4, align 8
  %298 = getelementptr inbounds %struct.mddev, %struct.mddev* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = icmp slt i64 %296, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %295
  %302 = load i32, i32* @EINVAL, align 4
  %303 = sub nsw i32 0, %302
  store i32 %303, i32* %3, align 4
  br label %419

304:                                              ; preds = %295
  br label %305

305:                                              ; preds = %304, %276
  br label %330

306:                                              ; preds = %271
  %307 = load %struct.mddev*, %struct.mddev** %4, align 8
  %308 = getelementptr inbounds %struct.mddev, %struct.mddev* %307, i32 0, i32 7
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %308, align 8
  %310 = icmp ne %struct.TYPE_7__* %309, null
  br i1 %310, label %311, label %321

311:                                              ; preds = %306
  %312 = load i64, i64* %8, align 8
  %313 = load %struct.mddev*, %struct.mddev** %4, align 8
  %314 = getelementptr inbounds %struct.mddev, %struct.mddev* %313, i32 0, i32 7
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = icmp slt i64 %312, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %311
  store i32 0, i32* %3, align 4
  br label %419

320:                                              ; preds = %311
  br label %329

321:                                              ; preds = %306
  %322 = load i64, i64* %8, align 8
  %323 = load %struct.mddev*, %struct.mddev** %4, align 8
  %324 = getelementptr inbounds %struct.mddev, %struct.mddev* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = icmp slt i64 %322, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %321
  store i32 0, i32* %3, align 4
  br label %419

328:                                              ; preds = %321
  br label %329

329:                                              ; preds = %328, %320
  br label %330

330:                                              ; preds = %329, %305
  br label %331

331:                                              ; preds = %330, %270
  %332 = load %struct.mddev*, %struct.mddev** %4, align 8
  %333 = getelementptr inbounds %struct.mddev, %struct.mddev* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @LEVEL_MULTIPATH, align 4
  %336 = icmp ne i32 %334, %335
  br i1 %336, label %337, label %413

337:                                              ; preds = %331
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 8
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %339, align 8
  %341 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %342 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i64 %343
  store %struct.TYPE_10__* %344, %struct.TYPE_10__** %6, align 8
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @MD_DISK_FAULTY, align 4
  %349 = shl i32 1, %348
  %350 = and i32 %347, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %337
  %353 = load i32, i32* @Faulty, align 4
  %354 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %355 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %354, i32 0, i32 2
  %356 = call i32 @set_bit(i32 %353, i32* %355)
  br label %399

357:                                              ; preds = %337
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @MD_DISK_SYNC, align 4
  %362 = shl i32 1, %361
  %363 = and i32 %360, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %357
  %366 = load i32, i32* @In_sync, align 4
  %367 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %368 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %367, i32 0, i32 2
  %369 = call i32 @set_bit(i32 %366, i32* %368)
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %374 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %373, i32 0, i32 0
  store i32 %372, i32* %374, align 8
  br label %398

375:                                              ; preds = %357
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @MD_DISK_ACTIVE, align 4
  %380 = shl i32 1, %379
  %381 = and i32 %378, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %397

383:                                              ; preds = %375
  %384 = load %struct.mddev*, %struct.mddev** %4, align 8
  %385 = getelementptr inbounds %struct.mddev, %struct.mddev* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = icmp sge i32 %386, 91
  br i1 %387, label %388, label %396

388:                                              ; preds = %383
  %389 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %390 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %389, i32 0, i32 3
  store i64 0, i64* %390, align 8
  %391 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %395 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %394, i32 0, i32 0
  store i32 %393, i32* %395, align 8
  br label %396

396:                                              ; preds = %388, %383
  br label %397

397:                                              ; preds = %396, %375
  br label %398

398:                                              ; preds = %397, %365
  br label %399

399:                                              ; preds = %398, %352
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @MD_DISK_WRITEMOSTLY, align 4
  %404 = shl i32 1, %403
  %405 = and i32 %402, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %412

407:                                              ; preds = %399
  %408 = load i32, i32* @WriteMostly, align 4
  %409 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %410 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %409, i32 0, i32 2
  %411 = call i32 @set_bit(i32 %408, i32* %410)
  br label %412

412:                                              ; preds = %407, %399
  br label %418

413:                                              ; preds = %331
  %414 = load i32, i32* @In_sync, align 4
  %415 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %416 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %415, i32 0, i32 2
  %417 = call i32 @set_bit(i32 %414, i32* %416)
  br label %418

418:                                              ; preds = %413, %412
  store i32 0, i32* %3, align 4
  br label %419

419:                                              ; preds = %418, %327, %319, %301
  %420 = load i32, i32* %3, align 4
  ret i32 %420
}

declare dso_local %struct.TYPE_9__* @page_address(i32) #1

declare dso_local i64 @md_event(%struct.TYPE_9__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
