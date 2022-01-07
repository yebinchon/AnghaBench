; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_sub_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_sub_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i8*, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"SUB_DIRECT\090x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"error parsing sub-table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_sub_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sub_direct(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %6 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %6, i32 0, i32 1
  %8 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  store %struct.nouveau_bios* %8, %struct.nouveau_bios** %3, align 8
  %9 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %10 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %11 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr i8, i8* %12, i64 1
  %14 = call i8* @nv_ro16(%struct.nouveau_bios* %9, i8* %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %18 = call i64 @init_exec(%struct.nvbios_init* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %22 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %26 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %28 = call i64 @nvbios_exec(%struct.nvbios_init* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %41

32:                                               ; preds = %20
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %35 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %32, %1
  %37 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %38 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr i8, i8* %39, i64 3
  store i8* %40, i8** %38, align 8
  br label %41

41:                                               ; preds = %36, %30
  ret void
}

declare dso_local i8* @nv_ro16(%struct.nouveau_bios*, i8*) #1

declare dso_local i32 @trace(i8*, i8*) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local i64 @nvbios_exec(%struct.nvbios_init*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
