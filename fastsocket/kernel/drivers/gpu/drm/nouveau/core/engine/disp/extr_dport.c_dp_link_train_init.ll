; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_link_train_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_dport.c_dp_link_train_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_state = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.nvbios_init = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dp_state*, i32)* @dp_link_train_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp_link_train_init(%struct.dp_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dp_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvbios_init, align 4
  store %struct.dp_state* %0, %struct.dp_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 2
  %9 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %10 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 3
  %13 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %14 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 4
  %17 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %18 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @nouveau_bios(i32 %19)
  store i32 %20, i32* %16, align 4
  %21 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 5
  %22 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %23 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @nv_subdev(i32 %24)
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %30 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  br label %44

36:                                               ; preds = %2
  %37 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %38 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %28
  %45 = call i32 @nvbios_exec(%struct.nvbios_init* %5)
  %46 = load %struct.dp_state*, %struct.dp_state** %3, align 8
  %47 = getelementptr inbounds %struct.dp_state, %struct.dp_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = call i32 @nvbios_exec(%struct.nvbios_init* %5)
  ret void
}

declare dso_local i32 @nouveau_bios(i32) #1

declare dso_local i32 @nv_subdev(i32) #1

declare dso_local i32 @nvbios_exec(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
