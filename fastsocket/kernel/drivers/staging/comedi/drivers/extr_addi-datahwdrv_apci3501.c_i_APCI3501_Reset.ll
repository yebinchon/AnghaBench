; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3501.c_i_APCI3501_Reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3501.c_i_APCI3501_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI3501_DIGITAL_OP = common dso_local global i64 0, align 8
@APCI3501_ANALOG_OUTPUT = common dso_local global i64 0, align 8
@APCI3501_AO_VOLT_MODE = common dso_local global i64 0, align 8
@APCI3501_AO_PROG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3501_Reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @APCI3501_DIGITAL_OP, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outl(i32 0, i64 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @APCI3501_ANALOG_OUTPUT, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @APCI3501_AO_VOLT_MODE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outl(i32 1, i64 %20)
  store i32 -2147483648, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %69, %1
  %23 = load i32, i32* %3, align 4
  %24 = icmp sle i32 %23, 7
  br i1 %24, label %25, label %72

25:                                               ; preds = %22
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @APCI3501_ANALOG_OUTPUT, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @inl(i64 %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %35, %25
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @APCI3501_ANALOG_OUTPUT, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inl(i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = lshr i32 %42, 8
  %44 = and i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %32

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 255
  %51 = load i32, i32* %4, align 4
  %52 = shl i32 %51, 8
  %53 = sext i32 %52 to i64
  %54 = and i64 %53, 2147483392
  %55 = trunc i64 %54 to i32
  %56 = or i32 %50, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @APCI3501_ANALOG_OUTPUT, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* @APCI3501_AO_PROG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outl(i32 %59, i64 %66)
  br label %68

68:                                               ; preds = %48, %45
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %22

72:                                               ; preds = %22
  ret i32 0
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
