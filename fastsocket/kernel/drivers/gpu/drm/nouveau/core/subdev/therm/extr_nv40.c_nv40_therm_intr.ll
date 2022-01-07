; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv40.c_nv40_therm_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv40.c_nv40_therm_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_therm = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"THERM received an IRQ: stat = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv40_therm_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_therm_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_therm*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %5 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %6 = call %struct.nouveau_therm* @nouveau_therm(%struct.nouveau_subdev* %5)
  store %struct.nouveau_therm* %6, %struct.nouveau_therm** %3, align 8
  %7 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %8 = call i32 @nv_rd32(%struct.nouveau_therm* %7, i32 4352)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %10 = call i32 @nv_wr32(%struct.nouveau_therm* %9, i32 4352, i32 458752)
  %11 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @nv_error(%struct.nouveau_therm* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %12)
  ret void
}

declare dso_local %struct.nouveau_therm* @nouveau_therm(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_therm*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_therm*, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_therm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
