; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@Gi_Save_Trace_Bit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_rinsn(%struct.ni_gpct* %0, %struct.comedi_insn* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca %struct.comedi_insn*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store %struct.comedi_insn* %1, %struct.comedi_insn** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %14 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %13, i32 0, i32 1
  %15 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %14, align 8
  store %struct.ni_gpct_device* %15, %struct.ni_gpct_device** %8, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %95 [
    i32 0, label %27
    i32 1, label %71
    i32 2, label %83
  ]

27:                                               ; preds = %25
  %28 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %29 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %30 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @NITIO_Gi_Command_Reg(i32 %31)
  %33 = load i32, i32* @Gi_Save_Trace_Bit, align 4
  %34 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %28, i32 %32, i32 %33, i32 0)
  %35 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %36 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %37 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @NITIO_Gi_Command_Reg(i32 %38)
  %40 = load i32, i32* @Gi_Save_Trace_Bit, align 4
  %41 = load i32, i32* @Gi_Save_Trace_Bit, align 4
  %42 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %35, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %44 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %45 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @NITIO_Gi_SW_Save_Reg(i32 %46)
  %48 = call i32 @read_register(%struct.ni_gpct* %43, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %50 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %51 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @NITIO_Gi_SW_Save_Reg(i32 %52)
  %54 = call i32 @read_register(%struct.ni_gpct* %49, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %27
  %59 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %60 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %61 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @NITIO_Gi_SW_Save_Reg(i32 %62)
  %64 = call i32 @read_register(%struct.ni_gpct* %59, i32 %63)
  store i32 %64, i32* %12, align 4
  br label %67

65:                                               ; preds = %27
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %65, %58
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %96

71:                                               ; preds = %25
  %72 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %73 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %76 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @NITIO_Gi_LoadA_Reg(i32 %77)
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %80, i32* %82, align 4
  br label %95

83:                                               ; preds = %25
  %84 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %85 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %88 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @NITIO_Gi_LoadB_Reg(i32 %89)
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %25, %83, %71
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %67, %24
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Command_Reg(i32) #1

declare dso_local i32 @read_register(%struct.ni_gpct*, i32) #1

declare dso_local i32 @NITIO_Gi_SW_Save_Reg(i32) #1

declare dso_local i64 @NITIO_Gi_LoadA_Reg(i32) #1

declare dso_local i64 @NITIO_Gi_LoadB_Reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
