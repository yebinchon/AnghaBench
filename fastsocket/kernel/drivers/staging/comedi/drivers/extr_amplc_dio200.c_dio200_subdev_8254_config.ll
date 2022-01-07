; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_subdev_8254_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_subdev_8254_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.dio200_subdev_8254* }
%struct.dio200_subdev_8254 = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dio200_subdev_8254_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio200_subdev_8254_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dio200_subdev_8254*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %14, align 8
  store %struct.dio200_subdev_8254* %15, %struct.dio200_subdev_8254** %10, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %100 [
    i32 129, label %23
    i32 133, label %38
    i32 128, label %46
    i32 131, label %59
    i32 130, label %72
    i32 132, label %85
  ]

23:                                               ; preds = %4
  %24 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %10, align 8
  %25 = getelementptr inbounds %struct.dio200_subdev_8254, %struct.dio200_subdev_8254* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @i8254_set_mode(i32 %26, i32 0, i32 %27, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %107

37:                                               ; preds = %23
  br label %103

38:                                               ; preds = %4
  %39 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %10, align 8
  %40 = getelementptr inbounds %struct.dio200_subdev_8254, %struct.dio200_subdev_8254* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @i8254_status(i32 %41, i32 0, i32 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %43, i32* %45, align 4
  br label %103

46:                                               ; preds = %4
  %47 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dio200_set_gate_src(%struct.dio200_subdev_8254* %47, i32 %48, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %107

58:                                               ; preds = %46
  br label %103

59:                                               ; preds = %4
  %60 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @dio200_get_gate_src(%struct.dio200_subdev_8254* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %107

68:                                               ; preds = %59
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %69, i32* %71, align 4
  br label %103

72:                                               ; preds = %4
  %73 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dio200_set_clock_src(%struct.dio200_subdev_8254* %73, i32 %74, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %107

84:                                               ; preds = %72
  br label %103

85:                                               ; preds = %4
  %86 = load %struct.dio200_subdev_8254*, %struct.dio200_subdev_8254** %10, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = call i32 @dio200_get_clock_src(%struct.dio200_subdev_8254* %86, i32 %87, i32* %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %107

96:                                               ; preds = %85
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 %97, i32* %99, align 4
  br label %103

100:                                              ; preds = %4
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %107

103:                                              ; preds = %96, %84, %68, %58, %38, %37
  %104 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %105 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %103, %100, %93, %81, %65, %55, %34
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @i8254_set_mode(i32, i32, i32, i32) #1

declare dso_local i32 @i8254_status(i32, i32, i32) #1

declare dso_local i32 @dio200_set_gate_src(%struct.dio200_subdev_8254*, i32, i32) #1

declare dso_local i32 @dio200_get_gate_src(%struct.dio200_subdev_8254*, i32) #1

declare dso_local i32 @dio200_set_clock_src(%struct.dio200_subdev_8254*, i32, i32) #1

declare dso_local i32 @dio200_get_clock_src(%struct.dio200_subdev_8254*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
