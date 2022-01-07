; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3xxx.c_i_APCI3XXX_InsnWriteTTLIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3xxx.c_i_APCI3XXX_InsnWriteTTLIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Channel %d selection error\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Buffer size error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3XXX_InsnWriteTTLIO(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @CR_CHAN(i32 %18)
  %20 = trunc i64 %19 to i8
  store i8 %20, i8* %10, align 1
  store i8 0, i8* %11, align 1
  store i32 0, i32* %12, align 4
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 1
  br i1 %24, label %25, label %112

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %11, align 1
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %58

33:                                               ; preds = %25
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 80
  %38 = call i32 @inl(i64 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i8, i8* %10, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 1, %41
  %43 = sub nsw i32 255, %42
  %44 = and i32 %39, %43
  %45 = load i8, i8* %11, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 1
  %48 = load i8, i8* %10, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %47, %49
  %51 = or i32 %44, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 80
  %57 = call i32 @outl(i32 %52, i64 %56)
  br label %111

58:                                               ; preds = %25
  %59 = load i8, i8* %10, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp sgt i32 %60, 15
  br i1 %61, label %62, label %106

62:                                               ; preds = %58
  %63 = load i8, i8* %10, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp slt i32 %64, 24
  br i1 %65, label %66, label %106

66:                                               ; preds = %62
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 255
  %73 = icmp eq i32 %72, 255
  br i1 %73, label %74, label %101

74:                                               ; preds = %66
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 112
  %79 = call i32 @inl(i64 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i8, i8* %10, align 1
  %82 = zext i8 %81 to i32
  %83 = sub nsw i32 %82, 16
  %84 = shl i32 1, %83
  %85 = sub nsw i32 255, %84
  %86 = and i32 %80, %85
  %87 = load i8, i8* %11, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 1
  %90 = load i8, i8* %10, align 1
  %91 = zext i8 %90 to i32
  %92 = sub nsw i32 %91, 16
  %93 = shl i32 %89, %92
  %94 = or i32 %86, %93
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 112
  %100 = call i32 @outl(i32 %95, i64 %99)
  br label %105

101:                                              ; preds = %66
  store i32 -3, i32* %9, align 4
  %102 = load i8, i8* %10, align 1
  %103 = zext i8 %102 to i32
  %104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %74
  br label %110

106:                                              ; preds = %62, %58
  store i32 -3, i32* %9, align 4
  %107 = load i8, i8* %10, align 1
  %108 = zext i8 %107 to i32
  %109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %105
  br label %111

111:                                              ; preds = %110, %33
  br label %114

112:                                              ; preds = %4
  %113 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %114

114:                                              ; preds = %112, %111
  %115 = load i32, i32* %9, align 4
  ret i32 %115
}

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
