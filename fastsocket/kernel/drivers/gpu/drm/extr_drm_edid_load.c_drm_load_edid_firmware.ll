; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid_load.c_drm_load_edid_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid_load.c_drm_load_edid_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.edid = type { i32 }

@edid_firmware = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_load_edid_firmware(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %11 = call i8* @drm_get_connector_name(%struct.drm_connector* %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** @edid_firmware, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

18:                                               ; preds = %1
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 58)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i64 @strncmp(i8* %24, i8* %25, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %77

35:                                               ; preds = %23
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %77

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %18
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i8*, i8** %6, align 8
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %55, %44
  %58 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @edid_load(%struct.drm_connector* %58, i8* %59, i8* %60)
  %62 = inttoptr i64 %61 to %struct.edid*
  store %struct.edid* %62, %struct.edid** %9, align 8
  %63 = load %struct.edid*, %struct.edid** %9, align 8
  %64 = call i64 @IS_ERR_OR_NULL(%struct.edid* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %77

67:                                               ; preds = %57
  %68 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %69 = load %struct.edid*, %struct.edid** %9, align 8
  %70 = call i32 @drm_mode_connector_update_edid_property(%struct.drm_connector* %68, %struct.edid* %69)
  %71 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %72 = load %struct.edid*, %struct.edid** %9, align 8
  %73 = call i32 @drm_add_edid_modes(%struct.drm_connector* %71, %struct.edid* %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.edid*, %struct.edid** %9, align 8
  %75 = call i32 @kfree(%struct.edid* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %67, %66, %42, %34, %17
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i8* @drm_get_connector_name(%struct.drm_connector*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @edid_load(%struct.drm_connector*, i8*, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.edid*) #1

declare dso_local i32 @drm_mode_connector_update_edid_property(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
