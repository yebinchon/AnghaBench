; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_gate_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_gate_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32, i32* }

@NI_GPCT_DISABLED_GATE_SELECT = common dso_local global i32 0, align 4
@Gi_Gating_Mode_Mask = common dso_local global i32 0, align 4
@Gi_Gating_Disabled_Bits = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Gi_Second_Gate_Mode_Bit = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@Gi_Second_Gate_Polarity_Bit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_set_gate_src(%struct.ni_gpct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %11 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %10, i32 0, i32 1
  %12 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %11, align 8
  store %struct.ni_gpct_device* %12, %struct.ni_gpct_device** %8, align 8
  %13 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %14 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @NITIO_Gi_Second_Gate_Reg(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %124 [
    i32 0, label %18
    i32 1, label %50
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  %21 = load i32, i32* @NI_GPCT_DISABLED_GATE_SELECT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %25 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %26 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @NITIO_Gi_Mode_Reg(i32 %27)
  %29 = load i32, i32* @Gi_Gating_Mode_Mask, align 4
  %30 = load i32, i32* @Gi_Gating_Disabled_Bits, align 4
  %31 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %24, i32 %28, i32 %29, i32 %30)
  store i32 0, i32* %4, align 4
  br label %128

32:                                               ; preds = %18
  %33 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ni_tio_set_first_gate_modifiers(%struct.ni_gpct* %33, i32 %34)
  %36 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %37 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %47 [
    i32 129, label %39
    i32 128, label %39
    i32 130, label %43
  ]

39:                                               ; preds = %32, %32
  %40 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ni_m_series_set_first_gate(%struct.ni_gpct* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %128

43:                                               ; preds = %32
  %44 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ni_660x_set_first_gate(%struct.ni_gpct* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %128

47:                                               ; preds = %32
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47
  br label %127

50:                                               ; preds = %3
  %51 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %52 = call i32 @ni_tio_second_gate_registers_present(%struct.ni_gpct_device* %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %128

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @CR_CHAN(i32 %58)
  %60 = load i32, i32* @NI_GPCT_DISABLED_GATE_SELECT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %57
  %63 = load i32, i32* @Gi_Second_Gate_Mode_Bit, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %66 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %64
  store i32 %72, i32* %70, align 4
  %73 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %74 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %75 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @write_register(%struct.ni_gpct* %73, i32 %80, i32 %81)
  store i32 0, i32* %4, align 4
  br label %128

83:                                               ; preds = %57
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @CR_INVERT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load i32, i32* @Gi_Second_Gate_Polarity_Bit, align 4
  %90 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %91 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %89
  store i32 %97, i32* %95, align 4
  br label %109

98:                                               ; preds = %83
  %99 = load i32, i32* @Gi_Second_Gate_Polarity_Bit, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %102 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %100
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %98, %88
  %110 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %111 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %121 [
    i32 128, label %113
    i32 130, label %117
  ]

113:                                              ; preds = %109
  %114 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @ni_m_series_set_second_gate(%struct.ni_gpct* %114, i32 %115)
  store i32 %116, i32* %4, align 4
  br label %128

117:                                              ; preds = %109
  %118 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @ni_660x_set_second_gate(%struct.ni_gpct* %118, i32 %119)
  store i32 %120, i32* %4, align 4
  br label %128

121:                                              ; preds = %109
  %122 = call i32 (...) @BUG()
  br label %123

123:                                              ; preds = %121
  br label %127

124:                                              ; preds = %3
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %128

127:                                              ; preds = %123, %49
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %124, %117, %113, %62, %54, %43, %39, %23
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @NITIO_Gi_Second_Gate_Reg(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Mode_Reg(i32) #1

declare dso_local i32 @ni_tio_set_first_gate_modifiers(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_m_series_set_first_gate(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_660x_set_first_gate(%struct.ni_gpct*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ni_tio_second_gate_registers_present(%struct.ni_gpct_device*) #1

declare dso_local i32 @write_register(%struct.ni_gpct*, i32, i32) #1

declare dso_local i32 @ni_m_series_set_second_gate(%struct.ni_gpct*, i32) #1

declare dso_local i32 @ni_660x_set_second_gate(%struct.ni_gpct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
