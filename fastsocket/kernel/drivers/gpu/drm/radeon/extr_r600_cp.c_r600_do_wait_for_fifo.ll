; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_do_wait_for_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_do_wait_for_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RADEON_BOX_WAIT_IDLE = common dso_local global i32 0, align 4
@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i32 0, align 4
@R600_GRBM_STATUS = common dso_local global i32 0, align 4
@R700_CMDFIFO_AVAIL_MASK = common dso_local global i32 0, align 4
@R600_CMDFIFO_AVAIL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"wait for fifo failed status : 0x%08X 0x%08X\0A\00", align 1
@R600_GRBM_STATUS2 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @r600_do_wait_for_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_do_wait_for_fifo(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @RADEON_BOX_WAIT_IDLE, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %8
  store i32 %13, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %45, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @CHIP_RV770, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32, i32* @R600_GRBM_STATUS, align 4
  %30 = call i32 @RADEON_READ(i32 %29)
  %31 = load i32, i32* @R700_CMDFIFO_AVAIL_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %7, align 4
  br label %38

33:                                               ; preds = %20
  %34 = load i32, i32* @R600_GRBM_STATUS, align 4
  %35 = call i32 @RADEON_READ(i32 %34)
  %36 = load i32, i32* @R600_CMDFIFO_AVAIL_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %56

43:                                               ; preds = %38
  %44 = call i32 @DRM_UDELAY(i32 1)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %14

48:                                               ; preds = %14
  %49 = load i32, i32* @R600_GRBM_STATUS, align 4
  %50 = call i32 @RADEON_READ(i32 %49)
  %51 = load i32, i32* @R600_GRBM_STATUS2, align 4
  %52 = call i32 @RADEON_READ(i32 %51)
  %53 = call i32 @DRM_INFO(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52)
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %42
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @RADEON_READ(i32) #1

declare dso_local i32 @DRM_UDELAY(i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
