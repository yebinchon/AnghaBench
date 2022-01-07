; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_create_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_ch7006_drv.c_ch7006_encoder_create_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector = type { i32 }
%struct.ch7006_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NUM_TV_NORMS = common dso_local global i32 0, align 4
@ch7006_tv_norm_names = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @ch7006_encoder_create_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch7006_encoder_create_resources(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.ch7006_priv*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_config*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = call %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder* %8)
  store %struct.ch7006_priv* %9, %struct.ch7006_priv** %5, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  store %struct.drm_mode_config* %14, %struct.drm_mode_config** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = load i32, i32* @NUM_TV_NORMS, align 4
  %17 = load i32, i32* @ch7006_tv_norm_names, align 4
  %18 = call i32 @drm_mode_create_tv_properties(%struct.drm_device* %15, i32 %16, i32 %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = call i32 @drm_property_create_range(%struct.drm_device* %19, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 2)
  %21 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %24 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %23, i32 0, i32 0
  %25 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %26 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %29 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @drm_object_attach_property(i32* %24, i32 %27, i32 %30)
  %32 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %32, i32 0, i32 0
  %34 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %35 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @drm_object_attach_property(i32* %33, i32 %36, i32 %39)
  %41 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %42 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %41, i32 0, i32 0
  %43 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %44 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %47 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @drm_object_attach_property(i32* %42, i32 %45, i32 %48)
  %50 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %51 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %50, i32 0, i32 0
  %52 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %53 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %56 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @drm_object_attach_property(i32* %51, i32 %54, i32 %57)
  %59 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 0
  %61 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %62 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %65 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @drm_object_attach_property(i32* %60, i32 %63, i32 %66)
  %68 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %69 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %68, i32 0, i32 0
  %70 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %71 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %74 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @drm_object_attach_property(i32* %69, i32 %72, i32 %75)
  %77 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %78 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %77, i32 0, i32 0
  %79 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %80 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %83 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @drm_object_attach_property(i32* %78, i32 %81, i32 %84)
  %86 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %87 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %86, i32 0, i32 0
  %88 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %89 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %92 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @drm_object_attach_property(i32* %87, i32 %90, i32 %93)
  %95 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %96 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %95, i32 0, i32 0
  %97 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %98 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ch7006_priv*, %struct.ch7006_priv** %5, align 8
  %101 = getelementptr inbounds %struct.ch7006_priv, %struct.ch7006_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @drm_object_attach_property(i32* %96, i32 %99, i32 %102)
  ret i32 0
}

declare dso_local %struct.ch7006_priv* @to_ch7006_priv(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_create_tv_properties(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
