; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_check_arguments.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_check_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@radeon_vram_limit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"vram limit (%d) must be a power of 2\0A\00", align 1
@radeon_gart_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"gart size (%d) too small forcing to 512M\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"gart size (%d) must be a power of 2\0A\00", align 1
@radeon_agpmode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"invalid AGP mode %d (valid mode: -1, 0, 1, 2, 4, 8)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @radeon_check_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_check_arguments(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load i32, i32* @radeon_vram_limit, align 4
  %4 = call i32 @radeon_check_pot_argument(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @radeon_vram_limit, align 4
  %11 = call i32 @dev_warn(i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* @radeon_vram_limit, align 4
  br label %12

12:                                               ; preds = %6, %1
  %13 = load i32, i32* @radeon_gart_size, align 4
  %14 = icmp slt i32 %13, 32
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @radeon_gart_size, align 4
  %20 = call i32 @dev_warn(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  store i32 512, i32* @radeon_gart_size, align 4
  br label %32

21:                                               ; preds = %12
  %22 = load i32, i32* @radeon_gart_size, align 4
  %23 = call i32 @radeon_check_pot_argument(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @radeon_gart_size, align 4
  %30 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 512, i32* @radeon_gart_size, align 4
  br label %31

31:                                               ; preds = %25, %21
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i32, i32* @radeon_gart_size, align 4
  %34 = shl i32 %33, 20
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @radeon_agpmode, align 4
  switch i32 %38, label %40 [
    i32 -1, label %39
    i32 0, label %39
    i32 1, label %39
    i32 2, label %39
    i32 4, label %39
    i32 8, label %39
  ]

39:                                               ; preds = %32, %32, %32, %32, %32, %32
  br label %46

40:                                               ; preds = %32
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @radeon_agpmode, align 4
  %45 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  store i32 0, i32* @radeon_agpmode, align 4
  br label %46

46:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @radeon_check_pot_argument(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
