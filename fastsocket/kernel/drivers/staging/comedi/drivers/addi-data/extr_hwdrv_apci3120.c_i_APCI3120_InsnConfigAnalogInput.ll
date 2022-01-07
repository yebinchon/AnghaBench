; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_i_APCI3120_InsnConfigAnalogInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3120.c_i_APCI3120_InsnConfigAnalogInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i8* }
%struct.TYPE_3__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@APCI3120_EOC_MODE = common dso_local global i32 0, align 4
@APCI3120_EOS_MODE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"bad channel list\0A\00", align 1
@APCI3120_ENABLE = common dso_local global i8* null, align 8
@APCI3120_DISABLE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3120_InsnConfigAnalogInput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @APCI3120_EOC_MODE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @APCI3120_EOS_MODE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %125

23:                                               ; preds = %16, %4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @APCI3120_EOS_MODE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %104

34:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add i32 4, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @CR_CHAN(i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %5, align 4
  br label %125

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %35

59:                                               ; preds = %35
  %60 = load i32, i32* @APCI3120_EOS_MODE, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i8*, i8** @APCI3120_ENABLE, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  br label %75

71:                                               ; preds = %59
  %72 = load i8*, i8** @APCI3120_DISABLE, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %100, %75
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %81
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add i32 4, %89
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  br label %100

100:                                              ; preds = %87
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %81

103:                                              ; preds = %81
  br label %121

104:                                              ; preds = %23
  %105 = load i32, i32* @APCI3120_EOC_MODE, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load i8*, i8** @APCI3120_ENABLE, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  br label %120

116:                                              ; preds = %104
  %117 = load i8*, i8** @APCI3120_DISABLE, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %103
  %122 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %123 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %121, %53, %22
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
