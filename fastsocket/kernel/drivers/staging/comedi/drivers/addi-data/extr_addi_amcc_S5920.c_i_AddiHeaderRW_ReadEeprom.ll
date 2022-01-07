; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_amcc_S5920.c_i_AddiHeaderRW_ReadEeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_amcc_S5920.c_i_AddiHeaderRW_ReadEeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMCC_OP_REG_MCSR = common dso_local global i64 0, align 8
@EEPROM_BUSY = common dso_local global i32 0, align 4
@NVCMD_LOAD_LOW = common dso_local global i8 0, align 1
@NVCMD_LOAD_HIGH = common dso_local global i8 0, align 1
@NVCMD_BEGIN_READ = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_AddiHeaderRW_ReadEeprom(i32 %0, i32 %1, i16 zeroext %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x i8], align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i16* %3, i16** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i16 0, i16* %18, align 2
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %211, %4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %214

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %33, %23
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inl(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @EEPROM_BUSY, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @EEPROM_BUSY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %24, label %37

37:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %190, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %193

41:                                               ; preds = %38
  %42 = load i16, i16* %7, align 2
  %43 = zext i16 %42 to i32
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %43, %44
  %46 = srem i32 %45, 256
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %16, align 1
  %48 = load i16, i16* %7, align 2
  %49 = zext i16 %48 to i32
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = sdiv i32 %51, 256
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %17, align 1
  %54 = load i8, i8* @NVCMD_LOAD_LOW, align 1
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %58 = add nsw i64 %56, %57
  %59 = add nsw i64 %58, 3
  %60 = call i32 @outb(i8 zeroext %54, i64 %59)
  br label %61

61:                                               ; preds = %70, %41
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @inl(i64 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @EEPROM_BUSY, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @EEPROM_BUSY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %61, label %74

74:                                               ; preds = %70
  %75 = load i8, i8* %16, align 1
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %79 = add nsw i64 %77, %78
  %80 = add nsw i64 %79, 2
  %81 = call i32 @outb(i8 zeroext %75, i64 %80)
  br label %82

82:                                               ; preds = %91, %74
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @inl(i64 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @EEPROM_BUSY, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @EEPROM_BUSY, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %82, label %95

95:                                               ; preds = %91
  %96 = load i8, i8* @NVCMD_LOAD_HIGH, align 1
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %100 = add nsw i64 %98, %99
  %101 = add nsw i64 %100, 3
  %102 = call i32 @outb(i8 zeroext %96, i64 %101)
  br label %103

103:                                              ; preds = %112, %95
  %104 = load i32, i32* %6, align 4
  %105 = zext i32 %104 to i64
  %106 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @inl(i64 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @EEPROM_BUSY, align 4
  %111 = and i32 %109, %110
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @EEPROM_BUSY, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %103, label %116

116:                                              ; preds = %112
  %117 = load i8, i8* %17, align 1
  %118 = load i32, i32* %6, align 4
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %121 = add nsw i64 %119, %120
  %122 = add nsw i64 %121, 2
  %123 = call i32 @outb(i8 zeroext %117, i64 %122)
  br label %124

124:                                              ; preds = %133, %116
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @inl(i64 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @EEPROM_BUSY, align 4
  %132 = and i32 %130, %131
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %124
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @EEPROM_BUSY, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %124, label %137

137:                                              ; preds = %133
  %138 = load i8, i8* @NVCMD_BEGIN_READ, align 1
  %139 = load i32, i32* %6, align 4
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %142 = add nsw i64 %140, %141
  %143 = add nsw i64 %142, 3
  %144 = call i32 @outb(i8 zeroext %138, i64 %143)
  br label %145

145:                                              ; preds = %154, %137
  %146 = load i32, i32* %6, align 4
  %147 = zext i32 %146 to i64
  %148 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @inl(i64 %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @EEPROM_BUSY, align 4
  %153 = and i32 %151, %152
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @EEPROM_BUSY, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %145, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %6, align 4
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %162 = add nsw i64 %160, %161
  %163 = add nsw i64 %162, 2
  %164 = call zeroext i8 @inb(i64 %163)
  %165 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i64 0, i64 0
  store i8 %164, i8* %165, align 1
  br label %166

166:                                              ; preds = %175, %158
  %167 = load i32, i32* %6, align 4
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* @AMCC_OP_REG_MCSR, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @inl(i64 %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @EEPROM_BUSY, align 4
  %174 = and i32 %172, %173
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %166
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @EEPROM_BUSY, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %166, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %10, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i64 0, i64 0
  %184 = load i8, i8* %183, align 1
  store i8 %184, i8* %14, align 1
  br label %188

185:                                              ; preds = %179
  %186 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i64 0, i64 0
  %187 = load i8, i8* %186, align 1
  store i8 %187, i8* %15, align 1
  br label %188

188:                                              ; preds = %185, %182
  %189 = call i32 @msleep(i32 1)
  br label %190

190:                                              ; preds = %188
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %38

193:                                              ; preds = %38
  %194 = load i8, i8* %14, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* %15, align 1
  %197 = zext i8 %196 to i16
  %198 = zext i16 %197 to i32
  %199 = mul nsw i32 %198, 256
  %200 = or i32 %195, %199
  %201 = trunc i32 %200 to i16
  store i16 %201, i16* %18, align 2
  %202 = load i16, i16* %18, align 2
  %203 = load i16*, i16** %8, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i16, i16* %203, i64 %205
  store i16 %202, i16* %206, align 2
  %207 = load i16, i16* %7, align 2
  %208 = zext i16 %207 to i32
  %209 = add nsw i32 %208, 2
  %210 = trunc i32 %209 to i16
  store i16 %210, i16* %7, align 2
  br label %211

211:                                              ; preds = %193
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  br label %19

214:                                              ; preds = %19
  ret i32 0
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
