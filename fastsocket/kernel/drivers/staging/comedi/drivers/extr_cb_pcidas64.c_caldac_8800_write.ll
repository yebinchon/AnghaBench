; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_caldac_8800_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_caldac_8800_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_2__ = type { i64 }

@caldac_8800_write.num_caldac_channels = internal constant i32 8, align 4
@caldac_8800_write.bitstream_length = internal constant i32 11, align 4
@caldac_8800_write.caldac_8800_udelay = internal constant i32 1, align 4
@.str = private unnamed_addr constant [23 x i8] c"illegal caldac channel\00", align 1
@SERIAL_DATA_IN_BIT = common dso_local global i32 0, align 4
@CALIBRATION_REG = common dso_local global i64 0, align 8
@SERIAL_CLOCK_BIT = common dso_local global i32 0, align 4
@SELECT_8800_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @caldac_8800_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caldac_8800_write(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 7
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %7, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp uge i32 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %20 = call i32 @comedi_error(%struct.comedi_device* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %78

21:                                               ; preds = %3
  store i32 1024, i32* %9, align 4
  br label %22

22:                                               ; preds = %56, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @SERIAL_DATA_IN_BIT, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = call i32 @udelay(i32 1)
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %38 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CALIBRATION_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writew(i32 %36, i64 %42)
  %44 = load i32, i32* @SERIAL_CLOCK_BIT, align 4
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = call i32 @udelay(i32 1)
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %50 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CALIBRATION_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writew(i32 %48, i64 %54)
  br label %56

56:                                               ; preds = %34
  %57 = load i32, i32* %9, align 4
  %58 = lshr i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %22

59:                                               ; preds = %22
  %60 = call i32 @udelay(i32 1)
  %61 = load i32, i32* @SELECT_8800_BIT, align 4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %63 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CALIBRATION_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writew(i32 %61, i64 %67)
  %69 = call i32 @udelay(i32 1)
  %70 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %71 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CALIBRATION_REG, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writew(i32 0, i64 %75)
  %77 = call i32 @udelay(i32 1)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %59, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
