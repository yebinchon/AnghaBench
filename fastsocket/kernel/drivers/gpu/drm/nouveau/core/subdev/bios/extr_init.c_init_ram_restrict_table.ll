; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_ram_restrict_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_ram_restrict_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }
%struct.bit_entry = type { i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"ram restrict table not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios_init*)* @init_ram_restrict_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_ram_restrict_table(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca %struct.bit_entry, align 8
  %5 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %6 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %7 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %6, i32 0, i32 0
  %8 = load %struct.nouveau_bios*, %struct.nouveau_bios** %7, align 8
  store %struct.nouveau_bios* %8, %struct.nouveau_bios** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %10 = call i32 @bit_entry(%struct.nouveau_bios* %9, i8 signext 77, %struct.bit_entry* %4)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 5
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %22 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 3
  %25 = call i32 @nv_ro16(%struct.nouveau_bios* %21, i64 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %16, %12
  %27 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 3
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %36 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %4, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i32 @nv_ro16(%struct.nouveau_bios* %35, i64 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %30, %26
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @bit_entry(%struct.nouveau_bios*, i8 signext, %struct.bit_entry*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
