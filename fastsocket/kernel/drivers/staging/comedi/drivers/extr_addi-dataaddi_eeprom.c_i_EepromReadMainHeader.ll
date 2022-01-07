; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_eeprom.c_i_EepromReadMainHeader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataaddi_eeprom.c_i_EepromReadMainHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.str_MainHeader = type { i8, %struct.TYPE_5__*, i8* }
%struct.TYPE_5__ = type { i8, i8* }
%struct.str_DigitalInputHeader = type { i32 }
%struct.str_DigitalOutputHeader = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.str_AnalogInputHeader = type { i32, i32, i64, i64, i32 }

@this_board = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"apci3200\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_EepromReadMainHeader(i16 zeroext %0, i8* %1, %struct.comedi_device* %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca %struct.str_MainHeader, align 8
  %12 = alloca %struct.str_DigitalInputHeader, align 4
  %13 = alloca %struct.str_DigitalOutputHeader, align 4
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca %struct.str_AnalogInputHeader, align 8
  store i16 %0, i16* %4, align 2
  store i8* %1, i8** %5, align 8
  store %struct.comedi_device* %2, %struct.comedi_device** %6, align 8
  store i16 0, i16* %9, align 2
  %16 = load i16, i16* %4, align 2
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @w_EepromReadWord(i16 zeroext %16, i8* %17, i32 264)
  %19 = getelementptr inbounds %struct.str_MainHeader, %struct.str_MainHeader* %11, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i16, i16* %4, align 2
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @w_EepromReadWord(i16 zeroext %20, i8* %21, i32 266)
  %23 = ptrtoint i8* %22 to i16
  store i16 %23, i16* %7, align 2
  %24 = load i16, i16* %7, align 2
  %25 = trunc i16 %24 to i8
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.str_MainHeader, %struct.str_MainHeader* %11, i32 0, i32 0
  store i8 %28, i8* %29, align 8
  store i16 0, i16* %8, align 2
  br label %30

30:                                               ; preds = %76, %3
  %31 = load i16, i16* %8, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.str_MainHeader, %struct.str_MainHeader* %11, i32 0, i32 0
  %34 = load i8, i8* %33, align 8
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %30
  %38 = load i16, i16* %4, align 2
  %39 = load i8*, i8** %5, align 8
  %40 = load i16, i16* %9, align 2
  %41 = zext i16 %40 to i32
  %42 = add nsw i32 268, %41
  %43 = call i8* @w_EepromReadWord(i16 zeroext %38, i8* %39, i32 %42)
  %44 = ptrtoint i8* %43 to i16
  store i16 %44, i16* %7, align 2
  %45 = load i16, i16* %7, align 2
  %46 = trunc i16 %45 to i8
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 63
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.str_MainHeader, %struct.str_MainHeader* %11, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i16, i16* %8, align 2
  %53 = zext i16 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i8 %49, i8* %55, align 8
  %56 = load i16, i16* %9, align 2
  %57 = zext i16 %56 to i32
  %58 = add nsw i32 %57, 2
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %9, align 2
  %60 = load i16, i16* %4, align 2
  %61 = load i8*, i8** %5, align 8
  %62 = load i16, i16* %9, align 2
  %63 = zext i16 %62 to i32
  %64 = add nsw i32 268, %63
  %65 = call i8* @w_EepromReadWord(i16 zeroext %60, i8* %61, i32 %64)
  %66 = getelementptr inbounds %struct.str_MainHeader, %struct.str_MainHeader* %11, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i16, i16* %8, align 2
  %69 = zext i16 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i8* %65, i8** %71, align 8
  %72 = load i16, i16* %9, align 2
  %73 = zext i16 %72 to i32
  %74 = add nsw i32 %73, 2
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %9, align 2
  br label %76

76:                                               ; preds = %37
  %77 = load i16, i16* %8, align 2
  %78 = add i16 %77, 1
  store i16 %78, i16* %8, align 2
  br label %30

79:                                               ; preds = %30
  store i16 0, i16* %8, align 2
  br label %80

80:                                               ; preds = %217, %79
  %81 = load i16, i16* %8, align 2
  %82 = zext i16 %81 to i32
  %83 = getelementptr inbounds %struct.str_MainHeader, %struct.str_MainHeader* %11, i32 0, i32 0
  %84 = load i8, i8* %83, align 8
  %85 = zext i8 %84 to i32
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %220

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.str_MainHeader, %struct.str_MainHeader* %11, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i16, i16* %8, align 2
  %91 = zext i16 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 8
  %95 = zext i8 %94 to i32
  switch i32 %95, label %216 [
    i32 132, label %96
    i32 131, label %111
    i32 134, label %134
    i32 133, label %185
    i32 130, label %207
    i32 128, label %210
    i32 129, label %213
  ]

