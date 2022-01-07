; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_nvm.c_e1000e_write_nvm_spi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_nvm.c_e1000e_write_nvm_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_ERR_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@NVM_WRITE_OPCODE_SPI = common dso_local global i64 0, align 8
@NVM_WREN_OPCODE_SPI = common dso_local global i64 0, align 8
@NVM_A8_OPCODE_SPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_write_nvm_spi(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_nvm_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  store %struct.e1000_nvm_info* %16, %struct.e1000_nvm_info** %10, align 8
  %17 = load i32, i32* @E1000_ERR_NVM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %21 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %27 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub nsw i64 %28, %29
  %31 = icmp sgt i64 %25, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %24, %4
  %36 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @E1000_ERR_NVM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %152

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %141, %39
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %150

44:                                               ; preds = %40
  %45 = load i64, i64* @NVM_WRITE_OPCODE_SPI, align 8
  store i64 %45, i64* %13, align 8
  %46 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %47 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %48, align 8
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %51 = bitcast %struct.e1000_hw* %50 to %struct.e1000_hw.1*
  %52 = call i32 %49(%struct.e1000_hw.1* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %152

57:                                               ; preds = %44
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %59 = call i32 @e1000_ready_nvm_eeprom(%struct.e1000_hw* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %64 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.0*
  %69 = call i32 %66(%struct.e1000_hw.0* %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %152

71:                                               ; preds = %57
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %73 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %72)
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %75 = load i64, i64* @NVM_WREN_OPCODE_SPI, align 8
  %76 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %77 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %74, i64 %75, i32 %78)
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %81 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %80)
  %82 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %83 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %86, label %93

86:                                               ; preds = %71
  %87 = load i64, i64* %7, align 8
  %88 = icmp sge i64 %87, 128
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i64, i64* @NVM_A8_OPCODE_SPI, align 8
  %91 = load i64, i64* %13, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %13, align 8
  br label %93

93:                                               ; preds = %89, %86, %71
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %97 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %94, i64 %95, i32 %98)
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %12, align 8
  %103 = add nsw i64 %101, %102
  %104 = mul nsw i64 %103, 2
  %105 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %106 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %100, i64 %104, i32 %107)
  br label %109

109:                                              ; preds = %140, %93
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %109
  %114 = load i64*, i64** %9, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %14, align 8
  %118 = load i64, i64* %14, align 8
  %119 = ashr i64 %118, 8
  %120 = load i64, i64* %14, align 8
  %121 = shl i64 %120, 8
  %122 = or i64 %119, %121
  store i64 %122, i64* %14, align 8
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %123, i64 %124, i32 16)
  %126 = load i64, i64* %12, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %12, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* %12, align 8
  %130 = add nsw i64 %128, %129
  %131 = mul nsw i64 %130, 2
  %132 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %133 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = srem i64 %131, %134
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %113
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %139 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %138)
  br label %141

140:                                              ; preds = %113
  br label %109

141:                                              ; preds = %137, %109
  %142 = call i32 @usleep_range(i32 10000, i32 20000)
  %143 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %144 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %145, align 8
  %147 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %148 = bitcast %struct.e1000_hw* %147 to %struct.e1000_hw.0*
  %149 = call i32 %146(%struct.e1000_hw.0* %148)
  br label %40

150:                                              ; preds = %40
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %62, %55, %35
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_ready_nvm_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_standby_nvm(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_shift_out_eec_bits(%struct.e1000_hw*, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
