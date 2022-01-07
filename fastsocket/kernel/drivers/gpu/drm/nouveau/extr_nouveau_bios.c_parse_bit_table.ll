; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.bit_table = type { i32 (%struct.drm_device*, %struct.nvbios*, %struct.bit_entry*)*, i32 }
%struct.bit_entry = type opaque
%struct.nouveau_drm = type { i32 }
%struct.bit_entry.0 = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"BIT table '%c' not found\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios*, i32, %struct.bit_table*)* @parse_bit_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bit_table(%struct.nvbios* %0, i32 %1, %struct.bit_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvbios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bit_table*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.nouveau_drm*, align 8
  %10 = alloca %struct.bit_entry.0, align 4
  store %struct.nvbios* %0, %struct.nvbios** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bit_table* %2, %struct.bit_table** %7, align 8
  %11 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %12 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %15 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %14)
  store %struct.nouveau_drm* %15, %struct.nouveau_drm** %9, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %17 = load %struct.bit_table*, %struct.bit_table** %7, align 8
  %18 = getelementptr inbounds %struct.bit_table, %struct.bit_table* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @bit_table(%struct.drm_device* %16, i32 %19, %struct.bit_entry.0* %10)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.bit_table*, %struct.bit_table** %7, align 8
  %24 = getelementptr inbounds %struct.bit_table, %struct.bit_table* %23, i32 0, i32 0
  %25 = load i32 (%struct.drm_device*, %struct.nvbios*, %struct.bit_entry*)*, i32 (%struct.drm_device*, %struct.nvbios*, %struct.bit_entry*)** %24, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %27 = load %struct.nvbios*, %struct.nvbios** %5, align 8
  %28 = bitcast %struct.bit_entry.0* %10 to %struct.bit_entry*
  %29 = call i32 %25(%struct.drm_device* %26, %struct.nvbios* %27, %struct.bit_entry* %28)
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load %struct.nouveau_drm*, %struct.nouveau_drm** %9, align 8
  %32 = load %struct.bit_table*, %struct.bit_table** %7, align 8
  %33 = getelementptr inbounds %struct.bit_table, %struct.bit_table* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @NV_INFO(%struct.nouveau_drm* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENOSYS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @bit_table(%struct.drm_device*, i32, %struct.bit_entry.0*) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
