; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_drm_get_edid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_edid.c_drm_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32 }
%struct.drm_connector = type { i32 }
%struct.i2c_adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edid* @drm_get_edid(%struct.drm_connector* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.edid*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %4, align 8
  store %struct.edid* null, %struct.edid** %5, align 8
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %7 = call i64 @drm_probe_ddc(%struct.i2c_adapter* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call i64 @drm_do_get_edid(%struct.drm_connector* %10, %struct.i2c_adapter* %11)
  %13 = inttoptr i64 %12 to %struct.edid*
  store %struct.edid* %13, %struct.edid** %5, align 8
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.edid*, %struct.edid** %5, align 8
  ret %struct.edid* %15
}

declare dso_local i64 @drm_probe_ddc(%struct.i2c_adapter*) #1

declare dso_local i64 @drm_do_get_edid(%struct.drm_connector*, %struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
