; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dcb.c_dcb_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_dcb.c_dcb_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.nouveau_device = type { i64 }

@NV_04 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"DCB table not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DCB version 0x%02x unknown\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DEV_REC\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"DCB contains no useful data\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"DCB header validation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_table(%struct.nouveau_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_bios*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nouveau_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %17 = call %struct.nouveau_device* @nv_device(%struct.nouveau_bios* %16)
  store %struct.nouveau_device* %17, %struct.nouveau_device** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.nouveau_device*, %struct.nouveau_device** %12, align 8
  %19 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NV_04, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %25 = call i32 @nv_ro16(%struct.nouveau_bios* %24, i32 54)
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %23, %5
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %31 = call i32 (%struct.nouveau_bios*, i8*, ...) @nv_warn(%struct.nouveau_bios* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %131

33:                                               ; preds = %26
  %34 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @nv_ro08(%struct.nouveau_bios* %34, i32 %35)
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 65
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.nouveau_bios*, i8*, ...) @nv_warn(%struct.nouveau_bios* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 0, i32* %6, align 4
  br label %131

46:                                               ; preds = %33
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 6
  %54 = call i32 @nv_ro32(%struct.nouveau_bios* %51, i32 %53)
  %55 = icmp eq i32 %54, 1323089355
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @nv_ro08(%struct.nouveau_bios* %57, i32 %59)
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 2
  %65 = call i32 @nv_ro08(%struct.nouveau_bios* %62, i32 %64)
  %66 = load i32*, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 3
  %70 = call i32 @nv_ro08(%struct.nouveau_bios* %67, i32 %69)
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %6, align 4
  br label %131

73:                                               ; preds = %50
  br label %127

74:                                               ; preds = %46
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 32
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 4
  %82 = call i32 @nv_ro32(%struct.nouveau_bios* %79, i32 %81)
  %83 = icmp eq i32 %82, 1323089355
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 2
  %88 = call i32 @nv_ro16(%struct.nouveau_bios* %85, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 8, i32* %89, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %13, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sdiv i32 %92, 8
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** %11, align 8
  store i32 8, i32* %95, align 4
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %6, align 4
  br label %131

97:                                               ; preds = %78
  br label %126

98:                                               ; preds = %74
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp sge i32 %100, 21
  br i1 %101, label %102, label %122

102:                                              ; preds = %98
  %103 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %104, 7
  %106 = call i32 @nv_memcmp(%struct.nouveau_bios* %103, i32 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %102
  %109 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 2
  %112 = call i32 @nv_ro16(%struct.nouveau_bios* %109, i32 %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32*, i32** %9, align 8
  store i32 4, i32* %113, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 %114, %115
  %117 = sdiv i32 %116, 10
  %118 = load i32*, i32** %10, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32*, i32** %11, align 8
  store i32 10, i32* %119, align 4
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %6, align 4
  br label %131

121:                                              ; preds = %102
  br label %125

122:                                              ; preds = %98
  %123 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %124 = call i32 (%struct.nouveau_bios*, i8*, ...) @nv_warn(%struct.nouveau_bios* %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %131

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %97
  br label %127

127:                                              ; preds = %126, %73
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  %130 = call i32 (%struct.nouveau_bios*, i8*, ...) @nv_warn(%struct.nouveau_bios* %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %128, %122, %108, %84, %56, %41, %29
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_bios*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_warn(%struct.nouveau_bios*, i8*, ...) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_memcmp(%struct.nouveau_bios*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
