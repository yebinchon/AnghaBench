; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3xxx.c_i_APCI3XXX_InsnWriteAnalogOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3xxx.c_i_APCI3XXX_InsnWriteAnalogOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Channel %d range %d selection error\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Channel %d selection error\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Buffer size error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3XXX_InsnWriteAnalogOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @CR_RANGE(i32 %15)
  %17 = trunc i64 %16 to i8
  store i8 %17, i8* %9, align 1
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @CR_CHAN(i32 %20)
  %22 = trunc i64 %21 to i8
  store i8 %22, i8* %10, align 1
  store i32 0, i32* %11, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 1
  br i1 %29, label %30, label %90

30:                                               ; preds = %4
  %31 = load i8, i8* %10, align 1
  %32 = zext i8 %31 to i32
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %30
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i32
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 96
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @writel(i32 %46, i8* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = load i8, i8* %10, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %56, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 100
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @writel(i32 %59, i8* %64)
  br label %66

66:                                               ; preds = %73, %44
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 96
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @readl(i8* %71)
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, 256
  %76 = icmp ne i32 %75, 256
  br i1 %76, label %66, label %77

77:                                               ; preds = %73
  br label %84

78:                                               ; preds = %40
  store i32 -4, i32* %12, align 4
  %79 = load i8, i8* %10, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %9, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %82)
  br label %84

84:                                               ; preds = %78, %77
  br label %89

85:                                               ; preds = %30
  store i32 -3, i32* %12, align 4
  %86 = load i8, i8* %10, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %84
  br label %92

90:                                               ; preds = %4
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -101, i32* %12, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = load i32, i32* %12, align 4
  ret i32 %93
}

declare dso_local i64 @CR_RANGE(i32) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i32 @readl(i8*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
