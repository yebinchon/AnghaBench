; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_get_scratch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_get_scratch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@RADEON_FAMILY_MASK = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4
@R600_SCRATCH_REG0 = common dso_local global i64 0, align 8
@RADEON_SCRATCH_REG0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_scratch(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @CHIP_R600, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @R600_SCRATCHOFF(i32 %20)
  %22 = call i32 @radeon_read_ring_rptr(%struct.TYPE_4__* %19, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %10
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @RADEON_SCRATCHOFF(i32 %25)
  %27 = call i32 @radeon_read_ring_rptr(%struct.TYPE_4__* %24, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RADEON_FAMILY_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CHIP_R600, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i64, i64* @R600_SCRATCH_REG0, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 4, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = call i32 @RADEON_READ(i64 %41)
  store i32 %42, i32* %3, align 4
  br label %50

43:                                               ; preds = %28
  %44 = load i64, i64* @RADEON_SCRATCH_REG0, align 8
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 4, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i32 @RADEON_READ(i64 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %36, %23, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @radeon_read_ring_rptr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @R600_SCRATCHOFF(i32) #1

declare dso_local i32 @RADEON_SCRATCHOFF(i32) #1

declare dso_local i32 @RADEON_READ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
