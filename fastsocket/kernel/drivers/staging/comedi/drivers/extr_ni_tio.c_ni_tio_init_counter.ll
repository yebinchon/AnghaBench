; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_init_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_init_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32* }

@Gi_Synchronize_Gate_Bit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ni_tio_init_counter(%struct.ni_gpct* %0) #0 {
  %2 = alloca %struct.ni_gpct*, align 8
  %3 = alloca %struct.ni_gpct_device*, align 8
  store %struct.ni_gpct* %0, %struct.ni_gpct** %2, align 8
  %4 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %5 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %4, i32 0, i32 1
  %6 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %5, align 8
  store %struct.ni_gpct_device* %6, %struct.ni_gpct_device** %3, align 8
  %7 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %8 = call i32 @ni_tio_reset_count_and_disarm(%struct.ni_gpct* %7)
  %9 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %10 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %13 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @NITIO_Gi_Autoincrement_Reg(i32 %14)
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  store i32 0, i32* %16, align 4
  %17 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %18 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %19 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %22 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @NITIO_Gi_Autoincrement_Reg(i32 %23)
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %28 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @NITIO_Gi_Autoincrement_Reg(i32 %29)
  %31 = call i32 @write_register(%struct.ni_gpct* %17, i32 %26, i64 %30)
  %32 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %33 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %34 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @NITIO_Gi_Command_Reg(i32 %35)
  %37 = load i32, i32* @Gi_Synchronize_Gate_Bit, align 4
  %38 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %32, i32 %36, i32 -1, i32 %37)
  %39 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %40 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %41 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @NITIO_Gi_Mode_Reg(i32 %42)
  %44 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %39, i32 %43, i32 -1, i32 0)
  %45 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %46 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %49 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @NITIO_Gi_LoadA_Reg(i32 %50)
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32 0, i32* %52, align 4
  %53 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %54 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %55 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %58 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @NITIO_Gi_LoadA_Reg(i32 %59)
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %64 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @NITIO_Gi_LoadA_Reg(i32 %65)
  %67 = call i32 @write_register(%struct.ni_gpct* %53, i32 %62, i64 %66)
  %68 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %69 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %72 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @NITIO_Gi_LoadB_Reg(i32 %73)
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32 0, i32* %75, align 4
  %76 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %77 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %78 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %81 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @NITIO_Gi_LoadB_Reg(i32 %82)
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %87 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @NITIO_Gi_LoadB_Reg(i32 %88)
  %90 = call i32 @write_register(%struct.ni_gpct* %76, i32 %85, i64 %89)
  %91 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %92 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %93 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @NITIO_Gi_Input_Select_Reg(i32 %94)
  %96 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %91, i32 %95, i32 -1, i32 0)
  %97 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %98 = call i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %1
  %101 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %102 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %103 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @NITIO_Gi_Counting_Mode_Reg(i32 %104)
  %106 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %101, i32 %105, i32 -1, i32 0)
  br label %107

107:                                              ; preds = %100, %1
  %108 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %109 = call i64 @ni_tio_second_gate_registers_present(%struct.ni_gpct_device* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %107
  %112 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %113 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %116 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @NITIO_Gi_Second_Gate_Reg(i32 %117)
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  store i32 0, i32* %119, align 4
  %120 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %121 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %122 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %125 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @NITIO_Gi_Second_Gate_Reg(i32 %126)
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %131 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @NITIO_Gi_Second_Gate_Reg(i32 %132)
  %134 = call i32 @write_register(%struct.ni_gpct* %120, i32 %129, i64 %133)
  br label %135

135:                                              ; preds = %111, %107
  %136 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %137 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %138 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @NITIO_Gi_DMA_Config_Reg(i32 %139)
  %141 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %136, i32 %140, i32 -1, i32 0)
  %142 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %143 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %144 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @NITIO_Gi_Interrupt_Enable_Reg(i32 %145)
  %147 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %142, i32 %146, i32 -1, i32 0)
  ret void
}

declare dso_local i32 @ni_tio_reset_count_and_disarm(%struct.ni_gpct*) #1

declare dso_local i64 @NITIO_Gi_Autoincrement_Reg(i32) #1

declare dso_local i32 @write_register(%struct.ni_gpct*, i32, i64) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Command_Reg(i32) #1

declare dso_local i32 @NITIO_Gi_Mode_Reg(i32) #1

declare dso_local i64 @NITIO_Gi_LoadA_Reg(i32) #1

declare dso_local i64 @NITIO_Gi_LoadB_Reg(i32) #1

declare dso_local i32 @NITIO_Gi_Input_Select_Reg(i32) #1

declare dso_local i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device*) #1

declare dso_local i32 @NITIO_Gi_Counting_Mode_Reg(i32) #1

declare dso_local i64 @ni_tio_second_gate_registers_present(%struct.ni_gpct_device*) #1

declare dso_local i64 @NITIO_Gi_Second_Gate_Reg(i32) #1

declare dso_local i32 @NITIO_Gi_DMA_Config_Reg(i32) #1

declare dso_local i32 @NITIO_Gi_Interrupt_Enable_Reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
