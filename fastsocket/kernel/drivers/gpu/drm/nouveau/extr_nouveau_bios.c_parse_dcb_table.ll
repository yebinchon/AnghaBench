; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_dcb_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_dcb_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i64, %struct.dcb_table }
%struct.dcb_table = type { i32, i32 }
%struct.nouveau_drm = type { i32 }

@NVBIOS_BMP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DCB version %d.%d\0A\00", align 1
@parse_dcb_entry = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"DCB conn %02d: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*)* @parse_dcb_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dcb_table(%struct.drm_device* %0, %struct.nvbios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.dcb_table*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.nvbios* %1, %struct.nvbios** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %11)
  store %struct.nouveau_drm* %12, %struct.nouveau_drm** %6, align 8
  %13 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %14 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %13, i32 0, i32 1
  store %struct.dcb_table* %14, %struct.dcb_table** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call i32* @olddcb_table(%struct.drm_device* %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %2
  %20 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %21 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NVBIOS_BMP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %28 = call i32 @fabricate_dcb_encoder_table(%struct.drm_device* %26, %struct.nvbios* %27)
  store i32 0, i32* %3, align 4
  br label %105

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %105

32:                                               ; preds = %2
  %33 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  %42 = call i32 (%struct.nouveau_drm*, i8*, i32, ...) @NV_INFO(%struct.nouveau_drm* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dcb_table*, %struct.dcb_table** %7, align 8
  %47 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %49 = load i32, i32* @parse_dcb_entry, align 4
  %50 = call i32 @olddcb_outp_foreach(%struct.drm_device* %48, i32* null, i32 %49)
  %51 = load %struct.dcb_table*, %struct.dcb_table** %7, align 8
  %52 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 33
  br i1 %54, label %55, label %59

55:                                               ; preds = %32
  %56 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %57 = load %struct.dcb_table*, %struct.dcb_table** %7, align 8
  %58 = call i32 @merge_like_dcb_entries(%struct.drm_device* %56, %struct.dcb_table* %57)
  br label %59

59:                                               ; preds = %55, %32
  %60 = load %struct.dcb_table*, %struct.dcb_table** %7, align 8
  %61 = getelementptr inbounds %struct.dcb_table, %struct.dcb_table* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @ENXIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %105

67:                                               ; preds = %59
  store i32 -1, i32* %10, align 4
  br label %68

68:                                               ; preds = %101, %67
  %69 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = call i32* @olddcb_conn(%struct.drm_device* %69, i32 %71)
  store i32* %72, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %102

74:                                               ; preds = %68
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 255
  br i1 %78, label %79, label %101

79:                                               ; preds = %74
  %80 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (%struct.nouveau_drm*, i8*, i32, ...) @NV_INFO(%struct.nouveau_drm* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %84 = call i32* @olddcb_conntab(%struct.drm_device* %83)
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 4
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ROM16(i32 %91)
  %93 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %100

94:                                               ; preds = %79
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ROM32(i32 %97)
  %99 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %88
  br label %101

101:                                              ; preds = %100, %74
  br label %68

102:                                              ; preds = %68
  %103 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %104 = call i32 @dcb_fake_connectors(%struct.nvbios* %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %64, %29, %25
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32* @olddcb_table(%struct.drm_device*) #1

declare dso_local i32 @fabricate_dcb_encoder_table(%struct.drm_device*, %struct.nvbios*) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32, ...) #1

declare dso_local i32 @olddcb_outp_foreach(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @merge_like_dcb_entries(%struct.drm_device*, %struct.dcb_table*) #1

declare dso_local i32* @olddcb_conn(%struct.drm_device*, i32) #1

declare dso_local i32* @olddcb_conntab(%struct.drm_device*) #1

declare dso_local i32 @pr_cont(i8*, i32) #1

declare dso_local i32 @ROM16(i32) #1

declare dso_local i32 @ROM32(i32) #1

declare dso_local i32 @dcb_fake_connectors(%struct.nvbios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
