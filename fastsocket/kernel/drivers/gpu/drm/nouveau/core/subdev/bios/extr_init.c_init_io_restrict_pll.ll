; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_io_restrict_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_io_restrict_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [89 x i8] c"IO_RESTRICT_PLL\09R[0x%06x] =PLL= ((0x%04x[0x%02x] & 0x%02x) >> 0x%02x) IOFCOND 0x%02x [{\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\09%dkHz *\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\09%dkHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"}]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_io_restrict_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_io_restrict_pll(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %14 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %15 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 1
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %15, align 8
  store %struct.nouveau_bios* %16, %struct.nouveau_bios** %3, align 8
  %17 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %18 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %19 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @nv_ro16(%struct.nouveau_bios* %17, i64 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 3
  %28 = call i8* @nv_ro08(%struct.nouveau_bios* %23, i64 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %31 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %32 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 4
  %35 = call i8* @nv_ro08(%struct.nouveau_bios* %30, i64 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %38 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %39 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 5
  %42 = call i8* @nv_ro08(%struct.nouveau_bios* %37, i64 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %45 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %46 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 6
  %49 = call i8* @nv_ro08(%struct.nouveau_bios* %44, i64 %48)
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* %8, align 8
  %51 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %52 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %53 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 7
  %56 = call i8* @nv_ro08(%struct.nouveau_bios* %51, i64 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %59 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %60 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 8
  %63 = call i32 @nv_ro32(%struct.nouveau_bios* %58, i64 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i64, i64* %8, align 8
  %70 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i64 %69)
  %71 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %72 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 12
  store i64 %74, i64* %72, align 8
  %75 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @init_rdvgai(%struct.nvbios_init* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %123, %1
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %83
  %88 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %89 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %90 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @nv_ro16(%struct.nouveau_bios* %88, i64 %91)
  %93 = mul nsw i32 %92, 10
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %87
  %98 = load i32, i32* %13, align 4
  %99 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i64, i64* %8, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @init_io_flag_condition_met(%struct.nvbios_init* %103, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %13, align 4
  %109 = mul nsw i32 %108, 2
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %107, %102, %97
  %111 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @init_prog_pll(%struct.nvbios_init* %111, i32 %112, i32 %113)
  br label %118

115:                                              ; preds = %87
  %116 = load i32, i32* %13, align 4
  %117 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %120 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 2
  store i64 %122, i64* %120, align 8
  br label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  br label %83

126:                                              ; preds = %83
  %127 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i64) #1

declare dso_local i8* @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i32, i32) #1

declare dso_local i64 @init_io_flag_condition_met(%struct.nvbios_init*, i64) #1

declare dso_local i32 @init_prog_pll(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
