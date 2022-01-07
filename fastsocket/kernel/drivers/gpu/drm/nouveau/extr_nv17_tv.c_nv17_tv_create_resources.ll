; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_nv17_tv_create_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_nv17_tv_create_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nv17_tv_encoder = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dcb_output = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.dcb_output* }

@NUM_TV_NORMS = common dso_local global i32 0, align 4
@NUM_LD_TV_NORMS = common dso_local global i32 0, align 4
@nouveau_tv_norm = common dso_local global i64 0, align 8
@nv17_tv_norm_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Invalid TV norm setting \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @nv17_tv_create_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_tv_create_resources(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.drm_mode_config*, align 8
  %8 = alloca %struct.nv17_tv_encoder*, align 8
  %9 = alloca %struct.dcb_output*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  store %struct.drm_mode_config* %18, %struct.drm_mode_config** %7, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %20 = call %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder* %19)
  store %struct.nv17_tv_encoder* %20, %struct.nv17_tv_encoder** %8, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %22 = call %struct.TYPE_4__* @nouveau_encoder(%struct.drm_encoder* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.dcb_output*, %struct.dcb_output** %23, align 8
  store %struct.dcb_output* %24, %struct.dcb_output** %9, align 8
  %25 = load %struct.dcb_output*, %struct.dcb_output** %9, align 8
  %26 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @NUM_TV_NORMS, align 4
  br label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @NUM_LD_TV_NORMS, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %10, align 4
  %36 = load i64, i64* @nouveau_tv_norm, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i32*, i32** @nv17_tv_norm_names, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* @nouveau_tv_norm, align 8
  %50 = call i32 @strcmp(i32 %48, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %8, align 8
  %55 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %60

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %39

60:                                               ; preds = %52, %39
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %66 = load i64, i64* @nouveau_tv_norm, align 8
  %67 = call i32 @NV_WARN(%struct.nouveau_drm* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %34
  %70 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** @nv17_tv_norm_names, align 8
  %73 = call i32 @drm_mode_create_tv_properties(%struct.drm_device* %70, i32 %71, i32* %72)
  %74 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %75 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %74, i32 0, i32 0
  %76 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %77 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %8, align 8
  %80 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @drm_object_attach_property(i32* %75, i32 %78, i32 %81)
  %83 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %84 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %83, i32 0, i32 0
  %85 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %86 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %8, align 8
  %89 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @drm_object_attach_property(i32* %84, i32 %87, i32 %90)
  %92 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %93 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %92, i32 0, i32 0
  %94 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %95 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %8, align 8
  %98 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @drm_object_attach_property(i32* %93, i32 %96, i32 %99)
  %101 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %102 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %101, i32 0, i32 0
  %103 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %104 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %8, align 8
  %107 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @drm_object_attach_property(i32* %102, i32 %105, i32 %108)
  %110 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %111 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %110, i32 0, i32 0
  %112 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %113 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %8, align 8
  %116 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @drm_object_attach_property(i32* %111, i32 %114, i32 %117)
  %119 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %120 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %119, i32 0, i32 0
  %121 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %122 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %8, align 8
  %125 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @drm_object_attach_property(i32* %120, i32 %123, i32 %126)
  %128 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %129 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %128, i32 0, i32 0
  %130 = load %struct.drm_mode_config*, %struct.drm_mode_config** %7, align 8
  %131 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.nv17_tv_encoder*, %struct.nv17_tv_encoder** %8, align 8
  %134 = getelementptr inbounds %struct.nv17_tv_encoder, %struct.nv17_tv_encoder* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @drm_object_attach_property(i32* %129, i32 %132, i32 %135)
  ret i32 0
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nv17_tv_encoder* @to_tv_enc(%struct.drm_encoder*) #1

declare dso_local %struct.TYPE_4__* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @strcmp(i32, i64) #1

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*, i64) #1

declare dso_local i32 @drm_mode_create_tv_properties(%struct.drm_device*, i32, i32*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
