; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_660x.c_ni_660x_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@pfi_output_select_high_Z = common dso_local global i32 0, align 4
@COMEDI_OUTPUT = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_660x_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %14 = call i32 @CR_CHAN(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %87 [
    i32 132, label %18
    i32 133, label %37
    i32 131, label %50
    i32 128, label %67
    i32 129, label %74
    i32 130, label %80
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %22 = call %struct.TYPE_2__* @private(%struct.comedi_device* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 8
  %26 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %29 = call %struct.TYPE_2__* @private(%struct.comedi_device* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ni_660x_select_pfi_output(%struct.comedi_device* %26, i32 %27, i32 %35)
  br label %90

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 1, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = call %struct.TYPE_2__* @private(%struct.comedi_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %40
  store i32 %45, i32* %43, align 8
  %46 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @pfi_output_select_high_Z, align 4
  %49 = call i32 @ni_660x_select_pfi_output(%struct.comedi_device* %46, i32 %47, i32 %48)
  br label %90

50:                                               ; preds = %4
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = call %struct.TYPE_2__* @private(%struct.comedi_device* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @COMEDI_OUTPUT, align 4
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @COMEDI_INPUT, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %91

67:                                               ; preds = %4
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ni_660x_set_pfi_routing(%struct.comedi_device* %68, i32 %69, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %91

74:                                               ; preds = %4
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ni_660x_get_pfi_routing(%struct.comedi_device* %75, i32 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 %77, i32* %79, align 4
  br label %90

80:                                               ; preds = %4
  %81 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ni660x_config_filter(%struct.comedi_device* %81, i32 %82, i32 %85)
  br label %90

87:                                               ; preds = %4
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %91

90:                                               ; preds = %80, %74, %37, %18
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %87, %67, %63
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local %struct.TYPE_2__* @private(%struct.comedi_device*) #1

declare dso_local i32 @ni_660x_select_pfi_output(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_660x_set_pfi_routing(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ni_660x_get_pfi_routing(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni660x_config_filter(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
