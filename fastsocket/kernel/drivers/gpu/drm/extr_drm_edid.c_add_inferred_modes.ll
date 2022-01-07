; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_add_inferred_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_add_inferred_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.edid = type { i32 }
%struct.detailed_mode_closure = type { i32, i32, i32, i32, %struct.edid*, %struct.drm_connector* }

@do_inferred_modes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*)* @add_inferred_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_inferred_modes(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.edid*, align 8
  %5 = alloca %struct.detailed_mode_closure, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.edid* %1, %struct.edid** %4, align 8
  %6 = bitcast %struct.detailed_mode_closure* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 32, i1 false)
  %7 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %5, i32 0, i32 0
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = ptrtoint %struct.drm_connector* %8 to i32
  store i32 %9, i32* %7, align 8
  %10 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %5, i32 0, i32 1
  %11 = load %struct.edid*, %struct.edid** %4, align 8
  %12 = ptrtoint %struct.edid* %11 to i32
  store i32 %12, i32* %10, align 4
  %13 = load %struct.edid*, %struct.edid** %4, align 8
  %14 = call i64 @version_greater(%struct.edid* %13, i32 1, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.edid*, %struct.edid** %4, align 8
  %18 = bitcast %struct.edid* %17 to i32*
  %19 = load i32, i32* @do_inferred_modes, align 4
  %20 = call i32 @drm_for_each_detailed_block(i32* %18, i32 %19, %struct.detailed_mode_closure* %5)
  br label %21

21:                                               ; preds = %16, %2
  %22 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @version_greater(%struct.edid*, i32, i32) #2

declare dso_local i32 @drm_for_each_detailed_block(i32*, i32, %struct.detailed_mode_closure*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
