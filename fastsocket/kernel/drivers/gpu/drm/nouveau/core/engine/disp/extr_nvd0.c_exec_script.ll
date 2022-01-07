; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_exec_script.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_exec_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_priv = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_outp = type { i32* }
%struct.dcb_output = type { i32 }
%struct.nvbios_init = type { i32, i32, %struct.dcb_output*, i32, %struct.nouveau_bios*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_disp_priv*, i32, i32)* @exec_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_script(%struct.nv50_disp_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_disp_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_bios*, align 8
  %9 = alloca %struct.nvbios_outp, align 8
  %10 = alloca %struct.dcb_output, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.nvbios_init, align 8
  store %struct.nv50_disp_priv* %0, %struct.nv50_disp_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %20 = call %struct.nouveau_bios* @nouveau_bios(%struct.nv50_disp_priv* %19)
  store %struct.nouveau_bios* %20, %struct.nouveau_bios** %8, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %21

21:                                               ; preds = %45, %3
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %17, align 4
  %29 = icmp slt i32 %28, 8
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i1 [ false, %21 ], [ %29, %27 ]
  br i1 %31, label %32, label %48

32:                                               ; preds = %30
  %33 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %34 = load i32, i32* %17, align 4
  %35 = mul nsw i32 %34, 32
  %36 = add nsw i32 6553984, %35
  %37 = call i32 @nv_rd32(%struct.nv50_disp_priv* %33, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %48

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %17, align 4
  br label %21

48:                                               ; preds = %43, %30
  %49 = load i32, i32* %17, align 4
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %81

52:                                               ; preds = %48
  %53 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i64 @exec_lookup(%struct.nv50_disp_priv* %53, i32 %54, i32 %55, i32 %56, %struct.dcb_output* %10, i32* %11, i32* %12, i32* %13, i32* %14, %struct.nvbios_outp* %9)
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %16, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 0
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 2
  store %struct.dcb_output* %10, %struct.dcb_output** %64, align 8
  %65 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 3
  %66 = getelementptr inbounds %struct.nvbios_outp, %struct.nvbios_outp* %9, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %65, align 8
  %72 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 4
  %73 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  store %struct.nouveau_bios* %73, %struct.nouveau_bios** %72, align 8
  %74 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 5
  %75 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %5, align 8
  %76 = call i32 @nv_subdev(%struct.nv50_disp_priv* %75)
  store i32 %76, i32* %74, align 8
  %77 = call i64 @nvbios_exec(%struct.nvbios_init* %18)
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %60, %51
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nv50_disp_priv*) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local i64 @exec_lookup(%struct.nv50_disp_priv*, i32, i32, i32, %struct.dcb_output*, i32*, i32*, i32*, i32*, %struct.nvbios_outp*) #1

declare dso_local i32 @nv_subdev(%struct.nv50_disp_priv*) #1

declare dso_local i64 @nvbios_exec(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
