; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_update_nvm_checksum_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_update_nvm_checksum_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_nvm_info }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.e1000_nvm_info = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@e1000_nvm_flash_sw = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Could not detect valid bank, assuming bank 0\0A\00", align 1
@E1000_ICH8_SHADOW_RAM_WORDS = common dso_local global i64 0, align 8
@E1000_ICH_NVM_SIG_WORD = common dso_local global i64 0, align 8
@E1000_ICH_NVM_SIG_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Flash commit failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"NVM update error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_update_nvm_checksum_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_update_nvm_checksum_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_nvm_info*, align 8
  %4 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  store %struct.e1000_nvm_info* %13, %struct.e1000_nvm_info** %3, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %16, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = call i64 @e1000e_update_nvm_checksum_generic(%struct.e1000_hw* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %216

22:                                               ; preds = %1
  %23 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @e1000_nvm_flash_sw, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %216

29:                                               ; preds = %22
  %30 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.2*
  %36 = call i32 %33(%struct.e1000_hw.2* %35)
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = call i64 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw* %37, i64* %9)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %9, align 8
  br label %43

43:                                               ; preds = %41, %29
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = call i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw* %50, i32 1)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %196

55:                                               ; preds = %46
  br label %66

56:                                               ; preds = %43
  %57 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = call i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw* %60, i32 0)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %196

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %55
  store i64 0, i64* %5, align 8
  br label %67

67:                                               ; preds = %131, %66
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @E1000_ICH8_SHADOW_RAM_WORDS, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %134

71:                                               ; preds = %67
  %72 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %73 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %82 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  br label %98

88:                                               ; preds = %71
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* %8, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i64 @e1000_read_flash_word_ich8lan(%struct.e1000_hw* %89, i64 %92, i32* %11)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %134

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @E1000_ICH_NVM_SIG_WORD, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* @E1000_ICH_NVM_SIG_MASK, align 4
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %7, align 8
  %109 = add nsw i64 %107, %108
  %110 = shl i64 %109, 1
  store i64 %110, i64* %6, align 8
  %111 = call i32 @usleep_range(i32 100, i32 200)
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i64 @e1000_retry_write_flash_byte_ich8lan(%struct.e1000_hw* %112, i64 %113, i32 %114)
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %10, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  br label %134

119:                                              ; preds = %106
  %120 = call i32 @usleep_range(i32 100, i32 200)
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %122 = load i64, i64* %6, align 8
  %123 = add nsw i64 %122, 1
  %124 = load i32, i32* %11, align 4
  %125 = ashr i32 %124, 8
  %126 = call i64 @e1000_retry_write_flash_byte_ich8lan(%struct.e1000_hw* %121, i64 %123, i32 %125)
  store i64 %126, i64* %10, align 8
  %127 = load i64, i64* %10, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %134

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %5, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %5, align 8
  br label %67

134:                                              ; preds = %129, %118, %96, %67
  %135 = load i64, i64* %10, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %196

139:                                              ; preds = %134
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* @E1000_ICH_NVM_SIG_WORD, align 8
  %142 = add nsw i64 %140, %141
  store i64 %142, i64* %6, align 8
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %144 = load i64, i64* %6, align 8
  %145 = call i64 @e1000_read_flash_word_ich8lan(%struct.e1000_hw* %143, i64 %144, i32* %11)
  store i64 %145, i64* %10, align 8
  %146 = load i64, i64* %10, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %196

149:                                              ; preds = %139
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, 49151
  store i32 %151, i32* %11, align 4
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %153 = load i64, i64* %6, align 8
  %154 = mul nsw i64 %153, 2
  %155 = add nsw i64 %154, 1
  %156 = load i32, i32* %11, align 4
  %157 = ashr i32 %156, 8
  %158 = call i64 @e1000_retry_write_flash_byte_ich8lan(%struct.e1000_hw* %152, i64 %155, i32 %157)
  store i64 %158, i64* %10, align 8
  %159 = load i64, i64* %10, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  br label %196

162:                                              ; preds = %149
  %163 = load i64, i64* %8, align 8
  %164 = load i64, i64* @E1000_ICH_NVM_SIG_WORD, align 8
  %165 = add nsw i64 %163, %164
  %166 = mul nsw i64 %165, 2
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %6, align 8
  %168 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %169 = load i64, i64* %6, align 8
  %170 = call i64 @e1000_retry_write_flash_byte_ich8lan(%struct.e1000_hw* %168, i64 %169, i32 0)
  store i64 %170, i64* %10, align 8
  %171 = load i64, i64* %10, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %162
  br label %196

174:                                              ; preds = %162
  store i64 0, i64* %5, align 8
  br label %175

175:                                              ; preds = %192, %174
  %176 = load i64, i64* %5, align 8
  %177 = load i64, i64* @E1000_ICH8_SHADOW_RAM_WORDS, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %195

179:                                              ; preds = %175
  %180 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %181 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %180, i32 0, i32 0
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = load i64, i64* %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  store i32 0, i32* %185, align 4
  %186 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %187 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %186, i32 0, i32 0
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = load i64, i64* %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  store i32 65535, i32* %191, align 4
  br label %192

192:                                              ; preds = %179
  %193 = load i64, i64* %5, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %5, align 8
  br label %175

195:                                              ; preds = %175
  br label %196

196:                                              ; preds = %195, %173, %161, %148, %137, %64, %54
  %197 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %198 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %199, align 8
  %201 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %202 = bitcast %struct.e1000_hw* %201 to %struct.e1000_hw.1*
  %203 = call i32 %200(%struct.e1000_hw.1* %202)
  %204 = load i64, i64* %10, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %196
  %207 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %3, align 8
  %208 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %209, align 8
  %211 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %212 = bitcast %struct.e1000_hw* %211 to %struct.e1000_hw.0*
  %213 = call i32 %210(%struct.e1000_hw.0* %212)
  %214 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %215

215:                                              ; preds = %206, %196
  br label %216

216:                                              ; preds = %215, %28, %21
  %217 = load i64, i64* %10, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i64, i64* %10, align 8
  %221 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i64, i64* %10, align 8
  ret i64 %223
}

declare dso_local i64 @e1000e_update_nvm_checksum_generic(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_read_flash_word_ich8lan(%struct.e1000_hw*, i64, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @e1000_retry_write_flash_byte_ich8lan(%struct.e1000_hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
