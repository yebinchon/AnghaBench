; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_do_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_do_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"e1000_read_eeprom\00", align 1
@e1000_ce4100 = common dso_local global i64 0, align 8
@GBE_CONFIG_BASE_VIRT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"\22words\22 parameter out of bounds. Words = %d,size = %d\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i64 0, align 8
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@EEPROM_READ_OPCODE_SPI = common dso_local global i64 0, align 8
@EEPROM_A8_OPCODE_SPI = common dso_local global i64 0, align 8
@e1000_eeprom_microwire = common dso_local global i64 0, align 8
@EEPROM_READ_OPCODE_MICROWIRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_do_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_do_read_eeprom(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_eeprom_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  store %struct.e1000_eeprom_info* %15, %struct.e1000_eeprom_info** %10, align 8
  store i64 0, i64* %11, align 8
  %16 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @e1000_ce4100, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i32, i32* @GBE_CONFIG_BASE_VIRT, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = call i32 @GBE_CONFIG_FLASH_READ(i32 %23, i64 %24, i64 %25, i64* %26)
  %28 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %28, i64* %5, align 8
  br label %175

29:                                               ; preds = %4
  %30 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %31 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %36 = call i32 @e1000_init_eeprom_params(%struct.e1000_hw* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %40 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %46 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub nsw i64 %47, %48
  %50 = icmp sgt i64 %44, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51, %43, %37
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %57 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %58)
  %60 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %61 = sub nsw i64 0, %60
  store i64 %61, i64* %5, align 8
  br label %175

62:                                               ; preds = %51
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %64 = call i64 @e1000_acquire_eeprom(%struct.e1000_hw* %63)
  %65 = load i64, i64* @E1000_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %69 = sub nsw i64 0, %68
  store i64 %69, i64* %5, align 8
  br label %175

70:                                               ; preds = %62
  %71 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %72 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @e1000_eeprom_spi, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %133

76:                                               ; preds = %70
  %77 = load i64, i64* @EEPROM_READ_OPCODE_SPI, align 8
  store i64 %77, i64* %13, align 8
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %79 = call i64 @e1000_spi_eeprom_ready(%struct.e1000_hw* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %83 = call i32 @e1000_release_eeprom(%struct.e1000_hw* %82)
  %84 = load i64, i64* @E1000_ERR_EEPROM, align 8
  %85 = sub nsw i64 0, %84
  store i64 %85, i64* %5, align 8
  br label %175

86:                                               ; preds = %76
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %88 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %87)
  %89 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %90 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 8
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i64, i64* %7, align 8
  %95 = icmp sge i64 %94, 128
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i64, i64* @EEPROM_A8_OPCODE_SPI, align 8
  %98 = load i64, i64* %13, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %13, align 8
  br label %100

100:                                              ; preds = %96, %93, %86
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %104 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %101, i64 %102, i32 %105)
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = mul nsw i64 %108, 2
  %110 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %111 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %107, i64 %109, i32 %112)
  store i64 0, i64* %11, align 8
  br label %114

114:                                              ; preds = %129, %100
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %8, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %120 = call i64 @e1000_shift_in_ee_bits(%struct.e1000_hw* %119, i32 16)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = ashr i64 %121, 8
  %123 = load i64, i64* %12, align 8
  %124 = shl i64 %123, 8
  %125 = or i64 %122, %124
  %126 = load i64*, i64** %9, align 8
  %127 = load i64, i64* %11, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 %125, i64* %128, align 8
  br label %129

129:                                              ; preds = %118
  %130 = load i64, i64* %11, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %11, align 8
  br label %114

132:                                              ; preds = %114
  br label %171

133:                                              ; preds = %70
  %134 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %135 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @e1000_eeprom_microwire, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %170

139:                                              ; preds = %133
  store i64 0, i64* %11, align 8
  br label %140

140:                                              ; preds = %166, %139
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* %8, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %169

144:                                              ; preds = %140
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %146 = load i64, i64* @EEPROM_READ_OPCODE_MICROWIRE, align 8
  %147 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %148 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %145, i64 %146, i32 %149)
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load i64, i64* %11, align 8
  %154 = add nsw i64 %152, %153
  %155 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %10, align 8
  %156 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @e1000_shift_out_ee_bits(%struct.e1000_hw* %151, i64 %154, i32 %157)
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %160 = call i64 @e1000_shift_in_ee_bits(%struct.e1000_hw* %159, i32 16)
  %161 = load i64*, i64** %9, align 8
  %162 = load i64, i64* %11, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  store i64 %160, i64* %163, align 8
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %165 = call i32 @e1000_standby_eeprom(%struct.e1000_hw* %164)
  br label %166

166:                                              ; preds = %144
  %167 = load i64, i64* %11, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %11, align 8
  br label %140

169:                                              ; preds = %140
  br label %170

170:                                              ; preds = %169, %133
  br label %171

171:                                              ; preds = %170, %132
  %172 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %173 = call i32 @e1000_release_eeprom(%struct.e1000_hw* %172)
  %174 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %174, i64* %5, align 8
  br label %175

175:                                              ; preds = %171, %81, %67, %54, %22
  %176 = load i64, i64* %5, align 8
  ret i64 %176
}

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @GBE_CONFIG_FLASH_READ(i32, i64, i64, i64*) #1

declare dso_local i32 @e1000_init_eeprom_params(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_acquire_eeprom(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_spi_eeprom_ready(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_release_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_standby_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_shift_out_ee_bits(%struct.e1000_hw*, i64, i32) #1

declare dso_local i64 @e1000_shift_in_ee_bits(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
