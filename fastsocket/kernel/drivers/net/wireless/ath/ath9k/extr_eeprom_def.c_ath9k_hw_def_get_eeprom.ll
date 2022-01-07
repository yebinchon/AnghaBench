; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.base_eep_header, %struct.modal_eep_header* }
%struct.base_eep_header = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.modal_eep_header = type { i32*, i32, i32, i32* }

@AR5416_VER_MASK = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_19 = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_20 = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_22 = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_21 = common dso_local global i32 0, align 4
@AR5416_PWR_TABLE_OFFSET_DB = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ath9k_hw_def_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_def_get_eeprom(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar5416_eeprom_def*, align 8
  %7 = alloca %struct.modal_eep_header*, align 8
  %8 = alloca %struct.base_eep_header*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ar5416_eeprom_def* %12, %struct.ar5416_eeprom_def** %6, align 8
  %13 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %14 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %13, i32 0, i32 1
  %15 = load %struct.modal_eep_header*, %struct.modal_eep_header** %14, align 8
  store %struct.modal_eep_header* %15, %struct.modal_eep_header** %7, align 8
  %16 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %6, align 8
  %17 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %16, i32 0, i32 0
  store %struct.base_eep_header* %17, %struct.base_eep_header** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %189 [
    i32 141, label %19
    i32 142, label %26
    i32 146, label %33
    i32 145, label %38
    i32 144, label %44
    i32 133, label %50
    i32 137, label %56
    i32 136, label %60
    i32 132, label %64
    i32 139, label %68
    i32 149, label %73
    i32 140, label %78
    i32 150, label %83
    i32 143, label %88
    i32 128, label %90
    i32 130, label %94
    i32 147, label %98
    i32 131, label %102
    i32 129, label %106
    i32 138, label %110
    i32 134, label %122
    i32 151, label %131
    i32 148, label %140
    i32 135, label %149
    i32 153, label %159
    i32 152, label %160
  ]

19:                                               ; preds = %2
  %20 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %21 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %20, i64 0
  %22 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %190

26:                                               ; preds = %2
  %27 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %28 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %27, i64 1
  %29 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %190

33:                                               ; preds = %2
  %34 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %35 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %34, i32 0, i32 14
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_unaligned_be16(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %190

38:                                               ; preds = %2
  %39 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %40 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %39, i32 0, i32 14
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 2
  %43 = call i32 @get_unaligned_be16(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %190

44:                                               ; preds = %2
  %45 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %46 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 4
  %49 = call i32 @get_unaligned_be16(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %190

50:                                               ; preds = %2
  %51 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %52 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %3, align 4
  br label %190

56:                                               ; preds = %2
  %57 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %58 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %3, align 4
  br label %190

60:                                               ; preds = %2
  %61 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %62 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %3, align 4
  br label %190

64:                                               ; preds = %2
  %65 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %66 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %3, align 4
  br label %190

68:                                               ; preds = %2
  %69 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %70 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %69, i64 0
  %71 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %3, align 4
  br label %190

73:                                               ; preds = %2
  %74 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %75 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %74, i64 0
  %76 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %3, align 4
  br label %190

78:                                               ; preds = %2
  %79 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %80 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %79, i64 1
  %81 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %3, align 4
  br label %190

83:                                               ; preds = %2
  %84 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %85 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %84, i64 1
  %86 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %3, align 4
  br label %190

88:                                               ; preds = %2
  %89 = load i32, i32* @AR5416_VER_MASK, align 4
  store i32 %89, i32* %3, align 4
  br label %190

90:                                               ; preds = %2
  %91 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %92 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %3, align 4
  br label %190

94:                                               ; preds = %2
  %95 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %96 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %3, align 4
  br label %190

98:                                               ; preds = %2
  %99 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %100 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %3, align 4
  br label %190

102:                                              ; preds = %2
  %103 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %104 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %3, align 4
  br label %190

106:                                              ; preds = %2
  %107 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %108 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %3, align 4
  br label %190

110:                                              ; preds = %2
  %111 = load i32, i32* @AR5416_VER_MASK, align 4
  %112 = load i32, i32* @AR5416_EEP_MINOR_VER_19, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %116 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %115, i32 0, i32 13
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  store i32 %120, i32* %3, align 4
  br label %190

121:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %190

122:                                              ; preds = %2
  %123 = load i32, i32* @AR5416_VER_MASK, align 4
  %124 = load i32, i32* @AR5416_EEP_MINOR_VER_19, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %128 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %3, align 4
  br label %190

130:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %190

131:                                              ; preds = %2
  %132 = load i32, i32* @AR5416_VER_MASK, align 4
  %133 = load i32, i32* @AR5416_EEP_MINOR_VER_20, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %137 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %3, align 4
  br label %190

139:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %190

140:                                              ; preds = %2
  %141 = load i32, i32* @AR5416_VER_MASK, align 4
  %142 = load i32, i32* @AR5416_EEP_MINOR_VER_22, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %146 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %3, align 4
  br label %190

148:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %190

149:                                              ; preds = %2
  %150 = load i32, i32* @AR5416_VER_MASK, align 4
  %151 = load i32, i32* @AR5416_EEP_MINOR_VER_21, align 4
  %152 = icmp sge i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load %struct.base_eep_header*, %struct.base_eep_header** %8, align 8
  %155 = getelementptr inbounds %struct.base_eep_header, %struct.base_eep_header* %154, i32 0, i32 12
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %3, align 4
  br label %190

157:                                              ; preds = %149
  %158 = load i32, i32* @AR5416_PWR_TABLE_OFFSET_DB, align 4
  store i32 %158, i32* %3, align 4
  br label %190

159:                                              ; preds = %2
  store i32 1, i32* %9, align 4
  br label %160

160:                                              ; preds = %2, %159
  %161 = load i32, i32* @u8, align 4
  %162 = load i32, i32* @u8, align 4
  %163 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %163, i64 %165
  %167 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %171, i64 %173
  %175 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @max_t(i32 %162, i32 %170, i32 %178)
  %180 = load %struct.modal_eep_header*, %struct.modal_eep_header** %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %180, i64 %182
  %184 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @max_t(i32 %161, i32 %179, i32 %187)
  store i32 %188, i32* %3, align 4
  br label %190

189:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %160, %157, %153, %148, %144, %139, %135, %130, %126, %121, %114, %106, %102, %98, %94, %90, %88, %83, %78, %73, %68, %64, %60, %56, %50, %44, %38, %33, %26, %19
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @get_unaligned_be16(i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
