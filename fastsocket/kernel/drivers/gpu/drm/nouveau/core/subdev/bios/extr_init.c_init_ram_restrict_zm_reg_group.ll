; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_ram_restrict_zm_reg_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_ram_restrict_zm_reg_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"RAM_RESTRICT_ZM_REG_GROUP\09R[0x%08x] 0x%02x 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09R[0x%06x] = {\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\09\090x%08x *\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\09\090x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_ram_restrict_zm_reg_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ram_restrict_zm_reg_group(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 1
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %13, align 8
  store %struct.nouveau_bios* %14, %struct.nouveau_bios** %3, align 8
  %15 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %16 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %17 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @nv_ro32(%struct.nouveau_bios* %15, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %22 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %23 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 5
  %26 = call i64 @nv_ro08(%struct.nouveau_bios* %21, i64 %25)
  store i64 %26, i64* %5, align 8
  %27 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 6
  %32 = call i64 @nv_ro08(%struct.nouveau_bios* %27, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = call i64 @init_ram_restrict_group_count(%struct.nvbios_init* %33)
  store i64 %34, i64* %7, align 8
  %35 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %36 = call i64 @init_ram_restrict(%struct.nvbios_init* %35)
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38, i64 %39)
  %41 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %42 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 7
  store i64 %44, i64* %42, align 8
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %90, %1
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %93

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %80, %49
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %52
  %57 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %58 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %59 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @nv_ro32(%struct.nouveau_bios* %57, i64 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @init_wr32(%struct.nvbios_init* %68, i32 %69, i32 %70)
  br label %75

72:                                               ; preds = %56
  %73 = load i32, i32* %11, align 4
  %74 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %77 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 4
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %75
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %10, align 8
  br label %52

83:                                               ; preds = %52
  %84 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i64, i64* %5, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %83
  %91 = load i64, i64* %9, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %9, align 8
  br label %45

93:                                               ; preds = %45
  ret void
}

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i64 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i64 @init_ram_restrict_group_count(%struct.nvbios_init*) #1

declare dso_local i64 @init_ram_restrict(%struct.nvbios_init*) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
