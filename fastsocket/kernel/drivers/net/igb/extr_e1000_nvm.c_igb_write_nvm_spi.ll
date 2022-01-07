; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_write_nvm_spi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_nvm.c_igb_write_nvm_spi.c"
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
define dso_local i32 @igb_write_nvm_spi(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
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
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %24, %4
  %36 = call i32 @hw_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %151

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %140, %38
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %149

43:                                               ; preds = %39
  %44 = load i64, i64* @NVM_WRITE_OPCODE_SPI, align 8
  store i64 %44, i64* %13, align 8
  %45 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %46 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %47, align 8
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %50 = bitcast %struct.e1000_hw* %49 to %struct.e1000_hw.1*
  %51 = call i32 %48(%struct.e1000_hw.1* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %151

56:                                               ; preds = %43
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %58 = call i32 @igb_ready_nvm_eeprom(%struct.e1000_hw* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %63 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %64, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %67 = bitcast %struct.e1000_hw* %66 to %struct.e1000_hw.0*
  %68 = call i32 %65(%struct.e1000_hw.0* %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %151

70:                                               ; preds = %56
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %72 = call i32 @igb_standby_nvm(%struct.e1000_hw* %71)
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %74 = load i64, i64* @NVM_WREN_OPCODE_SPI, align 8
  %75 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %76 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @igb_shift_out_eec_bits(%struct.e1000_hw* %73, i64 %74, i32 %77)
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %80 = call i32 @igb_standby_nvm(%struct.e1000_hw* %79)
  %81 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %82 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 8
  br i1 %84, label %85, label %92

85:                                               ; preds = %70
  %86 = load i64, i64* %7, align 8
  %87 = icmp sge i64 %86, 128
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i64, i64* @NVM_A8_OPCODE_SPI, align 8
  %90 = load i64, i64* %13, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %13, align 8
  br label %92

92:                                               ; preds = %88, %85, %70
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %96 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @igb_shift_out_eec_bits(%struct.e1000_hw* %93, i64 %94, i32 %97)
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %12, align 8
  %102 = add nsw i64 %100, %101
  %103 = mul nsw i64 %102, 2
  %104 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %105 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @igb_shift_out_eec_bits(%struct.e1000_hw* %99, i64 %103, i32 %106)
  br label %108

108:                                              ; preds = %139, %92
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %108
  %113 = load i64*, i64** %9, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %14, align 8
  %117 = load i64, i64* %14, align 8
  %118 = ashr i64 %117, 8
  %119 = load i64, i64* %14, align 8
  %120 = shl i64 %119, 8
  %121 = or i64 %118, %120
  store i64 %121, i64* %14, align 8
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @igb_shift_out_eec_bits(%struct.e1000_hw* %122, i64 %123, i32 16)
  %125 = load i64, i64* %12, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* %12, align 8
  %129 = add nsw i64 %127, %128
  %130 = mul nsw i64 %129, 2
  %131 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %132 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = srem i64 %130, %133
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %112
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %138 = call i32 @igb_standby_nvm(%struct.e1000_hw* %137)
  br label %140

139:                                              ; preds = %112
  br label %108

140:                                              ; preds = %136, %108
  %141 = call i32 @usleep_range(i32 1000, i32 2000)
  %142 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %143 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %144, align 8
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %147 = bitcast %struct.e1000_hw* %146 to %struct.e1000_hw.0*
  %148 = call i32 %145(%struct.e1000_hw.0* %147)
  br label %39

149:                                              ; preds = %39
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %61, %54, %35
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @igb_ready_nvm_eeprom(%struct.e1000_hw*) #1

declare dso_local i32 @igb_standby_nvm(%struct.e1000_hw*) #1

declare dso_local i32 @igb_shift_out_eec_bits(%struct.e1000_hw*, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
