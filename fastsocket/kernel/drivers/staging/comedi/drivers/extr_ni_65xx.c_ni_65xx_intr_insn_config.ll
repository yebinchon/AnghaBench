; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_intr_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_intr_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@INSN_CONFIG_CHANGE_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_65xx_intr_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_65xx_intr_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %11 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %129

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @INSN_CONFIG_CHANGE_NOTIFY, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %129

26:                                               ; preds = %17
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = call %struct.TYPE_4__* @private(%struct.comedi_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @Rising_Edge_Detection_Enable(i32 0)
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writeb(i32 %29, i64 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = lshr i32 %41, 8
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = call %struct.TYPE_4__* @private(%struct.comedi_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @Rising_Edge_Detection_Enable(i32 16)
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writeb(i32 %42, i64 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = lshr i32 %54, 16
  %56 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %57 = call %struct.TYPE_4__* @private(%struct.comedi_device* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @Rising_Edge_Detection_Enable(i32 32)
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writeb(i32 %55, i64 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = lshr i32 %67, 24
  %69 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %70 = call %struct.TYPE_4__* @private(%struct.comedi_device* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @Rising_Edge_Detection_Enable(i32 48)
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writeb(i32 %68, i64 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %82 = call %struct.TYPE_4__* @private(%struct.comedi_device* %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @Falling_Edge_Detection_Enable(i32 0)
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writeb(i32 %80, i64 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = lshr i32 %92, 8
  %94 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %95 = call %struct.TYPE_4__* @private(%struct.comedi_device* %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @Falling_Edge_Detection_Enable(i32 16)
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writeb(i32 %93, i64 %101)
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = lshr i32 %105, 16
  %107 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %108 = call %struct.TYPE_4__* @private(%struct.comedi_device* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @Falling_Edge_Detection_Enable(i32 32)
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writeb(i32 %106, i64 %114)
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = lshr i32 %118, 24
  %120 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %121 = call %struct.TYPE_4__* @private(%struct.comedi_device* %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @Falling_Edge_Detection_Enable(i32 48)
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writeb(i32 %119, i64 %127)
  store i32 2, i32* %5, align 4
  br label %129

129:                                              ; preds = %26, %23, %14
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local %struct.TYPE_4__* @private(%struct.comedi_device*) #1

declare dso_local i64 @Rising_Edge_Detection_Enable(i32) #1

declare dso_local i64 @Falling_Edge_Detection_Enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
