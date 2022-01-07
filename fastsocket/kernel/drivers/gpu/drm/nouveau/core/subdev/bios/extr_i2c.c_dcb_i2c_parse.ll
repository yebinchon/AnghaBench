; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_i2c.c_dcb_i2c_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_i2c.c_dcb_i2c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.dcb_i2c_entry = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"unknown i2c type %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_i2c_parse(%struct.nouveau_bios* %0, i32 %1, %struct.dcb_i2c_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcb_i2c_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dcb_i2c_entry* %2, %struct.dcb_i2c_entry** %7, align 8
  %11 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @dcb_i2c_entry(%struct.nouveau_bios* %11, i32 %12, i32* %8, i32* %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %100

16:                                               ; preds = %3
  %17 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, 3
  %20 = call i32 @nv_ro08(%struct.nouveau_bios* %17, i32 %19)
  %21 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %22 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %24 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %23, i32 0, i32 1
  store i32 128, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 48
  br i1 %26, label %27, label %40

27:                                               ; preds = %16
  %28 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %29 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 7
  store i32 %31, i32* %29, align 4
  %32 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %33 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 7
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %38 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %37, i32 0, i32 0
  store i32 128, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %27
  br label %40

40:                                               ; preds = %39, %16
  %41 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %42 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %92 [
    i32 132, label %44
    i32 131, label %57
    i32 129, label %64
    i32 130, label %64
    i32 128, label %91
  ]

44:                                               ; preds = %40
  %45 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 0
  %48 = call i32 @nv_ro08(%struct.nouveau_bios* %45, i32 %47)
  %49 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %50 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @nv_ro08(%struct.nouveau_bios* %51, i32 %53)
  %55 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %56 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %195

57:                                               ; preds = %40
  %58 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @nv_ro08(%struct.nouveau_bios* %58, i32 %60)
  %62 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %63 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %195

64:                                               ; preds = %40, %40
  %65 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 0
  %68 = call i32 @nv_ro08(%struct.nouveau_bios* %65, i32 %67)
  %69 = and i32 %68, 15
  %70 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %71 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @nv_ro08(%struct.nouveau_bios* %72, i32 %74)
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %64
  %79 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @nv_ro08(%struct.nouveau_bios* %79, i32 %81)
  %83 = ashr i32 %82, 1
  %84 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %85 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %87 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 15
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %78, %64
  store i32 0, i32* %4, align 4
  br label %195

91:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %195

92:                                               ; preds = %40
  %93 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %94 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %95 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @nv_warn(%struct.nouveau_bios* %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %99 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %98, i32 0, i32 0
  store i32 128, i32* %99, align 4
  store i32 0, i32* %4, align 4
  br label %195

100:                                              ; preds = %3
  %101 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %102 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %192

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %108, label %192

108:                                              ; preds = %105
  %109 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %110 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %111 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 5
  %114 = call i32 @nv_ro08(%struct.nouveau_bios* %109, i32 %113)
  %115 = icmp slt i32 %114, 4
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  store i32 72, i32* %10, align 4
  br label %122

117:                                              ; preds = %108
  %118 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %119 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 54, %120
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %117, %116
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %154

125:                                              ; preds = %122
  %126 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 4
  %129 = call i32 @nv_ro08(%struct.nouveau_bios* %126, i32 %128)
  %130 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %131 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %133 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %125
  %137 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %138 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %137, i32 0, i32 2
  store i32 63, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %125
  %140 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 5
  %143 = call i32 @nv_ro08(%struct.nouveau_bios* %140, i32 %142)
  %144 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %145 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %147 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %139
  %151 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %152 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %151, i32 0, i32 3
  store i32 62, i32* %152, align 4
  br label %153

153:                                              ; preds = %150, %139
  br label %187

154:                                              ; preds = %122
  %155 = load i32, i32* %6, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %186

157:                                              ; preds = %154
  %158 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 6
  %161 = call i32 @nv_ro08(%struct.nouveau_bios* %158, i32 %160)
  %162 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %163 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %165 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %157
  %169 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %170 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %169, i32 0, i32 2
  store i32 55, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %157
  %172 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 7
  %175 = call i32 @nv_ro08(%struct.nouveau_bios* %172, i32 %174)
  %176 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %177 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %179 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %171
  %183 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %184 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %183, i32 0, i32 3
  store i32 54, i32* %184, align 4
  br label %185

185:                                              ; preds = %182, %171
  br label %186

186:                                              ; preds = %185, %154
  br label %187

187:                                              ; preds = %186, %153
  %188 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %189 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %188, i32 0, i32 0
  store i32 132, i32* %189, align 4
  %190 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %7, align 8
  %191 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %190, i32 0, i32 1
  store i32 128, i32* %191, align 4
  store i32 0, i32* %4, align 4
  br label %195

192:                                              ; preds = %105, %100
  %193 = load i32, i32* @ENOENT, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %192, %187, %92, %91, %90, %57, %44
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @dcb_i2c_entry(%struct.nouveau_bios*, i32, i32*, i32*) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_warn(%struct.nouveau_bios*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
