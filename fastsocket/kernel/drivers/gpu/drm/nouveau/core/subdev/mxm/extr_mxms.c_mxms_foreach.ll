; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_mxms.c_mxms_foreach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_mxms.c_mxms_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mxm = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"unknown descriptor type %d\0A\00", align 1
@NV_DBG_DEBUG = common dso_local global i64 0, align 8
@mxms_foreach.mxms_desc_name = internal global [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"ODS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SCCS\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TS\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"IPS\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"GSD\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"VSS\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"BCS\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"FCS\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%4s: \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"      \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxms_foreach(%struct.nouveau_mxm* %0, i32 %1, i32 (%struct.nouveau_mxm*, i32*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_mxm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.nouveau_mxm*, i32*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nouveau_mxm* %0, %struct.nouveau_mxm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (%struct.nouveau_mxm*, i32*, i8*)* %2, i32 (%struct.nouveau_mxm*, i32*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %6, align 8
  %21 = call i32* @mxms_data(%struct.nouveau_mxm* %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %6, align 8
  %24 = call i32 @mxms_headerlen(%struct.nouveau_mxm* %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %6, align 8
  %29 = call i32 @mxms_structlen(%struct.nouveau_mxm* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = getelementptr inbounds i32, i32* %31, i64 -1
  store i32* %32, i32** %12, align 8
  br label %33

33:                                               ; preds = %166, %4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ult i32* %34, %35
  br i1 %36, label %37, label %175

37:                                               ; preds = %33
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  store i32 %41, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %42 = load i32, i32* %13, align 4
  switch i32 %42, label %76 [
    i32 0, label %43
    i32 1, label %50
    i32 2, label %50
    i32 3, label %50
    i32 4, label %51
    i32 5, label %58
    i32 6, label %59
    i32 7, label %71
  ]

43:                                               ; preds = %37
  %44 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %6, align 8
  %45 = call i32 @mxms_version(%struct.nouveau_mxm* %44)
  %46 = icmp sge i32 %45, 768
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 8, i32* %14, align 4
  br label %49

48:                                               ; preds = %43
  store i32 6, i32* %14, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %80

50:                                               ; preds = %37, %37, %37
  store i32 4, i32* %14, align 4
  br label %80

51:                                               ; preds = %37
  store i32 4, i32* %14, align 4
  store i32 2, i32* %15, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ROM32(i32 %54)
  %56 = and i32 %55, 32505856
  %57 = ashr i32 %56, 20
  store i32 %57, i32* %16, align 4
  br label %80

58:                                               ; preds = %37
  store i32 8, i32* %14, align 4
  br label %80

59:                                               ; preds = %37
  %60 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %6, align 8
  %61 = call i32 @mxms_version(%struct.nouveau_mxm* %60)
  %62 = icmp sge i32 %61, 768
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  store i32 4, i32* %14, align 4
  store i32 8, i32* %15, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 240
  %68 = ashr i32 %67, 4
  store i32 %68, i32* %16, align 4
  br label %70

69:                                               ; preds = %59
  store i32 8, i32* %14, align 4
  br label %70

70:                                               ; preds = %69, %63
  br label %80

71:                                               ; preds = %37
  store i32 8, i32* %14, align 4
  store i32 4, i32* %15, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 7
  store i32 %75, i32* %16, align 4
  br label %80

76:                                               ; preds = %37
  %77 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %6, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 (%struct.nouveau_mxm*, i8*, ...) @nv_debug(%struct.nouveau_mxm* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %78)
  store i32 0, i32* %5, align 4
  br label %176

80:                                               ; preds = %71, %70, %58, %51, %50, %49
  %81 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %6, align 8
  %82 = call %struct.TYPE_2__* @nv_subdev(%struct.nouveau_mxm* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NV_DBG_DEBUG, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %151

87:                                               ; preds = %80
  %88 = load i32 (%struct.nouveau_mxm*, i32*, i8*)*, i32 (%struct.nouveau_mxm*, i32*, i8*)** %8, align 8
  %89 = icmp eq i32 (%struct.nouveau_mxm*, i32*, i8*)* %88, null
  br i1 %89, label %90, label %151

90:                                               ; preds = %87
  %91 = load i32*, i32** %11, align 8
  store i32* %91, i32** %17, align 8
  %92 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %6, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [8 x i8*], [8 x i8*]* @mxms_foreach.mxms_desc_name, i64 0, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (%struct.nouveau_mxm*, i8*, ...) @nv_debug(%struct.nouveau_mxm* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* %14, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %19, align 4
  br label %100

100:                                              ; preds = %110, %90
  %101 = load i32, i32* %19, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %19, align 4
  br label %100

113:                                              ; preds = %100
  %114 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %115 = load i32, i32* %14, align 4
  %116 = load i32*, i32** %17, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %17, align 8
  store i32 0, i32* %18, align 4
  br label %119

119:                                              ; preds = %143, %113
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %16, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %150

123:                                              ; preds = %119
  %124 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %6, align 8
  %125 = call i32 (%struct.nouveau_mxm*, i8*, ...) @nv_debug(%struct.nouveau_mxm* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %126 = load i32, i32* %15, align 4
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %19, align 4
  br label %128

128:                                              ; preds = %138, %123
  %129 = load i32, i32* %19, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i32*, i32** %17, align 8
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %19, align 4
  br label %128

141:                                              ; preds = %128
  %142 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32*, i32** %17, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %17, align 8
  br label %119

150:                                              ; preds = %119
  br label %151

151:                                              ; preds = %150, %87, %80
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %13, align 4
  %154 = shl i32 1, %153
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %151
  %158 = load i32 (%struct.nouveau_mxm*, i32*, i8*)*, i32 (%struct.nouveau_mxm*, i32*, i8*)** %8, align 8
  %159 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %6, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = call i32 %158(%struct.nouveau_mxm* %159, i32* %160, i8* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %157
  store i32 0, i32* %5, align 4
  br label %176

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165, %151
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %15, align 4
  %170 = mul nsw i32 %168, %169
  %171 = add nsw i32 %167, %170
  %172 = load i32*, i32** %11, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %11, align 8
  br label %33

175:                                              ; preds = %33
  store i32 1, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %164, %76
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32* @mxms_data(%struct.nouveau_mxm*) #1

declare dso_local i32 @mxms_headerlen(%struct.nouveau_mxm*) #1

declare dso_local i32 @mxms_structlen(%struct.nouveau_mxm*) #1

declare dso_local i32 @mxms_version(%struct.nouveau_mxm*) #1

declare dso_local i32 @ROM32(i32) #1

declare dso_local i32 @nv_debug(%struct.nouveau_mxm*, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @nv_subdev(%struct.nouveau_mxm*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
