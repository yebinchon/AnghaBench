; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_sub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i8*, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"SUB\090x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"error parsing sub-table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sub(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %7 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %8 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %7, i32 0, i32 1
  %9 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  store %struct.nouveau_bios* %9, %struct.nouveau_bios** %3, align 8
  %10 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %11 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %12 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr i8, i8* %13, i64 1
  %15 = call i32 @nv_ro08(%struct.nouveau_bios* %10, i8* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i8* @init_script(%struct.nouveau_bios* %18, i32 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %1
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = call i64 @init_exec(%struct.nvbios_init* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %33 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %35 = call i64 @nvbios_exec(%struct.nvbios_init* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %48

39:                                               ; preds = %27
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %42 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %23, %1
  %44 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %45 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr i8, i8* %46, i64 2
  store i8* %47, i8** %45, align 8
  br label %48

48:                                               ; preds = %43, %37
  ret void
}

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i8*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i8* @init_script(%struct.nouveau_bios*, i32) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local i64 @nvbios_exec(%struct.nvbios_init*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
