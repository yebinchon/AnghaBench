; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_mem.c_nouveau_mem_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*)*, i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32, i32)*, i32 (%struct.nouveau_mem_exec_func*)*, i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*)*, i32 (%struct.nouveau_mem_exec_func*)*, i32 }
%struct.nouveau_pm_level = type { %struct.nouveau_pm_memtiming }
%struct.nouveau_pm_memtiming = type { i32* }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"cannot reclock unsupported memtype\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_mem_exec(%struct.nouveau_mem_exec_func* %0, %struct.nouveau_pm_level* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_mem_exec_func*, align 8
  %5 = alloca %struct.nouveau_pm_level*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nouveau_device*, align 8
  %8 = alloca %struct.nouveau_fb*, align 8
  %9 = alloca %struct.nouveau_pm_memtiming*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca i32, align 4
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %4, align 8
  store %struct.nouveau_pm_level* %1, %struct.nouveau_pm_level** %5, align 8
  %17 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %18 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.nouveau_drm* @nouveau_drm(i32 %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %6, align 8
  %21 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %22 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.nouveau_device* @nouveau_dev(i32 %23)
  store %struct.nouveau_device* %24, %struct.nouveau_device** %7, align 8
  %25 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %26 = call %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device* %25)
  store %struct.nouveau_fb* %26, %struct.nouveau_fb** %8, align 8
  %27 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %5, align 8
  %28 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %27, i32 0, i32 0
  store %struct.nouveau_pm_memtiming* %28, %struct.nouveau_pm_memtiming** %9, align 8
  store i32 1000, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %30 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %31 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %29, align 4
  %35 = getelementptr inbounds i32, i32* %29, i64 1
  %36 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %37 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %35, align 4
  %41 = getelementptr inbounds i32, i32* %35, i64 1
  %42 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %43 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %41, align 4
  %47 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %48 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %54 [
    i32 130, label %51
    i32 129, label %52
    i32 128, label %53
  ]

51:                                               ; preds = %2
  store i32 2000, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %59

52:                                               ; preds = %2
  store i32 12000, i32* %14, align 4
  store i32 2000, i32* %11, align 4
  store i32 1000, i32* %13, align 4
  store i32 1, i32* %16, align 4
  br label %59

53:                                               ; preds = %2
  store i32 40000, i32* %14, align 4
  store i32 64, i32* %16, align 4
  br label %59

