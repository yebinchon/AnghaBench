; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_config_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_config_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@INSN_CONFIG_FILTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ni_65xx_config_filter.filter_resolution_ns = internal constant i32 200, align 4
@ni_65xx_config_filter.max_filter_interval = internal constant i32 1048575, align 4
@Filter_Interval = common dso_local global i64 0, align 8
@ni_65xx_channels_per_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_config_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_65xx_config_filter(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %18 = call %struct.TYPE_5__* @sprivate(%struct.comedi_subdevice* %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @ni_65xx_port_by_channel(i32 %21)
  %23 = add i32 %20, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @INSN_CONFIG_FILTER, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %120

32:                                               ; preds = %4
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %32
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = add i32 %40, 100
  %42 = udiv i32 %41, 200
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ugt i32 %43, 1048575
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1048575, i32* %12, align 4
  br label %46

46:                                               ; preds = %45, %37
  %47 = load i32, i32* %12, align 4
  %48 = mul i32 %47, 200
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %53 = call %struct.TYPE_6__* @private(%struct.comedi_device* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %46
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = call %struct.TYPE_6__* @private(%struct.comedi_device* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @Filter_Interval, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writeb(i32 %58, i64 %66)
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %70 = call %struct.TYPE_6__* @private(%struct.comedi_device* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %57, %46
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @ni_65xx_channels_per_port, align 4
  %75 = urem i32 %73, %74
  %76 = shl i32 1, %75
  %77 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %78 = call %struct.TYPE_6__* @private(%struct.comedi_device* %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %76
  store i32 %85, i32* %83, align 4
  br label %101

86:                                               ; preds = %32
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @ni_65xx_channels_per_port, align 4
  %89 = urem i32 %87, %88
  %90 = shl i32 1, %89
  %91 = xor i32 %90, -1
  %92 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %93 = call %struct.TYPE_6__* @private(%struct.comedi_device* %92)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %91
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %86, %72
  %102 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %103 = call %struct.TYPE_6__* @private(%struct.comedi_device* %102)
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %111 = call %struct.TYPE_6__* @private(%struct.comedi_device* %110)
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i64 @Filter_Enable(i32 %116)
  %118 = add nsw i64 %115, %117
  %119 = call i32 @writeb(i32 %109, i64 %118)
  store i32 2, i32* %5, align 4
  br label %120

120:                                              ; preds = %101, %29
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local %struct.TYPE_5__* @sprivate(%struct.comedi_subdevice*) #1

declare dso_local i32 @ni_65xx_port_by_channel(i32) #1

declare dso_local %struct.TYPE_6__* @private(%struct.comedi_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @Filter_Enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
