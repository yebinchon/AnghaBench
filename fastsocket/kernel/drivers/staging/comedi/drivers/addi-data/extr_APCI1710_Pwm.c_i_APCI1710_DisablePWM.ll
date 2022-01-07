; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Pwm.c_i_APCI1710_DisablePWM.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Pwm.c_i_APCI1710_DisablePWM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI1710_PWM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PWM not enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" PWM not initialised\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Tor PWM selection is wrong\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"The module is not a PWM module\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_DisablePWM(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i32 0, i32* %7, align 4
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %83

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = and i64 %21, 4294901760
  %23 = load i32, i32* @APCI1710_PWM, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %12
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sle i32 %28, 1
  br i1 %29, label %30, label %77

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 12
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = mul nsw i32 20, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i32
  %43 = mul nsw i32 64, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = call i32 @inl(i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 16
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %30
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 12
  %60 = load i8, i8* %6, align 1
  %61 = zext i8 %60 to i32
  %62 = mul nsw i32 20, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %59, %63
  %65 = load i8, i8* %5, align 1
  %66 = zext i8 %65 to i32
  %67 = mul nsw i32 64, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %64, %68
  %70 = call i32 @outl(i32 0, i64 %69)
  br label %73

71:                                               ; preds = %50
  %72 = call i32 @DPRINTK(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -6, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %54
  br label %76

74:                                               ; preds = %30
  %75 = call i32 @DPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -5, i32* %7, align 4
  br label %76

76:                                               ; preds = %74, %73
  br label %79

77:                                               ; preds = %26
  %78 = call i32 @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -4, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %76
  br label %82

80:                                               ; preds = %12
  %81 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 -3, i32* %7, align 4
  br label %82

82:                                               ; preds = %80, %79
  br label %85

83:                                               ; preds = %3
  %84 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
