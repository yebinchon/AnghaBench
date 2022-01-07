; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_nv50_pm_clocks_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_nv50_pm_clocks_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nv50_pm_state = type { %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bit_entry = type { i32, i32, i32* }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_pm_clocks_set(%struct.drm_device* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nouveau_device*, align 8
  %6 = alloca %struct.nv50_pm_state*, align 8
  %7 = alloca %struct.bit_entry, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %9)
  store %struct.nouveau_device* %10, %struct.nouveau_device** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.nv50_pm_state*
  store %struct.nv50_pm_state* %12, %struct.nv50_pm_state** %6, align 8
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %16 = call i32 @nv_mask(%struct.nouveau_device* %15, i32 9476, i32 1, i32 1)
  %17 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %18 = call i32 @nv_wait(%struct.nouveau_device* %17, i32 9476, i32 16, i32 16)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %96

21:                                               ; preds = %2
  %22 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %23 = call i32 @nv_wait(%struct.nouveau_device* %22, i32 9500, i32 63, i32 63)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %96

26:                                               ; preds = %21
  %27 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %6, align 8
  %28 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %91

32:                                               ; preds = %26
  %33 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %34 = call i32 @bit_table(%struct.drm_device* %33, i8 signext 77, %struct.bit_entry* %7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %82, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %82

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 6
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ROM16(i32 %49)
  %51 = call i32 (%struct.drm_device*, i32, i8*, i32, ...) bitcast (i32 (...)* @nouveau_bios_run_init_table to i32 (%struct.drm_device*, i32, i8*, i32, ...)*)(%struct.drm_device* %45, i32 %50, i8* null, i32 0)
  br label %52

52:                                               ; preds = %44, %40
  %53 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 8
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %58 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ROM16(i32 %61)
  %63 = call i32 (%struct.drm_device*, i32, i8*, i32, ...) bitcast (i32 (...)* @nouveau_bios_run_init_table to i32 (%struct.drm_device*, i32, i8*, i32, ...)*)(%struct.drm_device* %57, i32 %62, i8* null, i32 0)
  br label %64

64:                                               ; preds = %56, %52
  %65 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %66, 10
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %7, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 9
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ROM16(i32 %73)
  %75 = call i32 (%struct.drm_device*, i32, i8*, i32, ...) bitcast (i32 (...)* @nouveau_bios_run_init_table to i32 (%struct.drm_device*, i32, i8*, i32, ...)*)(%struct.drm_device* %69, i32 %74, i8* null, i32 0)
  br label %76

76:                                               ; preds = %68, %64
  %77 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %78 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %6, align 8
  %79 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (%struct.drm_device*, i32, i8*, i32, ...) bitcast (i32 (...)* @nouveau_bios_run_init_table to i32 (%struct.drm_device*, i32, i8*, i32, ...)*)(%struct.drm_device* %77, i32 %80, i8* null, i32 0)
  br label %82

82:                                               ; preds = %76, %36, %32
  %83 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %84 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %6, align 8
  %85 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %84, i32 0, i32 1
  %86 = call i32 @prog_hwsq(%struct.drm_device* %83, %struct.TYPE_2__* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %96

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %26
  %92 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %93 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %6, align 8
  %94 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %93, i32 0, i32 0
  %95 = call i32 @prog_hwsq(%struct.drm_device* %92, %struct.TYPE_2__* %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %91, %89, %25, %20
  %97 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %98 = call i32 @nv_mask(%struct.nouveau_device* %97, i32 9476, i32 1, i32 0)
  %99 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %6, align 8
  %100 = call i32 @kfree(%struct.nv50_pm_state* %99)
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @nv_mask(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @nv_wait(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @bit_table(%struct.drm_device*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nouveau_bios_run_init_table(...) #1

declare dso_local i32 @ROM16(i32) #1

declare dso_local i32 @prog_hwsq(%struct.drm_device*, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.nv50_pm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
