; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@COMEDI_OUTPUT = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_65xx_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %121

18:                                               ; preds = %4
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %20 = call %struct.TYPE_5__* @sprivate(%struct.comedi_subdevice* %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CR_CHAN(i32 %25)
  %27 = call i32 @ni_65xx_port_by_channel(i32 %26)
  %28 = add i32 %22, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %117 [
    i32 128, label %32
    i32 130, label %38
    i32 131, label %66
    i32 129, label %94
  ]

32:                                               ; preds = %18
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %35 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @ni_65xx_config_filter(%struct.comedi_device* %33, %struct.comedi_subdevice* %34, %struct.comedi_insn* %35, i32* %36)
  store i32 %37, i32* %5, align 4
  br label %121

38:                                               ; preds = %18
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %121

47:                                               ; preds = %38
  %48 = load i32, i32* @COMEDI_OUTPUT, align 4
  %49 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %50 = call %struct.TYPE_6__* @private(%struct.comedi_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %48, i32* %55, align 4
  %56 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %57 = call %struct.TYPE_6__* @private(%struct.comedi_device* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @Port_Select(i32 %62)
  %64 = add nsw i64 %61, %63
  %65 = call i32 @writeb(i32 0, i64 %64)
  store i32 1, i32* %5, align 4
  br label %121

66:                                               ; preds = %18
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %121

75:                                               ; preds = %66
  %76 = load i32, i32* @COMEDI_INPUT, align 4
  %77 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %78 = call %struct.TYPE_6__* @private(%struct.comedi_device* %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %76, i32* %83, align 4
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = call %struct.TYPE_6__* @private(%struct.comedi_device* %84)
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i64 @Port_Select(i32 %90)
  %92 = add nsw i64 %89, %91
  %93 = call i32 @writeb(i32 1, i64 %92)
  store i32 1, i32* %5, align 4
  br label %121

94:                                               ; preds = %18
  %95 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %121

103:                                              ; preds = %94
  %104 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %105 = call %struct.TYPE_6__* @private(%struct.comedi_device* %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %115 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %5, align 4
  br label %121

117:                                              ; preds = %18
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %118, %103, %100, %75, %72, %47, %44, %32, %15
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.TYPE_5__* @sprivate(%struct.comedi_subdevice*) #1

declare dso_local i32 @ni_65xx_port_by_channel(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_65xx_config_filter(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*) #1

declare dso_local %struct.TYPE_6__* @private(%struct.comedi_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @Port_Select(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
