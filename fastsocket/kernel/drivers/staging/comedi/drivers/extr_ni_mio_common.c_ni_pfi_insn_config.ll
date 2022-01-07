; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_pfi_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_pfi_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IO_Bidirection_Pin_Register = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_pfi_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_pfi_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  br label %74

18:                                               ; preds = %4
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CR_CHAN(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %70 [
    i32 132, label %26
    i32 133, label %32
    i32 131, label %38
    i32 128, label %50
    i32 129, label %57
    i32 130, label %63
  ]

26:                                               ; preds = %18
  %27 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %28 = load i32, i32* @IO_Bidirection_Pin_Register, align 4
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 1, %29
  %31 = call i32 @ni_set_bits(%struct.comedi_device* %27, i32 %28, i32 %30, i32 1)
  br label %73

32:                                               ; preds = %18
  %33 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %34 = load i32, i32* @IO_Bidirection_Pin_Register, align 4
  %35 = load i32, i32* %10, align 4
  %36 = shl i32 1, %35
  %37 = call i32 @ni_set_bits(%struct.comedi_device* %33, i32 %34, i32 %36, i32 0)
  br label %73

38:                                               ; preds = %18
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 132, i32 133
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %74

50:                                               ; preds = %18
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ni_set_pfi_routing(%struct.comedi_device* %51, i32 %52, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %74

57:                                               ; preds = %18
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @ni_get_pfi_routing(%struct.comedi_device* %58, i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %60, i32* %62, align 4
  br label %73

63:                                               ; preds = %18
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ni_config_filter(%struct.comedi_device* %64, i32 %65, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %74

70:                                               ; preds = %18
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %57, %32, %26
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %70, %63, %50, %38, %15
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_set_bits(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @ni_set_pfi_routing(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_get_pfi_routing(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_config_filter(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