96:                                               ; preds = %87
  %97 = load i16, i16* %4, align 2
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds %struct.str_MainHeader, %struct.str_MainHeader* %11, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i16, i16* %8, align 2
  %102 = zext i16 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @i_EepromReadDigitalInputHeader(i16 zeroext %97, i8* %98, i8* %105, %struct.str_DigitalInputHeader* %12)
  %107 = getelementptr inbounds %struct.str_DigitalInputHeader, %struct.str_DigitalInputHeader* %12, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 11
  store i32 %108, i32* %110, align 4
  br label %216

111:                                              ; preds = %87
  %112 = load i16, i16* %4, align 2
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds %struct.str_MainHeader, %struct.str_MainHeader* %11, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i16, i16* %8, align 2
  %117 = zext i16 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @i_EepromReadDigitalOutputHeader(i16 zeroext %112, i8* %113, i8* %120, %struct.str_DigitalOutputHeader* %13)
  %122 = getelementptr inbounds %struct.str_DigitalOutputHeader, %struct.str_DigitalOutputHeader* %13, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 10
  store i32 %123, i32* %125, align 4
  store i32 -1, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 32, %129
  %131 = lshr i32 %126, %130
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  br label %216

134:                                              ; preds = %87
  %135 = load i16, i16* %4, align 2
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds %struct.str_MainHeader, %struct.str_MainHeader* %11, i32 0, i32 1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i16, i16* %8, align 2
  %140 = zext i16 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @i_EepromReadAnlogInputHeader(i16 zeroext %135, i8* %136, i8* %143, %struct.str_AnalogInputHeader* %15)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @strcmp(i32 %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %134
  %151 = getelementptr inbounds %struct.str_AnalogInputHeader, %struct.str_AnalogInputHeader* %15, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %152, 4
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  br label %161

156:                                              ; preds = %134
  %157 = getelementptr inbounds %struct.str_AnalogInputHeader, %struct.str_AnalogInputHeader* %15, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %156, %150
  %162 = getelementptr inbounds %struct.str_AnalogInputHeader, %struct.str_AnalogInputHeader* %15, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 4
  %166 = getelementptr inbounds %struct.str_AnalogInputHeader, %struct.str_AnalogInputHeader* %15, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = mul i32 %168, 1000
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  %172 = getelementptr inbounds %struct.str_AnalogInputHeader, %struct.str_AnalogInputHeader* %15, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = mul i32 %174, 1000
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  store i32 65535, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = getelementptr inbounds %struct.str_AnalogInputHeader, %struct.str_AnalogInputHeader* %15, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 16, %180
  %182 = lshr i32 %178, %181
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  br label %216

185:                                              ; preds = %87
  %186 = load i16, i16* %4, align 2
  %187 = load i8*, i8** %5, align 8
  %188 = getelementptr inbounds %struct.str_MainHeader, %struct.str_MainHeader* %11, i32 0, i32 1
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = load i16, i16* %8, align 2
  %191 = zext i16 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @i_EepromReadAnlogOutputHeader(i16 zeroext %186, i8* %187, i8* %194, %struct.TYPE_6__* %14)
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 7
  store i32 %197, i32* %199, align 4
  store i32 65535, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 16, %202
  %204 = lshr i32 %200, %203
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 4
  br label %216

207:                                              ; preds = %87
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 6
  store i32 1, i32* %209, align 4
  br label %216

210:                                              ; preds = %87
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 6
  store i32 1, i32* %212, align 4
  br label %216

213:                                              ; preds = %87
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_board, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 6
  store i32 1, i32* %215, align 4
  br label %216

216:                                              ; preds = %213, %87, %210, %207, %185, %161, %111, %96
  br label %217

217:                                              ; preds = %216
  %218 = load i16, i16* %8, align 2
  %219 = add i16 %218, 1
  store i16 %219, i16* %8, align 2
  br label %80

220:                                              ; preds = %80
  ret i32 0
}

declare dso_local i8* @w_EepromReadWord(i16 zeroext, i8*, i32) #1

declare dso_local i32 @i_EepromReadDigitalInputHeader(i16 zeroext, i8*, i8*, %struct.str_DigitalInputHeader*) #1

declare dso_local i32 @i_EepromReadDigitalOutputHeader(i16 zeroext, i8*, i8*, %struct.str_DigitalOutputHeader*) #1

declare dso_local i32 @i_EepromReadAnlogInputHeader(i16 zeroext, i8*, i8*, %struct.str_AnalogInputHeader*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @i_EepromReadAnlogOutputHeader(i16 zeroext, i8*, i8*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
