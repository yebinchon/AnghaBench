; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_hpd_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_hpd_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@DC_HPD1_INT_STATUS = common dso_local global i32 0, align 4
@DC_HPDx_SENSE = common dso_local global i32 0, align 4
@DC_HPD2_INT_STATUS = common dso_local global i32 0, align 4
@DC_HPD3_INT_STATUS = common dso_local global i32 0, align 4
@DC_HPD4_INT_STATUS = common dso_local global i32 0, align 4
@DC_HPD5_INT_STATUS = common dso_local global i32 0, align 4
@DC_HPD6_INT_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_hpd_sense(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %55 [
    i32 133, label %7
    i32 132, label %15
    i32 131, label %23
    i32 130, label %31
    i32 129, label %39
    i32 128, label %47
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @DC_HPD1_INT_STATUS, align 4
  %9 = call i32 @RREG32(i32 %8)
  %10 = load i32, i32* @DC_HPDx_SENSE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 1, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %7
  br label %56

15:                                               ; preds = %2
  %16 = load i32, i32* @DC_HPD2_INT_STATUS, align 4
  %17 = call i32 @RREG32(i32 %16)
  %18 = load i32, i32* @DC_HPDx_SENSE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %15
  br label %56

23:                                               ; preds = %2
  %24 = load i32, i32* @DC_HPD3_INT_STATUS, align 4
  %25 = call i32 @RREG32(i32 %24)
  %26 = load i32, i32* @DC_HPDx_SENSE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %23
  br label %56

31:                                               ; preds = %2
  %32 = load i32, i32* @DC_HPD4_INT_STATUS, align 4
  %33 = call i32 @RREG32(i32 %32)
  %34 = load i32, i32* @DC_HPDx_SENSE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %31
  br label %56

39:                                               ; preds = %2
  %40 = load i32, i32* @DC_HPD5_INT_STATUS, align 4
  %41 = call i32 @RREG32(i32 %40)
  %42 = load i32, i32* @DC_HPDx_SENSE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %39
  br label %56

47:                                               ; preds = %2
  %48 = load i32, i32* @DC_HPD6_INT_STATUS, align 4
  %49 = call i32 @RREG32(i32 %48)
  %50 = load i32, i32* @DC_HPDx_SENSE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %47
  br label %56

55:                                               ; preds = %2
  br label %56

56:                                               ; preds = %55, %54, %46, %38, %30, %22, %14
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
