; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }
%struct.comedi_insn = type { i32 }

@counter_status_mask = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_insn_config(%struct.ni_gpct* %0, %struct.comedi_insn* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca %struct.comedi_insn*, align 8
  %7 = alloca i32*, align 8
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store %struct.comedi_insn* %1, %struct.comedi_insn** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %79 [
    i32 130, label %11
    i32 137, label %17
    i32 136, label %23
    i32 134, label %26
    i32 131, label %34
    i32 135, label %43
    i32 129, label %50
    i32 133, label %59
    i32 128, label %67
    i32 132, label %76
  ]

11:                                               ; preds = %3
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ni_tio_set_counter_mode(%struct.ni_gpct* %12, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %83

17:                                               ; preds = %3
  %18 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ni_tio_arm(%struct.ni_gpct* %18, i32 1, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %83

23:                                               ; preds = %3
  %24 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %25 = call i32 @ni_tio_arm(%struct.ni_gpct* %24, i32 0, i32 0)
  store i32 0, i32* %4, align 4
  br label %83

26:                                               ; preds = %3
  %27 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %28 = call i32 @ni_tio_counter_status(%struct.ni_gpct* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @counter_status_mask, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %83

34:                                               ; preds = %3
  %35 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ni_tio_set_clock_src(%struct.ni_gpct* %35, i32 %38, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %83

43:                                               ; preds = %3
  %44 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = call i32 @ni_tio_get_clock_src(%struct.ni_gpct* %44, i32* %46, i32* %48)
  store i32 0, i32* %4, align 4
  br label %83

50:                                               ; preds = %3
  %51 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ni_tio_set_gate_src(%struct.ni_gpct* %51, i32 %54, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %83

59:                                               ; preds = %3
  %60 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = call i32 @ni_tio_get_gate_src(%struct.ni_gpct* %60, i32 %63, i32* %65)
  store i32 %66, i32* %4, align 4
  br label %83

67:                                               ; preds = %3
  %68 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ni_tio_set_other_src(%struct.ni_gpct* %68, i32 %71, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %83

76:                                               ; preds = %3
  %77 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %78 = call i32 @ni_tio_reset_count_and_disarm(%struct.ni_gpct* %77)
  store i32 0, i32* %4, align 4
  br label %83

79:                                               ; preds = %3
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %76, %67, %59, %50, %43, %34, %26, %23, %17, %11
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @ni_tio_set_counter_mode(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_tio_arm(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_counter_status(%struct.ni_gpct*) #1

declare dso_local i32 @ni_tio_set_clock_src(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_get_clock_src(%struct.ni_gpct*, i32*, i32*) #1

declare dso_local i32 @ni_tio_set_gate_src(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_get_gate_src(%struct.ni_gpct*, i32, i32*) #1

declare dso_local i32 @ni_tio_set_other_src(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_tio_reset_count_and_disarm(%struct.ni_gpct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
