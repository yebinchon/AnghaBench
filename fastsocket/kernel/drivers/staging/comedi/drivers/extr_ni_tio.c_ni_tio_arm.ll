; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_arm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32 }

@Gi_Arm_Bit = common dso_local global i32 0, align 4
@Gi_Arm_Copy_Bit = common dso_local global i32 0, align 4
@NI_GPCT_ARM_UNKNOWN = common dso_local global i32 0, align 4
@Gi_HW_Arm_Select_Shift = common dso_local global i32 0, align 4
@Gi_HW_Arm_Enable_Bit = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Gi_Disarm_Bit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_arm(%struct.ni_gpct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %13 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %12, i32 0, i32 1
  %14 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  store %struct.ni_gpct_device* %14, %struct.ni_gpct_device** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %29 [
    i32 129, label %19
    i32 128, label %23
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @Gi_Arm_Bit, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  br label %30

23:                                               ; preds = %17
  %24 = load i32, i32* @Gi_Arm_Bit, align 4
  %25 = load i32, i32* @Gi_Arm_Copy_Bit, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %30

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %23, %19
  %31 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %32 = call i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %37 [
    i32 129, label %36
    i32 128, label %36
  ]

36:                                               ; preds = %34, %34
  br label %60

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @NI_GPCT_ARM_UNKNOWN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @Gi_HW_Arm_Select_Shift, align 4
  %45 = shl i32 %43, %44
  %46 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %47 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @Gi_HW_Arm_Select_Mask(i32 %48)
  %50 = and i32 %45, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @Gi_HW_Arm_Enable_Bit, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %59

56:                                               ; preds = %37
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %87

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %36
  %61 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %62 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %63 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @NITIO_Gi_Counting_Mode_Reg(i32 %64)
  %66 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %67 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @Gi_HW_Arm_Select_Mask(i32 %68)
  %70 = load i32, i32* @Gi_HW_Arm_Enable_Bit, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %61, i32 %65, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %60, %30
  br label %79

75:                                               ; preds = %3
  %76 = load i32, i32* @Gi_Disarm_Bit, align 4
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %75, %74
  %80 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %81 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %82 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @NITIO_Gi_Command_Reg(i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ni_tio_set_bits_transient(%struct.ni_gpct* %80, i32 %84, i32 0, i32 0, i32 %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %79, %56
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device*) #1

declare dso_local i32 @Gi_HW_Arm_Select_Mask(i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Counting_Mode_Reg(i32) #1

declare dso_local i32 @ni_tio_set_bits_transient(%struct.ni_gpct*, i32, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Command_Reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
