; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_tmds_tbl_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_tmds_tbl_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.bit_entry = type { i32, i64 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Do not understand BIT TMDS table\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Pointer to TMDS table invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"TMDS table version %d.%d\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"TMDS table script pointers not stubbed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*, %struct.bit_entry*)* @parse_bit_tmds_tbl_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bit_tmds_tbl_entry(%struct.drm_device* %0, %struct.nvbios* %1, %struct.bit_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nvbios*, align 8
  %7 = alloca %struct.bit_entry*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.nvbios* %1, %struct.nvbios** %6, align 8
  store %struct.bit_entry* %2, %struct.bit_entry** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %8, align 8
  %14 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %15 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %20 = call i32 @NV_ERROR(%struct.nouveau_drm* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %128

23:                                               ; preds = %3
  %24 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %25 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %28 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @ROM16(i32 %31)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %23
  %37 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %38 = call i32 @NV_ERROR(%struct.nouveau_drm* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %128

41:                                               ; preds = %23
  %42 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %43 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %44 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 4
  %50 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %51 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 15
  %57 = call i32 @NV_INFO(%struct.nouveau_drm* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %56)
  %58 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %59 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 17
  br i1 %64, label %65, label %68

65:                                               ; preds = %41
  %66 = load i32, i32* @ENOSYS, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %128

68:                                               ; preds = %41
  %69 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %70 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 7
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @ROM16(i32 %75)
  %77 = ptrtoint i8* %76 to i64
  store i64 %77, i64* %10, align 8
  %78 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %79 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 9
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @ROM16(i32 %84)
  %86 = ptrtoint i8* %85 to i64
  store i64 %86, i64* %11, align 8
  %87 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %88 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 113
  br i1 %93, label %102, label %94

94:                                               ; preds = %68
  %95 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %96 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 113
  br i1 %101, label %102, label %105

102:                                              ; preds = %94, %68
  %103 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %104 = call i32 @NV_WARN(%struct.nouveau_drm* %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %94
  %106 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %107 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %109, 11
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @ROM16(i32 %112)
  %114 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %115 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  %117 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %118 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, 13
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @ROM16(i32 %123)
  %125 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %126 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i8* %124, i8** %127, align 8
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %105, %65, %36, %18
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*) #1

declare dso_local i8* @ROM16(i32) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
