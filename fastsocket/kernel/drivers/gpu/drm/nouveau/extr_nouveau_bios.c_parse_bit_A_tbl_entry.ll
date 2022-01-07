; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_A_tbl_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_A_tbl_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32*, i32 }
%struct.bit_entry = type { i32, i64 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Do not understand BIT A table\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Pointer to BIT loadval table invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"BIT loadval table version %d.%d not supported\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Do not understand BIT loadval table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*, %struct.bit_entry*)* @parse_bit_A_tbl_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bit_A_tbl_entry(%struct.drm_device* %0, %struct.nvbios* %1, %struct.bit_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nvbios*, align 8
  %7 = alloca %struct.bit_entry*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.nvbios* %1, %struct.nvbios** %6, align 8
  store %struct.bit_entry* %2, %struct.bit_entry** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %8, align 8
  %16 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %17 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %22 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %113

25:                                               ; preds = %3
  %26 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %27 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %30 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ROM16(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %39 = call i32 @NV_DEBUG(%struct.nouveau_drm* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %113

42:                                               ; preds = %25
  %43 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %44 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 16
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %54, 4
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 15
  %58 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %57)
  %59 = load i32, i32* @ENOSYS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %113

61:                                               ; preds = %42
  %62 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %63 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %71 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %79 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 4
  br i1 %87, label %94, label %88

88:                                               ; preds = %61
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 4
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 2
  br i1 %93, label %94, label %99

94:                                               ; preds = %91, %88, %61
  %95 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %96 = call i32 (%struct.nouveau_drm*, i8*, ...) @NV_ERROR(%struct.nouveau_drm* %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %113

99:                                               ; preds = %91
  %100 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %101 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ROM32(i32 %108)
  %110 = and i32 %109, 1023
  %111 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %112 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %99, %94, %52, %37, %20
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, ...) #1

declare dso_local i32 @ROM16(i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @ROM32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
