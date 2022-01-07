; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nvc0.c_nvc0_fb_vram_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nvc0.c_nvc0_fb_vram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"0x100800: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"parts 0x%08x mask 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%d: mem_amount 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fb*)* @nvc0_fb_vram_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_fb_vram_init(%struct.nouveau_fb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_fb*, align 8
  %4 = alloca %struct.nouveau_bios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %3, align 8
  %16 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %17 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_fb* %16)
  store %struct.nouveau_bios* %17, %struct.nouveau_bios** %4, align 8
  store i32 64, i32* %5, align 4
  store i32 256, i32* %6, align 4
  %18 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %19 = call i32 @nv_rd32(%struct.nouveau_fb* %18, i32 140344)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %21 = call i32 @nv_rd32(%struct.nouveau_fb* %20, i32 140628)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %23 = call i32 @nv_rd32(%struct.nouveau_fb* %22, i32 1110540)
  store i32 %23, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %24 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %25 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %26 = call i32 @nv_rd32(%struct.nouveau_fb* %25, i32 1050624)
  %27 = call i32 (%struct.nouveau_fb*, i8*, i32, ...) @nv_debug(%struct.nouveau_fb* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (%struct.nouveau_fb*, i8*, i32, ...) @nv_debug(%struct.nouveau_fb* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %33 = call i32 @nouveau_fb_bios_memtype(%struct.nouveau_bios* %32)
  %34 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %35 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %38 = call i32 @nv_rd32(%struct.nouveau_fb* %37, i32 1110528)
  %39 = and i32 %38, 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 2, i32 1
  %43 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %44 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %85, %1
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %14, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %84, label %56

56:                                               ; preds = %50
  %57 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 %58, 4096
  %60 = add nsw i32 1114636, %59
  %61 = call i32 @nv_rd32(%struct.nouveau_fb* %57, i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %69, %65
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %71, %56
  %73 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 (%struct.nouveau_fb*, i8*, i32, ...) @nv_debug(%struct.nouveau_fb* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* %15, align 4
  %78 = shl i32 %77, 20
  %79 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %80 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %78
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %72, %50
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %46

88:                                               ; preds = %46
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  store i32 64, i32* %10, align 4
  %92 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %93 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 12
  %97 = sub nsw i32 %96, 64
  %98 = sub nsw i32 %97, 256
  store i32 %98, i32* %11, align 4
  %99 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %100 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %99, i32 0, i32 0
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @nouveau_mm_init(i32* %100, i32 %101, i32 %102, i32 1)
  store i32 %103, i32* %2, align 4
  br label %144

104:                                              ; preds = %88
  %105 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %106 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %105, i32 0, i32 0
  %107 = load i32, i32* %9, align 4
  %108 = shl i32 %107, 8
  %109 = load i32, i32* %7, align 4
  %110 = mul nsw i32 %108, %109
  %111 = call i32 @nouveau_mm_init(i32* %106, i32 64, i32 %110, i32 1)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %2, align 4
  br label %144

116:                                              ; preds = %104
  %117 = load i32, i32* %9, align 4
  %118 = shl i32 %117, 8
  %119 = sext i32 %118 to i64
  %120 = add i64 2097152, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %10, align 4
  %122 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %123 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 12
  %127 = load i32, i32* %9, align 4
  %128 = shl i32 %127, 8
  %129 = sub nsw i32 %126, %128
  %130 = sub nsw i32 %129, 256
  store i32 %130, i32* %11, align 4
  %131 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %132 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %131, i32 0, i32 0
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @nouveau_mm_init(i32* %132, i32 %133, i32 %134, i32 0)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %116
  %139 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %140 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %139, i32 0, i32 0
  %141 = call i32 @nouveau_mm_fini(i32* %140)
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %2, align 4
  br label %144

143:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %138, %114, %91
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_fb*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_fb*, i32) #1

declare dso_local i32 @nv_debug(%struct.nouveau_fb*, i8*, i32, ...) #1

declare dso_local i32 @nouveau_fb_bios_memtype(%struct.nouveau_bios*) #1

declare dso_local i32 @nouveau_mm_init(i32*, i32, i32, i32) #1

declare dso_local i32 @nouveau_mm_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
