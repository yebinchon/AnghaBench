; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_do_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_do_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { %struct.TYPE_20__, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 (i32, i32*, i32*)* }

@.str = private unnamed_addr constant [24 x i8] c"%x - failed, retval=%d\0A\00", align 1
@CPIA_COMMAND_WriteMCPort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_data*, i32, i32, i32, i32, i32)* @do_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_command(%struct.cam_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cam_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8 x i32], align 16
  %16 = alloca [8 x i32], align 16
  store %struct.cam_data* %0, %struct.cam_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %24 [
    i32 136, label %18
    i32 131, label %18
    i32 135, label %18
    i32 130, label %18
    i32 133, label %19
    i32 134, label %19
    i32 132, label %19
    i32 129, label %23
    i32 128, label %23
  ]

18:                                               ; preds = %6, %6, %6, %6
  store i32 8, i32* %14, align 4
  br label %25

19:                                               ; preds = %6, %6, %6
  %20 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %21 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  store i32 8, i32* %14, align 4
  br label %25

23:                                               ; preds = %6, %6
  store i32 4, i32* %14, align 4
  br label %25

24:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %24, %23, %19, %18
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 8
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 2
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 4
  store i32 %36, i32* %37, align 16
  %38 = load i32, i32* %12, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 5
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %14, align 4
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 6
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 7
  store i32 0, i32* %42, align 4
  %43 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %44 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %43, i32 0, i32 3
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %46, align 8
  %48 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %49 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %53 = call i32 %47(i32 %50, i32* %51, i32* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %25
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 133
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 134
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 132
  br i1 %67, label %68, label %72

68:                                               ; preds = %65, %62, %56
  %69 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %70 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  br label %72

72:                                               ; preds = %68, %65
  br label %342

73:                                               ; preds = %25
  %74 = load i32, i32* %8, align 4
  switch i32 %74, label %340 [
    i32 136, label %75
    i32 131, label %100
    i32 135, label %131
    i32 130, label %180
    i32 133, label %203
    i32 134, label %225
    i32 132, label %247
    i32 129, label %299
  ]

75:                                               ; preds = %73
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %79 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %85 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %91 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 4
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %97 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 3
  store i32 %95, i32* %99, align 4
  br label %341

100:                                              ; preds = %73
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 8
  %106 = add nsw i32 %102, %105
  %107 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %108 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 8
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 8
  %116 = add nsw i32 %112, %115
  %117 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %118 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  store i32 %116, i32* %120, align 4
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %122 = load i32, i32* %121, align 16
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 8
  %126 = add nsw i32 %122, %125
  %127 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %128 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  store i32 %126, i32* %130, align 8
  br label %341

131:                                              ; preds = %73
  %132 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %133 = load i32, i32* %132, align 16
  %134 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %135 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 8
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %141 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  store i32 %139, i32* %143, align 4
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %147 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  store i32 %145, i32* %149, align 8
  %150 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %153 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  store i32 %151, i32* %155, align 4
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %157 = load i32, i32* %156, align 16
  %158 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %159 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 4
  store i32 %157, i32* %161, align 8
  %162 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %165 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 5
  store i32 %163, i32* %167, align 4
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 6
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %171 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 6
  store i32 %169, i32* %173, align 8
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 7
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %177 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 7
  store i32 %175, i32* %179, align 4
  br label %341

180:                                              ; preds = %73
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %182 = load i32, i32* %181, align 16
  %183 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %184 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  store i32 %182, i32* %186, align 4
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %190 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  store i32 %188, i32* %192, align 4
  %193 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %194 = load i32, i32* %193, align 8
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %196, 8
  %198 = add nsw i32 %194, %197
  %199 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %200 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 2
  store i32 %198, i32* %202, align 4
  br label %341

203:                                              ; preds = %73
  %204 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %205 = load i32, i32* %204, align 16
  %206 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %207 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  store i32 %205, i32* %209, align 8
  %210 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %213 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  store i32 %211, i32* %215, align 4
  %216 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %219 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 2
  store i32 %217, i32* %221, align 8
  %222 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %223 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %222, i32 0, i32 1
  %224 = call i32 @mutex_unlock(i32* %223)
  br label %341

225:                                              ; preds = %73
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %227 = load i32, i32* %226, align 16
  %228 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %229 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  store i32 %227, i32* %231, align 4
  %232 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %235 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 1
  store i32 %233, i32* %237, align 4
  %238 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %241 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 2
  store i32 %239, i32* %243, align 4
  %244 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %245 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %244, i32 0, i32 1
  %246 = call i32 @mutex_unlock(i32* %245)
  br label %341

247:                                              ; preds = %73
  %248 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %249 = load i32, i32* %248, align 16
  %250 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %251 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  store i32 %249, i32* %253, align 4
  %254 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %257 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 1
  store i32 %255, i32* %259, align 4
  %260 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %263 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 2
  store i32 %261, i32* %265, align 4
  %266 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %269 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 3
  store i32 %267, i32* %271, align 4
  %272 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %273 = load i32, i32* %272, align 16
  %274 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %275 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 4
  store i32 %273, i32* %277, align 4
  %278 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %281 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 5
  store i32 %279, i32* %283, align 4
  %284 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 6
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %287 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 6
  store i32 %285, i32* %289, align 4
  %290 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 7
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %293 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 7
  store i32 %291, i32* %295, align 4
  %296 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %297 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %296, i32 0, i32 1
  %298 = call i32 @mutex_unlock(i32* %297)
  br label %341

299:                                              ; preds = %73
  %300 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %301 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %299
  br label %341

307:                                              ; preds = %299
  %308 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, 2
  %311 = icmp eq i32 %310, 0
  %312 = zext i1 %311 to i32
  %313 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %314 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 0
  store i32 %312, i32* %316, align 8
  %317 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %318 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %307
  %324 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %325 = load i32, i32* @CPIA_COMMAND_WriteMCPort, align 4
  %326 = call i32 @do_command(%struct.cam_data* %324, i32 %325, i32 3, i32 223, i32 223, i32 0)
  %327 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %328 = load i32, i32* @CPIA_COMMAND_WriteMCPort, align 4
  %329 = call i32 @do_command(%struct.cam_data* %327, i32 %328, i32 3, i32 255, i32 255, i32 0)
  br label %330

330:                                              ; preds = %323, %307
  %331 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %332 = load i32, i32* %331, align 8
  %333 = and i32 %332, 64
  %334 = icmp eq i32 %333, 0
  %335 = zext i1 %334 to i32
  %336 = load %struct.cam_data*, %struct.cam_data** %7, align 8
  %337 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 1
  store i32 %335, i32* %339, align 4
  br label %341

340:                                              ; preds = %73
  br label %341

341:                                              ; preds = %340, %330, %306, %247, %225, %203, %180, %131, %100, %75
  br label %342

342:                                              ; preds = %341, %72
  %343 = load i32, i32* %13, align 4
  ret i32 %343
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
