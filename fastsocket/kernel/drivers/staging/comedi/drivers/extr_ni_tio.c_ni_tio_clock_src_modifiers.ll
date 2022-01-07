; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_clock_src_modifiers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_clock_src_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32 }

@Gi_Source_Polarity_Bit = common dso_local global i32 0, align 4
@NI_GPCT_INVERT_CLOCK_SRC_BIT = common dso_local global i32 0, align 4
@NI_GPCT_PRESCALE_X2_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_PRESCALE_X8_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*)* @ni_tio_clock_src_modifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_clock_src_modifiers(%struct.ni_gpct* %0) #0 {
  %2 = alloca %struct.ni_gpct*, align 8
  %3 = alloca %struct.ni_gpct_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %2, align 8
  %6 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %7 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %6, i32 0, i32 1
  %8 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %7, align 8
  store %struct.ni_gpct_device* %8, %struct.ni_gpct_device** %3, align 8
  %9 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %10 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %11 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @NITIO_Gi_Counting_Mode_Reg(i32 %12)
  %14 = call i32 @ni_tio_get_soft_copy(%struct.ni_gpct* %9, i32 %13)
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %16 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %17 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @NITIO_Gi_Input_Select_Reg(i32 %18)
  %20 = call i32 @ni_tio_get_soft_copy(%struct.ni_gpct* %15, i32 %19)
  %21 = load i32, i32* @Gi_Source_Polarity_Bit, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @NI_GPCT_INVERT_CLOCK_SRC_BIT, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %1
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %31 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @Gi_Prescale_X2_Bit(i32 %32)
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @NI_GPCT_PRESCALE_X2_CLOCK_SRC_BITS, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %28
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %43 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @Gi_Prescale_X8_Bit(i32 %44)
  %46 = and i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @NI_GPCT_PRESCALE_X8_CLOCK_SRC_BITS, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %40
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @ni_tio_get_soft_copy(%struct.ni_gpct*, i32) #1

declare dso_local i32 @NITIO_Gi_Counting_Mode_Reg(i32) #1

declare dso_local i32 @NITIO_Gi_Input_Select_Reg(i32) #1

declare dso_local i32 @Gi_Prescale_X2_Bit(i32) #1

declare dso_local i32 @Gi_Prescale_X8_Bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
