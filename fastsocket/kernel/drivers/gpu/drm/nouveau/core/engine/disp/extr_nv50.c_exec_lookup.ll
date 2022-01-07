; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_exec_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_exec_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.dcb_output = type { i64, i32 }
%struct.nvbios_outp = type { i32 }
%struct.nouveau_bios = type { i32 }

@DCB_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@DCB_OUTPUT_LVDS = common dso_local global i32 0, align 4
@DCB_OUTPUT_TMDS = common dso_local global i32 0, align 4
@DCB_OUTPUT_DP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown SOR mc 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown PIOR mc 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_disp_priv*, i32, i32, i32, %struct.dcb_output*, i32*, i32*, i32*, i32*, %struct.nvbios_outp*)* @exec_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_lookup(%struct.nv50_disp_priv* %0, i32 %1, i32 %2, i32 %3, %struct.dcb_output* %4, i32* %5, i32* %6, i32* %7, i32* %8, %struct.nvbios_outp* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nv50_disp_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dcb_output*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.nvbios_outp*, align 8
  %22 = alloca %struct.nouveau_bios*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.nv50_disp_priv* %0, %struct.nv50_disp_priv** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store %struct.dcb_output* %4, %struct.dcb_output** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store %struct.nvbios_outp* %9, %struct.nvbios_outp** %21, align 8
  %26 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %12, align 8
  %27 = call %struct.nouveau_bios* @nouveau_bios(%struct.nv50_disp_priv* %26)
  store %struct.nouveau_bios* %27, %struct.nouveau_bios** %22, align 8
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %32

30:                                               ; preds = %10
  %31 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  store i32 %31, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %79

32:                                               ; preds = %10
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load i32, i32* %15, align 4
  %37 = and i32 %36, 3840
  switch i32 %37, label %50 [
    i32 0, label %38
    i32 256, label %40
    i32 512, label %42
    i32 1280, label %44
    i32 2048, label %46
    i32 2304, label %48
  ]

38:                                               ; preds = %35
  %39 = load i32, i32* @DCB_OUTPUT_LVDS, align 4
  store i32 %39, i32* %24, align 4
  store i32 1, i32* %23, align 4
  br label %54

40:                                               ; preds = %35
  %41 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  store i32 %41, i32* %24, align 4
  store i32 1, i32* %23, align 4
  br label %54

42:                                               ; preds = %35
  %43 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  store i32 %43, i32* %24, align 4
  store i32 2, i32* %23, align 4
  br label %54

44:                                               ; preds = %35
  %45 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  store i32 %45, i32* %24, align 4
  store i32 3, i32* %23, align 4
  br label %54

46:                                               ; preds = %35
  %47 = load i32, i32* @DCB_OUTPUT_DP, align 4
  store i32 %47, i32* %24, align 4
  store i32 1, i32* %23, align 4
  br label %54

48:                                               ; preds = %35
  %49 = load i32, i32* @DCB_OUTPUT_DP, align 4
  store i32 %49, i32* %24, align 4
  store i32 2, i32* %23, align 4
  br label %54

50:                                               ; preds = %35
  %51 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %12, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @nv_error(%struct.nv50_disp_priv* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 0, i32* %11, align 4
  br label %123

54:                                               ; preds = %48, %46, %44, %42, %40, %38
  %55 = load i32, i32* %14, align 4
  %56 = sub nsw i32 %55, 4
  store i32 %56, i32* %14, align 4
  br label %78

57:                                               ; preds = %32
  %58 = load i32, i32* %14, align 4
  %59 = sub nsw i32 %58, 8
  store i32 %59, i32* %14, align 4
  store i32 16, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %60 = load i32, i32* %15, align 4
  %61 = and i32 %60, 3840
  switch i32 %61, label %73 [
    i32 0, label %62
  ]

62:                                               ; preds = %57
  %63 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %12, align 8
  %64 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %24, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %24, align 4
  br label %77

73:                                               ; preds = %57
  %74 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %12, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @nv_error(%struct.nv50_disp_priv* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  store i32 0, i32* %11, align 4
  br label %123

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %54
  br label %79

79:                                               ; preds = %78, %30
  %80 = load i32, i32* %23, align 4
  %81 = shl i32 %80, 6
  %82 = and i32 192, %81
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* %14, align 4
  %84 = shl i32 1, %83
  %85 = load i32, i32* %23, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %13, align 4
  %88 = shl i32 256, %87
  %89 = load i32, i32* %23, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %23, align 4
  %91 = load %struct.nouveau_bios*, %struct.nouveau_bios** %22, align 8
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* %23, align 4
  %94 = load i32*, i32** %17, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = load %struct.dcb_output*, %struct.dcb_output** %16, align 8
  %97 = call i32 @dcb_outp_match(%struct.nouveau_bios* %91, i32 %92, i32 %93, i32* %94, i32* %95, %struct.dcb_output* %96)
  store i32 %97, i32* %25, align 4
  %98 = load i32, i32* %25, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %79
  store i32 0, i32* %11, align 4
  br label %123

101:                                              ; preds = %79
  %102 = load %struct.dcb_output*, %struct.dcb_output** %16, align 8
  %103 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.dcb_output*, %struct.dcb_output** %16, align 8
  %108 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 8
  %111 = load i32, i32* %24, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %24, align 4
  br label %113

113:                                              ; preds = %106, %101
  %114 = load %struct.nouveau_bios*, %struct.nouveau_bios** %22, align 8
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %23, align 4
  %117 = load i32*, i32** %17, align 8
  %118 = load i32*, i32** %18, align 8
  %119 = load i32*, i32** %19, align 8
  %120 = load i32*, i32** %20, align 8
  %121 = load %struct.nvbios_outp*, %struct.nvbios_outp** %21, align 8
  %122 = call i32 @nvbios_outp_match(%struct.nouveau_bios* %114, i32 %115, i32 %116, i32* %117, i32* %118, i32* %119, i32* %120, %struct.nvbios_outp* %121)
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %113, %100, %73, %50
  %124 = load i32, i32* %11, align 4
  ret i32 %124
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nv50_disp_priv*) #1

declare dso_local i32 @nv_error(%struct.nv50_disp_priv*, i8*, i32) #1

declare dso_local i32 @dcb_outp_match(%struct.nouveau_bios*, i32, i32, i32*, i32*, %struct.dcb_output*) #1

declare dso_local i32 @nvbios_outp_match(%struct.nouveau_bios*, i32, i32, i32*, i32*, i32*, i32*, %struct.nvbios_outp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