54:                                               ; preds = %2
  %55 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %56 = call i32 @NV_ERROR(%struct.nouveau_drm* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %362

59:                                               ; preds = %53, %52, %51
  %60 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %61 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %71 [
    i32 128, label %64
    i32 129, label %64
  ]

64:                                               ; preds = %59, %59
  %65 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %66 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %65, i32 0, i32 0
  %67 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %66, align 8
  %68 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %69 = call i32 %67(%struct.nouveau_mem_exec_func* %68, i32 2)
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %59, %64
  %72 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %73 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %72, i32 0, i32 0
  %74 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %73, align 8
  %75 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %76 = call i32 %74(%struct.nouveau_mem_exec_func* %75, i32 1)
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  store i32 %76, i32* %77, align 4
  %78 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %79 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %78, i32 0, i32 0
  %80 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %79, align 8
  %81 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %82 = call i32 %80(%struct.nouveau_mem_exec_func* %81, i32 0)
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %71
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %16, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %120, label %90

90:                                               ; preds = %84
  %91 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %92 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %16, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %90
  %100 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %101 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %100, i32 0, i32 1
  %102 = load i32 (%struct.nouveau_mem_exec_func*)*, i32 (%struct.nouveau_mem_exec_func*)** %101, align 8
  %103 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %104 = call i32 %102(%struct.nouveau_mem_exec_func* %103)
  %105 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %106 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %105, i32 0, i32 3
  %107 = load i32 (%struct.nouveau_mem_exec_func*, i32, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32, i32)** %106, align 8
  %108 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %16, align 4
  %112 = or i32 %110, %111
  %113 = call i32 %107(%struct.nouveau_mem_exec_func* %108, i32 1, i32 %112)
  %114 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %115 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %114, i32 0, i32 2
  %116 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %115, align 8
  %117 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 %116(%struct.nouveau_mem_exec_func* %117, i32 %118)
  br label %120

120:                                              ; preds = %99, %90, %84
  %121 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %122 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %121, i32 0, i32 1
  %123 = load i32 (%struct.nouveau_mem_exec_func*)*, i32 (%struct.nouveau_mem_exec_func*)** %122, align 8
  %124 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %125 = call i32 %123(%struct.nouveau_mem_exec_func* %124)
  %126 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %127 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %126, i32 0, i32 8
  %128 = load i32 (%struct.nouveau_mem_exec_func*)*, i32 (%struct.nouveau_mem_exec_func*)** %127, align 8
  %129 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %130 = call i32 %128(%struct.nouveau_mem_exec_func* %129)
  %131 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %132 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %131, i32 0, i32 8
  %133 = load i32 (%struct.nouveau_mem_exec_func*)*, i32 (%struct.nouveau_mem_exec_func*)** %132, align 8
  %134 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %135 = call i32 %133(%struct.nouveau_mem_exec_func* %134)
  %136 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %137 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %136, i32 0, i32 5
  %138 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %137, align 8
  %139 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %140 = call i32 %138(%struct.nouveau_mem_exec_func* %139, i32 0)
  %141 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %142 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %141, i32 0, i32 6
  %143 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %142, align 8
  %144 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %145 = call i32 %143(%struct.nouveau_mem_exec_func* %144, i32 1)
  %146 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %147 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %146, i32 0, i32 2
  %148 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %147, align 8
  %149 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 %148(%struct.nouveau_mem_exec_func* %149, i32 %150)
  %152 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %153 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %152, i32 0, i32 7
  %154 = load i32 (%struct.nouveau_mem_exec_func*)*, i32 (%struct.nouveau_mem_exec_func*)** %153, align 8
  %155 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %156 = call i32 %154(%struct.nouveau_mem_exec_func* %155)
  %157 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %158 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %157, i32 0, i32 2
  %159 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %158, align 8
  %160 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i32 %159(%struct.nouveau_mem_exec_func* %160, i32 %161)
  %163 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %164 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %163, i32 0, i32 1
  %165 = load i32 (%struct.nouveau_mem_exec_func*)*, i32 (%struct.nouveau_mem_exec_func*)** %164, align 8
  %166 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %167 = call i32 %165(%struct.nouveau_mem_exec_func* %166)
  %168 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %169 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %168, i32 0, i32 6
  %170 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %169, align 8
  %171 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %172 = call i32 %170(%struct.nouveau_mem_exec_func* %171, i32 0)
  %173 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %174 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %173, i32 0, i32 5
  %175 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %174, align 8
  %176 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %177 = call i32 %175(%struct.nouveau_mem_exec_func* %176, i32 1)
  %178 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %179 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %178, i32 0, i32 2
  %180 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %179, align 8
  %181 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i32 %180(%struct.nouveau_mem_exec_func* %181, i32 %182)
  %184 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %185 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %184, i32 0, i32 2
  %186 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %185, align 8
  %187 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %188 = load i32, i32* %13, align 4
  %189 = call i32 %186(%struct.nouveau_mem_exec_func* %187, i32 %188)
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %193 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %191, %196
  br i1 %197, label %198, label %215

198:                                              ; preds = %120
  %199 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %200 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %199, i32 0, i32 3
  %201 = load i32 (%struct.nouveau_mem_exec_func*, i32, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32, i32)** %200, align 8
  %202 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %203 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %204 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 %201(%struct.nouveau_mem_exec_func* %202, i32 2, i32 %207)
  %209 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %210 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %209, i32 0, i32 2
  %211 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %210, align 8
  %212 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 %211(%struct.nouveau_mem_exec_func* %212, i32 %213)
  br label %215

215:                                              ; preds = %198, %120
  %216 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %219 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %217, %222
  br i1 %223, label %224, label %246

224:                                              ; preds = %215
  %225 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %226 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %225, i32 0, i32 3
  %227 = load i32 (%struct.nouveau_mem_exec_func*, i32, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32, i32)** %226, align 8
  %228 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %229 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %230 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %16, align 4
  %237 = and i32 %235, %236
  %238 = or i32 %233, %237
  %239 = call i32 %227(%struct.nouveau_mem_exec_func* %228, i32 1, i32 %238)
  %240 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %241 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %240, i32 0, i32 2
  %242 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %241, align 8
  %243 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %244 = load i32, i32* %10, align 4
  %245 = call i32 %242(%struct.nouveau_mem_exec_func* %243, i32 %244)
  br label %246

246:                                              ; preds = %224, %215
  %247 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %250 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %248, %253
  br i1 %254, label %255, label %272

255:                                              ; preds = %246
  %256 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %257 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %256, i32 0, i32 3
  %258 = load i32 (%struct.nouveau_mem_exec_func*, i32, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32, i32)** %257, align 8
  %259 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %260 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %261 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = call i32 %258(%struct.nouveau_mem_exec_func* %259, i32 0, i32 %264)
  %266 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %267 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %266, i32 0, i32 2
  %268 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %267, align 8
  %269 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %270 = load i32, i32* %10, align 4
  %271 = call i32 %268(%struct.nouveau_mem_exec_func* %269, i32 %270)
  br label %272

272:                                              ; preds = %255, %246
  %273 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %274 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %273, i32 0, i32 4
  %275 = load i32 (%struct.nouveau_mem_exec_func*)*, i32 (%struct.nouveau_mem_exec_func*)** %274, align 8
  %276 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %277 = call i32 %275(%struct.nouveau_mem_exec_func* %276)
  %278 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %279 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %16, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %361, label %286

286:                                              ; preds = %272
  %287 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %16, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %309

292:                                              ; preds = %286
  %293 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %294 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %293, i32 0, i32 3
  %295 = load i32 (%struct.nouveau_mem_exec_func*, i32, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32, i32)** %294, align 8
  %296 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %297 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %298 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 %295(%struct.nouveau_mem_exec_func* %296, i32 1, i32 %301)
  %303 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %304 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %303, i32 0, i32 2
  %305 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %304, align 8
  %306 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %307 = load i32, i32* %10, align 4
  %308 = call i32 %305(%struct.nouveau_mem_exec_func* %306, i32 %307)
  br label %309

309:                                              ; preds = %292, %286
  %310 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %311 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %310, i32 0, i32 3
  %312 = load i32 (%struct.nouveau_mem_exec_func*, i32, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32, i32)** %311, align 8
  %313 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %314 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %315 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, 256
  %320 = call i32 %312(%struct.nouveau_mem_exec_func* %313, i32 0, i32 %319)
  %321 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %322 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %321, i32 0, i32 2
  %323 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %322, align 8
  %324 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %325 = load i32, i32* %10, align 4
  %326 = call i32 %323(%struct.nouveau_mem_exec_func* %324, i32 %325)
  %327 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %328 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %327, i32 0, i32 3
  %329 = load i32 (%struct.nouveau_mem_exec_func*, i32, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32, i32)** %328, align 8
  %330 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %331 = load %struct.nouveau_pm_memtiming*, %struct.nouveau_pm_memtiming** %9, align 8
  %332 = getelementptr inbounds %struct.nouveau_pm_memtiming, %struct.nouveau_pm_memtiming* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = call i32 %329(%struct.nouveau_mem_exec_func* %330, i32 0, i32 %335)
  %337 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %338 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %337, i32 0, i32 2
  %339 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %338, align 8
  %340 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %341 = load i32, i32* %10, align 4
  %342 = call i32 %339(%struct.nouveau_mem_exec_func* %340, i32 %341)
  %343 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %344 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %343, i32 0, i32 2
  %345 = load i32 (%struct.nouveau_mem_exec_func*, i32)*, i32 (%struct.nouveau_mem_exec_func*, i32)** %344, align 8
  %346 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %347 = load i32, i32* %14, align 4
  %348 = call i32 %345(%struct.nouveau_mem_exec_func* %346, i32 %347)
  %349 = load %struct.nouveau_fb*, %struct.nouveau_fb** %8, align 8
  %350 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 128
  br i1 %353, label %354, label %360

354:                                              ; preds = %309
  %355 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %356 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %355, i32 0, i32 1
  %357 = load i32 (%struct.nouveau_mem_exec_func*)*, i32 (%struct.nouveau_mem_exec_func*)** %356, align 8
  %358 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %4, align 8
  %359 = call i32 %357(%struct.nouveau_mem_exec_func* %358)
  br label %360

360:                                              ; preds = %354, %309
  br label %361

361:                                              ; preds = %360, %272
  store i32 0, i32* %3, align 4
  br label %362

362:                                              ; preds = %361, %54
  %363 = load i32, i32* %3, align 4
  ret i32 %363
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(%struct.nouveau_device*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
