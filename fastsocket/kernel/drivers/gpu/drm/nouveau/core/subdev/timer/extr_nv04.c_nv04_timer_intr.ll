; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_nv04.c_nv04_timer_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/timer/extr_nv04.c_nv04_timer_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nv04_timer_priv = type { i32 }

@NV04_PTIMER_INTR_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unknown stat 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv04_timer_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_timer_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nv04_timer_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %5 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %6 = bitcast %struct.nouveau_subdev* %5 to i8*
  %7 = bitcast i8* %6 to %struct.nv04_timer_priv*
  store %struct.nv04_timer_priv* %7, %struct.nv04_timer_priv** %3, align 8
  %8 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %3, align 8
  %9 = load i32, i32* @NV04_PTIMER_INTR_0, align 4
  %10 = call i32 @nv_rd32(%struct.nv04_timer_priv* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %3, align 8
  %16 = getelementptr inbounds %struct.nv04_timer_priv, %struct.nv04_timer_priv* %15, i32 0, i32 0
  %17 = call i32 @nv04_timer_alarm_trigger(i32* %16)
  %18 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %3, align 8
  %19 = load i32, i32* @NV04_PTIMER_INTR_0, align 4
  %20 = call i32 @nv_wr32(%struct.nv04_timer_priv* %18, i32 %19, i32 1)
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, -2
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %14, %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @nv_error(%struct.nv04_timer_priv* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.nv04_timer_priv*, %struct.nv04_timer_priv** %3, align 8
  %31 = load i32, i32* @NV04_PTIMER_INTR_0, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @nv_wr32(%struct.nv04_timer_priv* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv04_timer_priv*, i32) #1

declare dso_local i32 @nv04_timer_alarm_trigger(i32*) #1

declare dso_local i32 @nv_wr32(%struct.nv04_timer_priv*, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nv04_timer_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
