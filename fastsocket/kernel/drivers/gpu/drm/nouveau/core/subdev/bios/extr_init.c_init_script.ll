; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_script.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvbios_init = type { %struct.nouveau_bios* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bios*, i32)* @init_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_script(%struct.nouveau_bios* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_bios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvbios_init, align 8
  %7 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %6, i32 0, i32 0
  %9 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  store %struct.nouveau_bios* %9, %struct.nouveau_bios** %8, align 8
  %10 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %11 = call i32 @bmp_version(%struct.nouveau_bios* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %15 = call i32 @bmp_version(%struct.nouveau_bios* %14)
  %16 = icmp slt i32 %15, 1296
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %51

21:                                               ; preds = %17
  %22 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %23 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %26 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 2
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 14, i32 18
  %32 = add nsw i32 %24, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 2
  %37 = add nsw i32 %34, %36
  %38 = call i32 @nv_ro16(%struct.nouveau_bios* %33, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %51

39:                                               ; preds = %13, %2
  %40 = call i32 @init_script_table(%struct.nvbios_init* %6)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, 2
  %48 = add nsw i32 %45, %47
  %49 = call i32 @nv_ro16(%struct.nouveau_bios* %44, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %43, %21, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @bmp_version(%struct.nouveau_bios*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @init_script_table(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
