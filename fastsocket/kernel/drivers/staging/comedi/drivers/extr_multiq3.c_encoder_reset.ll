; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_multiq3.c_encoder_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_multiq3.c_encoder_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MULTIQ3_CONTROL_MUST = common dso_local global i32 0, align 4
@MULTIQ3_AD_MUX_EN = common dso_local global i32 0, align 4
@MULTIQ3_CONTROL = common dso_local global i64 0, align 8
@MULTIQ3_EFLAG_RESET = common dso_local global i32 0, align 4
@MULTIQ3_ENC_CONTROL = common dso_local global i64 0, align 8
@MULTIQ3_BP_RESET = common dso_local global i32 0, align 4
@MULTIQ3_CLOCK_DATA = common dso_local global i32 0, align 4
@MULTIQ3_ENC_DATA = common dso_local global i64 0, align 8
@MULTIQ3_CLOCK_SETUP = common dso_local global i32 0, align 4
@MULTIQ3_INPUT_SETUP = common dso_local global i32 0, align 4
@MULTIQ3_QUAD_X4 = common dso_local global i32 0, align 4
@MULTIQ3_CNTR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @encoder_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encoder_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %77, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %6, %12
  br i1 %13, label %14, label %80

14:                                               ; preds = %5
  %15 = load i32, i32* @MULTIQ3_CONTROL_MUST, align 4
  %16 = load i32, i32* @MULTIQ3_AD_MUX_EN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %18, 3
  %20 = or i32 %17, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MULTIQ3_CONTROL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outw(i32 %21, i64 %26)
  %28 = load i32, i32* @MULTIQ3_EFLAG_RESET, align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MULTIQ3_ENC_CONTROL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb(i32 %28, i64 %33)
  %35 = load i32, i32* @MULTIQ3_BP_RESET, align 4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MULTIQ3_ENC_CONTROL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i32 %35, i64 %40)
  %42 = load i32, i32* @MULTIQ3_CLOCK_DATA, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MULTIQ3_ENC_DATA, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 %42, i64 %47)
  %49 = load i32, i32* @MULTIQ3_CLOCK_SETUP, align 4
  %50 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MULTIQ3_ENC_CONTROL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 %49, i64 %54)
  %56 = load i32, i32* @MULTIQ3_INPUT_SETUP, align 4
  %57 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MULTIQ3_ENC_CONTROL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i32 %56, i64 %61)
  %63 = load i32, i32* @MULTIQ3_QUAD_X4, align 4
  %64 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MULTIQ3_ENC_CONTROL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outb(i32 %63, i64 %68)
  %70 = load i32, i32* @MULTIQ3_CNTR_RESET, align 4
  %71 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MULTIQ3_ENC_CONTROL, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outb(i32 %70, i64 %75)
  br label %77

77:                                               ; preds = %14
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %5

80:                                               ; preds = %5
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
