; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_winsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_winsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32* }
%struct.comedi_insn = type { i32, i32 }

@Gi_Load_Bit = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_winsn(%struct.ni_gpct* %0, %struct.comedi_insn* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca %struct.comedi_insn*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store %struct.comedi_insn* %1, %struct.comedi_insn** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %12 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %11, i32 0, i32 1
  %13 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %12, align 8
  store %struct.ni_gpct_device* %13, %struct.ni_gpct_device** %8, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CR_CHAN(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %99

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %95 [
    i32 0, label %25
    i32 1, label %53
    i32 2, label %74
  ]

25:                                               ; preds = %23
  %26 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %27 = call i32 @ni_tio_next_load_register(%struct.ni_gpct* %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = call i32 @write_register(%struct.ni_gpct* %28, i32 %31, i64 %33)
  %35 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %36 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %37 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @NITIO_Gi_Command_Reg(i32 %38)
  %40 = load i32, i32* @Gi_Load_Bit, align 4
  %41 = call i32 @ni_tio_set_bits_transient(%struct.ni_gpct* %35, i32 %39, i32 0, i32 0, i32 %40)
  %42 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %43 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %44 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = call i32 @write_register(%struct.ni_gpct* %42, i32 %49, i64 %51)
  br label %98

53:                                               ; preds = %23
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %58 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %61 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @NITIO_Gi_LoadA_Reg(i32 %62)
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  store i32 %56, i32* %64, align 4
  %65 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %70 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @NITIO_Gi_LoadA_Reg(i32 %71)
  %73 = call i32 @write_register(%struct.ni_gpct* %65, i32 %68, i64 %72)
  br label %98

74:                                               ; preds = %23
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %79 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %82 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @NITIO_Gi_LoadB_Reg(i32 %83)
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  store i32 %77, i32* %85, align 4
  %86 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %91 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @NITIO_Gi_LoadB_Reg(i32 %92)
  %94 = call i32 @write_register(%struct.ni_gpct* %86, i32 %89, i64 %93)
  br label %98

95:                                               ; preds = %23
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %99

98:                                               ; preds = %74, %53, %25
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %95, %22
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_tio_next_load_register(%struct.ni_gpct*) #1

declare dso_local i32 @write_register(%struct.ni_gpct*, i32, i64) #1

declare dso_local i32 @ni_tio_set_bits_transient(%struct.ni_gpct*, i32, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Command_Reg(i32) #1

declare dso_local i64 @NITIO_Gi_LoadA_Reg(i32) #1

declare dso_local i64 @NITIO_Gi_LoadB_Reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
