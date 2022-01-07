; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_exec_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_exec_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_priv = type { i32 }
%struct.dcb_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvbios_outp = type { i32 }
%struct.nouveau_bios = type { i32 }

@DCB_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@DCB_OUTPUT_LVDS = common dso_local global i32 0, align 4
@DCB_OUTPUT_TMDS = common dso_local global i32 0, align 4
@DCB_OUTPUT_DP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown SOR mc 0x%08x\0A\00", align 1
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
  br label %58

32:                                               ; preds = %10
  %33 = load i32, i32* %14, align 4
  %34 = sub nsw i32 %33, 4
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = and i32 %35, 3840
  switch i32 %36, label %49 [
    i32 0, label %37
    i32 256, label %39
    i32 512, label %41
    i32 1280, label %43
    i32 2048, label %45
    i32 2304, label %47
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @DCB_OUTPUT_LVDS, align 4
  store i32 %38, i32* %24, align 4
  store i32 1, i32* %23, align 4
  br label %53

39:                                               ; preds = %32
  %40 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  store i32 %40, i32* %24, align 4
  store i32 1, i32* %23, align 4
  br label %53

41:                                               ; preds = %32
  %42 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  store i32 %42, i32* %24, align 4
  store i32 2, i32* %23, align 4
  br label %53

43:                                               ; preds = %32
  %44 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  store i32 %44, i32* %24, align 4
  store i32 3, i32* %23, align 4
  br label %53

45:                                               ; preds = %32
  %46 = load i32, i32* @DCB_OUTPUT_DP, align 4
  store i32 %46, i32* %24, align 4
  store i32 1, i32* %23, align 4
  br label %53

47:                                               ; preds = %32
  %48 = load i32, i32* @DCB_OUTPUT_DP, align 4
  store i32 %48, i32* %24, align 4
  store i32 2, i32* %23, align 4
  br label %53

49:                                               ; preds = %32
  %50 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %12, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @nv_error(%struct.nv50_disp_priv* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %11, align 4
  br label %90

53:                                               ; preds = %47, %45, %43, %41, %39, %37
  %54 = load i32, i32* %23, align 4
  %55 = load %struct.dcb_output*, %struct.dcb_output** %16, align 8
  %56 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %30
  %59 = load i32, i32* %23, align 4
  %60 = shl i32 %59, 6
  %61 = and i32 192, %60
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %14, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %23, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %13, align 4
  %67 = shl i32 256, %66
  %68 = load i32, i32* %23, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %23, align 4
  %70 = load %struct.nouveau_bios*, %struct.nouveau_bios** %22, align 8
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %23, align 4
  %73 = load i32*, i32** %17, align 8
  %74 = load i32*, i32** %18, align 8
  %75 = load %struct.dcb_output*, %struct.dcb_output** %16, align 8
  %76 = call i32 @dcb_outp_match(%struct.nouveau_bios* %70, i32 %71, i32 %72, i32* %73, i32* %74, %struct.dcb_output* %75)
  store i32 %76, i32* %25, align 4
  %77 = load i32, i32* %25, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %90

80:                                               ; preds = %58
  %81 = load %struct.nouveau_bios*, %struct.nouveau_bios** %22, align 8
  %82 = load i32, i32* %24, align 4
  %83 = load i32, i32* %23, align 4
  %84 = load i32*, i32** %17, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = load i32*, i32** %19, align 8
  %87 = load i32*, i32** %20, align 8
  %88 = load %struct.nvbios_outp*, %struct.nvbios_outp** %21, align 8
  %89 = call i32 @nvbios_outp_match(%struct.nouveau_bios* %81, i32 %82, i32 %83, i32* %84, i32* %85, i32* %86, i32* %87, %struct.nvbios_outp* %88)
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %80, %79, %49
  %91 = load i32, i32* %11, align 4
  ret i32 %91
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
