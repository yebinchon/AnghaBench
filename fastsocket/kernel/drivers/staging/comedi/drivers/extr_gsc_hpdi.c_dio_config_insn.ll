; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_dio_config_insn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_dio_config_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }
%struct.TYPE_2__ = type { i32 }

@COMEDI_OUTPUT = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dio_config_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio_config_insn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %48 [
    i32 129, label %13
    i32 130, label %20
    i32 128, label %27
    i32 131, label %44
  ]

13:                                               ; preds = %4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %52

20:                                               ; preds = %4
  %21 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %22 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %25 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  br label %52

27:                                               ; preds = %4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %29 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @COMEDI_OUTPUT, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @COMEDI_INPUT, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %42 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %5, align 4
  br label %52

44:                                               ; preds = %4
  %45 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @dio_config_block_size(%struct.comedi_device* %45, i32* %46)
  store i32 %47, i32* %5, align 4
  br label %52

48:                                               ; preds = %4
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %44, %37, %20, %13
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @dio_config_block_size(%struct.comedi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
