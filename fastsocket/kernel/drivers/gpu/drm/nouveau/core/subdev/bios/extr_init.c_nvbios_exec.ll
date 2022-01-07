; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_nvbios_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_nvbios_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.nvbios_init*)* }
%struct.nvbios_init = type { i32, i64, i32 }

@init_opcode_nr = common dso_local global i64 0, align 8
@init_opcode = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"unknown opcode 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_exec(%struct.nvbios_init* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvbios_init*, align 8
  %4 = alloca i64, align 8
  store %struct.nvbios_init* %0, %struct.nvbios_init** %3, align 8
  %5 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %6 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  br label %9

9:                                                ; preds = %37, %1
  %10 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %11 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %9
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %19 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @nv_ro08(i32 %17, i64 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @init_opcode_nr, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %14
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @init_opcode, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.nvbios_init*)*, i32 (%struct.nvbios_init*)** %29, align 8
  %31 = icmp ne i32 (%struct.nvbios_init*)* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25, %14
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %50

37:                                               ; preds = %25
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @init_opcode, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.nvbios_init*)*, i32 (%struct.nvbios_init*)** %41, align 8
  %43 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %44 = call i32 %42(%struct.nvbios_init* %43)
  br label %9

45:                                               ; preds = %9
  %46 = load %struct.nvbios_init*, %struct.nvbios_init** %3, align 8
  %47 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %32
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @nv_ro08(i32, i64) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
