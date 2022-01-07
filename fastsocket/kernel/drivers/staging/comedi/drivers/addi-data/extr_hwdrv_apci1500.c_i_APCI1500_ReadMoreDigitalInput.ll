; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_ReadMoreDigitalInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_ReadMoreDigitalInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1500_DIGITAL_IP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"\0AThe channel specification are in error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\0ASpecified channel cannot be read \0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\0AThe specified functionality does not exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1500_ReadMoreDigitalInput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %91 [
    i32 0, label %24
    i32 1, label %48
  ]

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = icmp uge i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = icmp ule i32 %28, 15
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @APCI1500_DIGITAL_IP, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @inw(i64 %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = lshr i32 %38, %39
  %41 = and i32 %40, 1
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %47

43:                                               ; preds = %27, %24
  %44 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %99

47:                                               ; preds = %30
  br label %95

48:                                               ; preds = %4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @APCI1500_DIGITAL_IP, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i64 @inw(i64 %53)
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  switch i32 %57, label %86 [
    i32 2, label %58
    i32 4, label %67
    i32 8, label %76
    i32 15, label %85
  ]

58:                                               ; preds = %48
  store i32 3, i32* %11, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = mul i32 2, %61
  %63 = lshr i32 %60, %62
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %63, %64
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  br label %90

67:                                               ; preds = %48
  store i32 15, i32* %11, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = mul i32 4, %70
  %72 = lshr i32 %69, %71
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %72, %73
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  br label %90

76:                                               ; preds = %48
  store i32 255, i32* %11, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul i32 8, %79
  %81 = lshr i32 %78, %80
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %81, %82
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  br label %90

85:                                               ; preds = %48
  br label %90

86:                                               ; preds = %48
  %87 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %99

90:                                               ; preds = %85, %76, %67, %58
  br label %95

91:                                               ; preds = %4
  %92 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %99

95:                                               ; preds = %90, %47
  %96 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %97 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %91, %86, %43
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i64 @inw(i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
