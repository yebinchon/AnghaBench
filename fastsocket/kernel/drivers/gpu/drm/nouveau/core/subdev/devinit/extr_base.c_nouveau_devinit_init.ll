; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_base.c_nouveau_devinit_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_base.c_nouveau_devinit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_devinit = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_devinit_init(%struct.nouveau_devinit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_devinit*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_devinit* %0, %struct.nouveau_devinit** %3, align 8
  %5 = load %struct.nouveau_devinit*, %struct.nouveau_devinit** %3, align 8
  %6 = getelementptr inbounds %struct.nouveau_devinit, %struct.nouveau_devinit* %5, i32 0, i32 1
  %7 = call i32 @nouveau_subdev_init(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.nouveau_devinit*, %struct.nouveau_devinit** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_devinit, %struct.nouveau_devinit* %13, i32 0, i32 1
  %15 = load %struct.nouveau_devinit*, %struct.nouveau_devinit** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_devinit, %struct.nouveau_devinit* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nvbios_init(i32* %14, i32 %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @nouveau_subdev_init(i32*) #1

declare dso_local i32 @nvbios_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
