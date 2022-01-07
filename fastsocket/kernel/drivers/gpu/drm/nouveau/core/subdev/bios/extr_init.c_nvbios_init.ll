; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_nvbios_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_nvbios_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_init = type { i32, i32, i32*, i32, %struct.nouveau_bios*, %struct.nouveau_subdev* }

@.str = private unnamed_addr constant [21 x i8] c"running init tables\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_init(%struct.nouveau_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_bios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvbios_init, align 8
  %10 = alloca %struct.nvbios_init, align 8
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %3, align 8
  %12 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_subdev* %11)
  store %struct.nouveau_bios* %12, %struct.nouveau_bios** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %17 = call i32 @nv_info(%struct.nouveau_bios* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %2
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = call i32 @init_script(%struct.nouveau_bios* %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i1 [ false, %19 ], [ %27, %22 ]
  br i1 %29, label %30, label %45

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 1
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  store i32 %36, i32* %32, align 4
  %37 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 3
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 4
  %41 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  store %struct.nouveau_bios* %41, %struct.nouveau_bios** %40, align 8
  %42 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %9, i32 0, i32 5
  %43 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %3, align 8
  store %struct.nouveau_subdev* %43, %struct.nouveau_subdev** %42, align 8
  %44 = call i32 @nvbios_exec(%struct.nvbios_init* %9)
  store i32 %44, i32* %6, align 4
  br label %19

45:                                               ; preds = %28
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %45
  %49 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  %50 = call i32 @init_unknown_script(%struct.nouveau_bios* %49)
  store i32 %50, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %10, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  %54 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %10, i32 0, i32 1
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %54, align 4
  %59 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %10, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %10, i32 0, i32 3
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %60, align 8
  %62 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %10, i32 0, i32 4
  %63 = load %struct.nouveau_bios*, %struct.nouveau_bios** %5, align 8
  store %struct.nouveau_bios* %63, %struct.nouveau_bios** %62, align 8
  %64 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %10, i32 0, i32 5
  %65 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %3, align 8
  store %struct.nouveau_subdev* %65, %struct.nouveau_subdev** %64, align 8
  %66 = call i32 @nvbios_exec(%struct.nvbios_init* %10)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %52, %48, %45
  ret i32 0
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_subdev*) #1

declare dso_local i32 @nv_info(%struct.nouveau_bios*, i8*) #1

declare dso_local i32 @init_script(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nvbios_exec(%struct.nvbios_init*) #1

declare dso_local i32 @init_unknown_script(%struct.nouveau_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
