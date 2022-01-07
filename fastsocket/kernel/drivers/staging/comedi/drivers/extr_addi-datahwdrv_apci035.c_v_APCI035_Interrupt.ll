; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci035.c_v_APCI035_Interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci035.c_v_APCI035_Interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.comedi_device = type { i32 }

@i_Temp = common dso_local global i32 0, align 4
@i_Flag = common dso_local global i32 0, align 4
@i_WatchdogNbr = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@SIGIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @v_APCI035_Interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v_APCI035_Interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.comedi_device*
  store %struct.comedi_device* %12, %struct.comedi_device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @i_Temp, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @i_Flag, align 4
  store i32 %16, i32* @i_WatchdogNbr, align 4
  %17 = load i32, i32* @i_Flag, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @i_Flag, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 128
  %24 = add nsw i64 %23, 16
  %25 = call i32 @inl(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @i_WatchdogNbr, align 4
  %30 = sub nsw i32 %29, 1
  %31 = mul nsw i32 %30, 32
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %28, %32
  %34 = add nsw i64 %33, 20
  %35 = call i32 @inl(i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %74

39:                                               ; preds = %19
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 128
  %44 = add nsw i64 %43, 12
  %45 = call i32 @inl(i64 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = and i64 %47, 4292804608
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 128
  %55 = add nsw i64 %54, 12
  %56 = call i32 @outl(i32 %50, i64 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 128
  %61 = add nsw i64 %60, 60
  %62 = call i32 @inl(i64 %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 128
  %67 = add nsw i64 %66, 60
  %68 = call i32 @inl(i64 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* @SIGIO, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @send_sig(i32 %69, i32 %72, i32 0)
  br label %85

74:                                               ; preds = %19
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* @SIGIO, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @send_sig(i32 %79, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %78, %74
  br label %85

85:                                               ; preds = %84, %39
  ret void
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
