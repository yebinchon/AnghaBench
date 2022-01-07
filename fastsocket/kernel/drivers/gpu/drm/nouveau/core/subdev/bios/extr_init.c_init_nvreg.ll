; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_nvreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_nvreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i32 }
%struct.TYPE_2__ = type { i64 }

@NV_50 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"unknown bits in register 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios_init*, i32)* @init_nvreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_nvreg(%struct.nvbios_init* %0, i32 %1) #0 {
  %3 = alloca %struct.nvbios_init*, align 8
  %4 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, -4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %8 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_2__* @nv_device(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NV_50, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, -2147483648
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %21 = call i32 @init_crtc(%struct.nvbios_init* %20)
  %22 = mul nsw i32 %21, 2048
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 2147483647
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %19, %15
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 1073741824
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %33 = call i32 @init_or(%struct.nvbios_init* %32)
  %34 = mul nsw i32 %33, 2048
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, -1073741825
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 536870912
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %44 = call i32 @init_link(%struct.nvbios_init* %43)
  %45 = mul nsw i32 %44, 128
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, -536870913
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %42, %31
  br label %51

51:                                               ; preds = %50, %27
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, -16777213
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @init_crtc(%struct.nvbios_init*) #1

declare dso_local i32 @init_or(%struct.nvbios_init*) #1

declare dso_local i32 @init_link(%struct.nvbios_init*) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
