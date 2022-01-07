; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_init_mr_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_init_mr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32*, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@MTHCA_FLAG_DDR_HIDDEN = common dso_local global i32 0, align 4
@MTHCA_FLAG_FMR = common dso_local global i32 0, align 4
@MTHCA_FLAG_SINAI_OPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Memory key throughput optimization activated.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to reserve 2^31 FMR MTTs.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"MPT ioremap for FMR failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"MTT ioremap for FMR failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"MTT table of order %d is too small.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_init_mr_table(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mthca_alloc_init(i32* %11, i32 %15, i32 -1, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %335

25:                                               ; preds = %1
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %27 = call i32 @mthca_is_memfree(%struct.mthca_dev* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MTHCA_FLAG_DDR_HIDDEN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %46

40:                                               ; preds = %29, %25
  %41 = load i32, i32* @MTHCA_FLAG_FMR, align 4
  %42 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %36
  %47 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MTHCA_FLAG_SINAI_OPT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %55 = call i32 @mthca_dbg(%struct.mthca_dev* %54, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %58 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %61 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = call i32 @fls(i32 %64)
  %66 = call i32 @mthca_buddy_init(%struct.TYPE_11__* %59, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %329

70:                                               ; preds = %56
  %71 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %72 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %76 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  %79 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %80 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %70
  %85 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %86 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i32 @fls(i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp sge i32 %91, 31
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %95 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %324

98:                                               ; preds = %84
  %99 = load i32, i32* %8, align 4
  %100 = shl i32 1, %99
  store i32 %100, i32* %6, align 4
  store i32 %100, i32* %5, align 4
  br label %110

101:                                              ; preds = %70
  %102 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %103 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %6, align 4
  %106 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %107 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %101, %98
  %111 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %112 = call i32 @mthca_is_memfree(%struct.mthca_dev* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %202, label %114

114:                                              ; preds = %110
  %115 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %116 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MTHCA_FLAG_FMR, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %202

121:                                              ; preds = %114
  %122 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %123 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @pci_resource_start(i32 %124, i32 4)
  %126 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %127 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @pci_resource_len(i32 %128, i32 4)
  %130 = sub nsw i32 %129, 1
  %131 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %132 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %130, %134
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %125, %136
  store i64 %137, i64* %4, align 8
  %138 = load i64, i64* %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = trunc i64 %141 to i32
  %143 = call i8* @ioremap(i64 %138, i32 %142)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %146 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  store i32* %144, i32** %148, align 8
  %149 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %150 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %160, label %155

155:                                              ; preds = %121
  %156 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %157 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %7, align 4
  br label %324

160:                                              ; preds = %121
  %161 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @pci_resource_start(i32 %163, i32 4)
  %165 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %166 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @pci_resource_len(i32 %167, i32 4)
  %169 = sub nsw i32 %168, 1
  %170 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %171 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %169, %173
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %164, %175
  store i64 %176, i64* %4, align 8
  %177 = load i64, i64* %4, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %180 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %178, %182
  %184 = call i8* @ioremap(i64 %177, i32 %183)
  %185 = bitcast i8* %184 to i32*
  %186 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %187 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  store i32* %185, i32** %189, align 8
  %190 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %191 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %201, label %196

196:                                              ; preds = %160
  %197 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %198 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %199 = load i32, i32* @ENOMEM, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %7, align 4
  br label %309

201:                                              ; preds = %160
  br label %202

202:                                              ; preds = %201, %114, %110
  %203 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %204 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %239

208:                                              ; preds = %202
  %209 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %210 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 2
  %213 = load i32, i32* %6, align 4
  %214 = sub nsw i32 %213, 1
  %215 = call i32 @fls(i32 %214)
  %216 = call i32 @mthca_buddy_init(%struct.TYPE_11__* %212, i32 %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %208
  br label %294

220:                                              ; preds = %208
  %221 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %222 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 3
  %224 = load i32, i32* %6, align 4
  %225 = sub nsw i32 %224, 1
  %226 = call i32 @fls(i32 %225)
  %227 = call i32 @mthca_buddy_alloc(%struct.TYPE_11__* %223, i32 %226)
  store i32 %227, i32* %7, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  br label %281

231:                                              ; preds = %220
  %232 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %233 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 2
  %236 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %237 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 5
  store %struct.TYPE_11__* %235, %struct.TYPE_11__** %238, align 8
  br label %246

239:                                              ; preds = %202
  %240 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %241 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  %243 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %244 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 5
  store %struct.TYPE_11__* %242, %struct.TYPE_11__** %245, align 8
  br label %246

246:                                              ; preds = %239, %231
  %247 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %248 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %279

252:                                              ; preds = %246
  %253 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %254 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = sub nsw i32 %256, 1
  %258 = call i32 @fls(i32 %257)
  store i32 %258, i32* %8, align 4
  %259 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %260 = load i32, i32* %8, align 4
  %261 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %262 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 5
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  %265 = call i32 @mthca_alloc_mtt_range(%struct.mthca_dev* %259, i32 %260, %struct.TYPE_11__* %264)
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %267, label %278

267:                                              ; preds = %252
  %268 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %269 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %270 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 5
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_warn(%struct.mthca_dev* %268, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* @ENOMEM, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %7, align 4
  br label %280

278:                                              ; preds = %252
  br label %279

279:                                              ; preds = %278, %246
  store i32 0, i32* %2, align 4
  br label %335

280:                                              ; preds = %267
  br label %281

281:                                              ; preds = %280, %230
  %282 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %283 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %281
  %288 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %289 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 4
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 2
  %292 = call i32 @mthca_buddy_cleanup(%struct.TYPE_11__* %291)
  br label %293

293:                                              ; preds = %287, %281
  br label %294

294:                                              ; preds = %293, %219
  %295 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %296 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = icmp ne i32* %299, null
  br i1 %300, label %301, label %308

301:                                              ; preds = %294
  %302 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %303 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 4
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = call i32 @iounmap(i32* %306)
  br label %308

308:                                              ; preds = %301, %294
  br label %309

309:                                              ; preds = %308, %196
  %310 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %311 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = icmp ne i32* %314, null
  br i1 %315, label %316, label %323

316:                                              ; preds = %309
  %317 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %318 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = call i32 @iounmap(i32* %321)
  br label %323

323:                                              ; preds = %316, %309
  br label %324

324:                                              ; preds = %323, %155, %93
  %325 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %326 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 3
  %328 = call i32 @mthca_buddy_cleanup(%struct.TYPE_11__* %327)
  br label %329

329:                                              ; preds = %324, %69
  %330 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %331 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 2
  %333 = call i32 @mthca_alloc_cleanup(i32* %332)
  %334 = load i32, i32* %7, align 4
  store i32 %334, i32* %2, align 4
  br label %335

335:                                              ; preds = %329, %279, %23
  %336 = load i32, i32* %2, align 4
  ret i32 %336
}

declare dso_local i32 @mthca_alloc_init(i32*, i32, i32, i32) #1

declare dso_local i32 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*) #1

declare dso_local i32 @mthca_buddy_init(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, ...) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i8* @ioremap(i64, i32) #1

declare dso_local i32 @mthca_buddy_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mthca_alloc_mtt_range(%struct.mthca_dev*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @mthca_buddy_cleanup(%struct.TYPE_11__*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @mthca_alloc_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
