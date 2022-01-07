; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv50.c_nv50_devinit_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv50.c_nv50_devinit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nv50_devinit_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvbios_outp = type { i32* }
%struct.dcb_output = type { i32, i32 }
%struct.nvbios_init = type { i32, i32, %struct.dcb_output*, i32, %struct.nouveau_bios*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"adaptor not initialised\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nv50_devinit_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_devinit_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_bios*, align 8
  %5 = alloca %struct.nv50_devinit_priv*, align 8
  %6 = alloca %struct.nvbios_outp, align 8
  %7 = alloca %struct.dcb_output, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvbios_init, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %16 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_object* %15)
  store %struct.nouveau_bios* %16, %struct.nouveau_bios** %4, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %18 = bitcast %struct.nouveau_object* %17 to i8*
  %19 = bitcast i8* %18 to %struct.nv50_devinit_priv*
  store %struct.nv50_devinit_priv* %19, %struct.nv50_devinit_priv** %5, align 8
  store i32 255, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.nv50_devinit_priv*, %struct.nv50_devinit_priv** %5, align 8
  %21 = getelementptr inbounds %struct.nv50_devinit_priv, %struct.nv50_devinit_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %1
  %26 = load %struct.nv50_devinit_priv*, %struct.nv50_devinit_priv** %5, align 8
  %27 = call i32 @nv_rdvgac(%struct.nv50_devinit_priv* %26, i32 0, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load %struct.nv50_devinit_priv*, %struct.nv50_devinit_priv** %5, align 8
  %31 = call i32 @nv_rdvgac(%struct.nv50_devinit_priv* %30, i32 0, i32 26)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.nv50_devinit_priv*, %struct.nv50_devinit_priv** %5, align 8
  %35 = call i32 @nv_info(%struct.nv50_devinit_priv* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.nv50_devinit_priv*, %struct.nv50_devinit_priv** %5, align 8
  %37 = getelementptr inbounds %struct.nv50_devinit_priv, %struct.nv50_devinit_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %29, %25
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.nv50_devinit_priv*, %struct.nv50_devinit_priv** %5, align 8
  %42 = getelementptr inbounds %struct.nv50_devinit_priv, %struct.nv50_devinit_priv* %41, i32 0, i32 0
  %43 = call i32 @nouveau_devinit_init(%struct.TYPE_2__* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %2, align 4
  br label %89

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %85, %48
  %50 = load %struct.nv50_devinit_priv*, %struct.nv50_devinit_priv** %5, align 8
  %51 = getelementptr inbounds %struct.nv50_devinit_priv, %struct.nv50_devinit_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @dcb_outp_parse(%struct.nouveau_bios* %56, i32 %57, i32* %8, i32* %9, %struct.dcb_output* %7)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %55, %49
  %61 = phi i1 [ false, %49 ], [ %59, %55 ]
  br i1 %61, label %62, label %88

62:                                               ; preds = %60
  %63 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %64 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @nvbios_outp_match(%struct.nouveau_bios* %63, i32 %65, i32 %67, i32* %8, i32* %9, i32* %10, i32* %11, %struct.nvbios_outp* %6)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 0
  store i32 -1, i32* %71, align 8
  %72 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 2
  store %struct.dcb_output* %7, %struct.dcb_output** %73, align 8
  %74 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 3
  %75 = getelementptr inbounds %struct.nvbios_outp, %struct.nvbios_outp* %6, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %74, align 8
  %79 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 4
  %80 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  store %struct.nouveau_bios* %80, %struct.nouveau_bios** %79, align 8
  %81 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %14, i32 0, i32 5
  %82 = load %struct.nv50_devinit_priv*, %struct.nv50_devinit_priv** %5, align 8
  %83 = call i32 @nv_subdev(%struct.nv50_devinit_priv* %82)
  store i32 %83, i32* %81, align 8
  %84 = call i32 @nvbios_exec(%struct.nvbios_init* %14)
  br label %85

85:                                               ; preds = %70, %62
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %49

88:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %46
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_object*) #1

declare dso_local i32 @nv_rdvgac(%struct.nv50_devinit_priv*, i32, i32) #1

declare dso_local i32 @nv_info(%struct.nv50_devinit_priv*, i8*) #1

declare dso_local i32 @nouveau_devinit_init(%struct.TYPE_2__*) #1

declare dso_local i64 @dcb_outp_parse(%struct.nouveau_bios*, i32, i32*, i32*, %struct.dcb_output*) #1

declare dso_local i64 @nvbios_outp_match(%struct.nouveau_bios*, i32, i32, i32*, i32*, i32*, i32*, %struct.nvbios_outp*) #1

declare dso_local i32 @nv_subdev(%struct.nv50_devinit_priv*) #1

declare dso_local i32 @nvbios_exec(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
