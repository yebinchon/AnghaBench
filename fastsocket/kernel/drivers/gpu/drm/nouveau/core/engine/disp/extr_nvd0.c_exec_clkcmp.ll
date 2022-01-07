; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_exec_clkcmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_exec_clkcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dcb_output = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_outp = type { i32 }
%struct.nvbios_ocfg = type { i32* }
%struct.nvbios_init = type { i32, i32, i32, %struct.dcb_output*, %struct.nouveau_bios*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_disp_priv*, i32, i32, i32, %struct.dcb_output*)* @exec_clkcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_clkcmp(%struct.nv50_disp_priv* %0, i32 %1, i32 %2, i32 %3, %struct.dcb_output* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_disp_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dcb_output*, align 8
  %12 = alloca %struct.nouveau_bios*, align 8
  %13 = alloca %struct.nvbios_outp, align 4
  %14 = alloca %struct.nvbios_ocfg, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.nvbios_init, align 8
  store %struct.nv50_disp_priv* %0, %struct.nv50_disp_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dcb_output* %4, %struct.dcb_output** %11, align 8
  %24 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %25 = call %struct.nouveau_bios* @nouveau_bios(%struct.nv50_disp_priv* %24)
  store %struct.nouveau_bios* %25, %struct.nouveau_bios** %12, align 8
  store i32 0, i32* %19, align 4
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %26

26:                                               ; preds = %50, %5
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %22, align 4
  %34 = icmp slt i32 %33, 8
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i1 [ false, %26 ], [ %34, %32 ]
  br i1 %36, label %37, label %53

37:                                               ; preds = %35
  %38 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %39 = load i32, i32* %22, align 4
  %40 = mul nsw i32 %39, 32
  %41 = add nsw i32 6685056, %40
  %42 = call i32 @nv_rd32(%struct.nv50_disp_priv* %38, i32 %41)
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %53

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %22, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %22, align 4
  br label %26

53:                                               ; preds = %48, %35
  %54 = load i32, i32* %22, align 4
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %132

57:                                               ; preds = %53
  %58 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load %struct.dcb_output*, %struct.dcb_output** %11, align 8
  %63 = call i32 @exec_lookup(%struct.nv50_disp_priv* %58, i32 %59, i32 %60, i32 %61, %struct.dcb_output* %62, i32* %15, i32* %16, i32* %17, i32* %18, %struct.nvbios_outp* %13)
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %21, align 4
  store i32 %67, i32* %6, align 4
  br label %132

68:                                               ; preds = %57
  %69 = load %struct.dcb_output*, %struct.dcb_output** %11, align 8
  %70 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %92 [
    i32 128, label %72
    i32 129, label %82
    i32 130, label %87
    i32 131, label %91
  ]

72:                                               ; preds = %68
  %73 = load i32, i32* %19, align 4
  %74 = and i32 %73, 3840
  %75 = ashr i32 %74, 8
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sge i32 %76, 165000
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %21, align 4
  %80 = or i32 %79, 256
  store i32 %80, i32* %21, align 4
  br label %81

81:                                               ; preds = %78, %72
  br label %93

82:                                               ; preds = %68
  %83 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %84 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %21, align 4
  br label %93

87:                                               ; preds = %68
  %88 = load i32, i32* %19, align 4
  %89 = and i32 %88, 3840
  %90 = ashr i32 %89, 8
  store i32 %90, i32* %21, align 4
  br label %93

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %68, %91
  store i32 255, i32* %21, align 4
  br label %93

93:                                               ; preds = %92, %87, %82, %81
  %94 = load %struct.nouveau_bios*, %struct.nouveau_bios** %12, align 8
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %21, align 4
  %97 = call i32 @nvbios_ocfg_match(%struct.nouveau_bios* %94, i32 %95, i32 %96, i32* %15, i32* %16, i32* %17, i32* %18, %struct.nvbios_ocfg* %14)
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 255
  br i1 %102, label %103, label %130

103:                                              ; preds = %100
  %104 = load %struct.nouveau_bios*, %struct.nouveau_bios** %12, align 8
  %105 = getelementptr inbounds %struct.nvbios_ocfg, %struct.nvbios_ocfg* %14, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @nvbios_oclk_match(%struct.nouveau_bios* %104, i32 %110, i32 %111)
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %20, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 0
  %117 = load i32, i32* %20, align 4
  store i32 %117, i32* %116, align 8
  %118 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 1
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %118, align 4
  %120 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 2
  store i32 1, i32* %120, align 8
  %121 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 3
  %122 = load %struct.dcb_output*, %struct.dcb_output** %11, align 8
  store %struct.dcb_output* %122, %struct.dcb_output** %121, align 8
  %123 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 4
  %124 = load %struct.nouveau_bios*, %struct.nouveau_bios** %12, align 8
  store %struct.nouveau_bios* %124, %struct.nouveau_bios** %123, align 8
  %125 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 5
  %126 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %127 = call i32 @nv_subdev(%struct.nv50_disp_priv* %126)
  store i32 %127, i32* %125, align 8
  %128 = call i32 @nvbios_exec(%struct.nvbios_init* %23)
  br label %129

129:                                              ; preds = %115, %103
  br label %130

130:                                              ; preds = %129, %100, %93
  %131 = load i32, i32* %21, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %66, %56
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nv50_disp_priv*) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i32 @exec_lookup(%struct.nv50_disp_priv*, i32, i32, i32, %struct.dcb_output*, i32*, i32*, i32*, i32*, %struct.nvbios_outp*) #1

declare dso_local i32 @nvbios_ocfg_match(%struct.nouveau_bios*, i32, i32, i32*, i32*, i32*, i32*, %struct.nvbios_ocfg*) #1

declare dso_local i32 @nvbios_oclk_match(%struct.nouveau_bios*, i32, i32) #1

declare dso_local i32 @nv_subdev(%struct.nv50_disp_priv*) #1

declare dso_local i32 @nvbios_exec(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
