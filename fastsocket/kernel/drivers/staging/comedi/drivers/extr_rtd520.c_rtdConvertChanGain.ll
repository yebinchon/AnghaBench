; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtdConvertChanGain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rtd520.c_rtdConvertChanGain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i32 }

@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.comedi_device*, i32, i32)* @rtdConvertChanGain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @rtdConvertChanGain(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i16 0, i16* %10, align 2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @CR_CHAN(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @CR_RANGE(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @CR_AREF(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 15
  %19 = load i16, i16* %10, align 2
  %20 = zext i16 %19 to i32
  %21 = or i32 %20, %18
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %10, align 2
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %3
  %29 = load i16, i16* %10, align 2
  %30 = zext i16 %29 to i32
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %10, align 2
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 7
  %34 = shl i32 %33, 4
  %35 = load i16, i16* %10, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %10, align 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @CHAN_ARRAY_SET(i32 %41, i32 %42)
  br label %93

44:                                               ; preds = %3
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load i16, i16* %10, align 2
  %52 = zext i16 %51 to i32
  %53 = or i32 %52, 256
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %10, align 2
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub i32 %55, %58
  %60 = and i32 %59, 7
  %61 = shl i32 %60, 4
  %62 = load i16, i16* %10, align 2
  %63 = zext i16 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %10, align 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @CHAN_ARRAY_SET(i32 %68, i32 %69)
  br label %92

71:                                               ; preds = %44
  %72 = load i16, i16* %10, align 2
  %73 = zext i16 %72 to i32
  %74 = or i32 %73, 512
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %10, align 2
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub i32 %76, %79
  %81 = and i32 %80, 7
  %82 = shl i32 %81, 4
  %83 = load i16, i16* %10, align 2
  %84 = zext i16 %83 to i32
  %85 = or i32 %84, %82
  %86 = trunc i32 %85 to i16
  store i16 %86, i16* %10, align 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @CHAN_ARRAY_CLEAR(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %71, %50
  br label %93

93:                                               ; preds = %92, %28
  %94 = load i32, i32* %9, align 4
  switch i32 %94, label %107 [
    i32 129, label %95
    i32 131, label %96
    i32 130, label %101
    i32 128, label %106
  ]

95:                                               ; preds = %93
  br label %107

96:                                               ; preds = %93
  %97 = load i16, i16* %10, align 2
  %98 = zext i16 %97 to i32
  %99 = or i32 %98, 128
  %100 = trunc i32 %99 to i16
  store i16 %100, i16* %10, align 2
  br label %107

101:                                              ; preds = %93
  %102 = load i16, i16* %10, align 2
  %103 = zext i16 %102 to i32
  %104 = or i32 %103, 1024
  %105 = trunc i32 %104 to i16
  store i16 %105, i16* %10, align 2
  br label %107

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %93, %106, %101, %96, %95
  %108 = load i16, i16* %10, align 2
  ret i16 %108
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @CHAN_ARRAY_SET(i32, i32) #1

declare dso_local i32 @CHAN_ARRAY_CLEAR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
