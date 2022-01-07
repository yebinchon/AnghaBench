; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { %struct.nouveau_bios*, i64 }
%struct.nouveau_bios = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"IO\09\09I[0x%04x] &= 0x%02x |= 0x%02x\0A\00", align 1
@NV_50 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_io(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %8 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %9 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %8, i32 0, i32 0
  %10 = load %struct.nouveau_bios*, %struct.nouveau_bios** %9, align 8
  store %struct.nouveau_bios* %10, %struct.nouveau_bios** %3, align 8
  %11 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = call i32 @nv_ro16(%struct.nouveau_bios* %11, i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %18 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %19 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 3
  %22 = call i32 @nv_ro16(%struct.nouveau_bios* %17, i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %24 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %25 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 4
  %28 = call i32 @nv_ro16(%struct.nouveau_bios* %23, i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %34 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 5
  store i64 %36, i64* %34, align 8
  %37 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %38 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %37, i32 0, i32 0
  %39 = load %struct.nouveau_bios*, %struct.nouveau_bios** %38, align 8
  %40 = call %struct.TYPE_2__* @nv_device(%struct.nouveau_bios* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NV_50, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %1
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 963
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %53 = call i32 @init_mask(%struct.nvbios_init* %52, i32 6373632, i32 -260046848, i32 8388608)
  %54 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %55 = call i32 @init_mask(%struct.nvbios_init* %54, i32 57740, i32 131072, i32 131072)
  %56 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %57 = call i32 @init_mask(%struct.nvbios_init* %56, i32 6375680, i32 -260046848, i32 8388608)
  %58 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %59 = call i32 @init_mask(%struct.nvbios_init* %58, i32 512, i32 1073741824, i32 0)
  %60 = call i32 @mdelay(i32 10)
  %61 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %62 = call i32 @init_mask(%struct.nvbios_init* %61, i32 57740, i32 131072, i32 0)
  %63 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %64 = call i32 @init_mask(%struct.nvbios_init* %63, i32 512, i32 1073741824, i32 1073741824)
  %65 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %66 = call i32 @init_wr32(%struct.nvbios_init* %65, i32 6373632, i32 8388632)
  %67 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %68 = call i32 @init_wr32(%struct.nvbios_init* %67, i32 6375680, i32 8388632)
  %69 = call i32 @mdelay(i32 10)
  %70 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %71 = call i32 @init_wr32(%struct.nvbios_init* %70, i32 6373632, i32 268435480)
  %72 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %73 = call i32 @init_wr32(%struct.nvbios_init* %72, i32 6375680, i32 268435480)
  br label %74

74:                                               ; preds = %51, %48, %45, %1
  %75 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @init_rdport(%struct.nvbios_init* %75, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %7, align 4
  %80 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @init_wrport(%struct.nvbios_init* %80, i32 %81, i32 %84)
  ret void
}

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nouveau_bios*) #1

declare dso_local i32 @init_mask(%struct.nvbios_init*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_rdport(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_wrport(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
