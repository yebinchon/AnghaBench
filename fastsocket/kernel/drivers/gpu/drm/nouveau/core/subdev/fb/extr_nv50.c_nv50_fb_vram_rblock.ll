; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv50.c_nv50_fb_vram_rblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv50.c_nv50_fb_vram_rblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"memcfg 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"memory controller reports %d MiB VRAM\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rblock %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fb*)* @nv50_fb_vram_rblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fb_vram_rblock(%struct.nouveau_fb* %0) #0 {
  %2 = alloca %struct.nouveau_fb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %2, align 8
  %16 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %17 = call i32 @nv_rd32(%struct.nouveau_fb* %16, i32 1049088)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %19 = call i32 @nv_rd32(%struct.nouveau_fb* %18, i32 1049092)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %21 = call i32 @nv_rd32(%struct.nouveau_fb* %20, i32 1049168)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %23 = call i32 @nv_rd32(%struct.nouveau_fb* %22, i32 5440)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 (%struct.nouveau_fb*, i8*, i32, ...) @nv_debug(%struct.nouveau_fb* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %43, %1
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 65536, %35
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load i32, i32* %12, align 4
  %48 = and i32 %47, 61440
  %49 = ashr i32 %48, 12
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %12, align 4
  %51 = and i32 %50, 983040
  %52 = ashr i32 %51, 16
  %53 = add nsw i32 %52, 8
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 15728640
  %56 = ashr i32 %55, 20
  %57 = add nsw i32 %56, 8
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 50331648
  %60 = ashr i32 %59, 24
  %61 = add nsw i32 %60, 2
  %62 = shl i32 1, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = shl i32 1, %66
  %68 = mul nsw i32 %65, %67
  %69 = mul nsw i32 %68, 8
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %6, align 4
  %72 = shl i32 %70, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %46
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %76, %46
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %85 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %83, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %91 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %92 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 20
  %96 = call i32 @nv_warn(%struct.nouveau_fb* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %89, %82
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %15, align 4
  %104 = mul nsw i32 %103, 3
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.nouveau_fb*, %struct.nouveau_fb** %2, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i32 (%struct.nouveau_fb*, i8*, i32, ...) @nv_debug(%struct.nouveau_fb* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %15, align 4
  ret i32 %109
}

declare dso_local i32 @nv_rd32(%struct.nouveau_fb*, i32) #1

declare dso_local i32 @nv_debug(%struct.nouveau_fb*, i8*, i32, ...) #1

declare dso_local i32 @nv_warn(%struct.nouveau_fb*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
