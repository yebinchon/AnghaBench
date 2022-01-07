; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa5246a_device = type { i32* }
%struct.TYPE_3__ = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NUM_DAUS = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@SAA5246A_REGISTER_R8 = common dso_local global i32 0, align 4
@R8_DO_NOT_CLEAR_MEMORY = common dso_local global i8 0, align 1
@R9_CURSER_ROW_25 = common dso_local global i32 0, align 4
@R10_CURSER_COLUMN_0 = common dso_local global i32 0, align 4
@COMMAND_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ROW25_COLUMN7_CHARACTER_SET = common dso_local global i8 0, align 1
@ROW25_COLUMN3_DELETE_PAGE = common dso_local global i8 0, align 1
@ROW25_COLUMN5_INSERT_HEADLINE = common dso_local global i8 0, align 1
@ROW25_COLUMN5_INSERT_SUBTITLE = common dso_local global i8 0, align 1
@ROW25_COLUMN6_SUPPRESS_HEADER = common dso_local global i8 0, align 1
@ROW25_COLUMN6_UPDATE_PAGE = common dso_local global i8 0, align 1
@ROW25_COLUMN6_INTERRUPTED_SEQUENCE = common dso_local global i8 0, align 1
@ROW25_COLUMN6_SUPPRESS_DISPLAY = common dso_local global i8 0, align 1
@ROW25_COLUMN7_SERIAL_MODE = common dso_local global i8 0, align 1
@ROW25_COLUMN8_PAGE_NOT_FOUND = common dso_local global i8 0, align 1
@ROW25_COLUMN9_PAGE_BEING_LOOKED_FOR = common dso_local global i8 0, align 1
@ROW25_COLUMN0_TO_7_HAMMING_ERROR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa5246a_device*, %struct.TYPE_3__*, i8)* @saa5246a_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa5246a_get_status(%struct.saa5246a_device* %0, %struct.TYPE_3__* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa5246a_device*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.saa5246a_device* %0, %struct.saa5246a_device** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8 %2, i8* %7, align 1
  %10 = load i8, i8* %7, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @NUM_DAUS, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sge i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %223

18:                                               ; preds = %3
  %19 = load %struct.saa5246a_device*, %struct.saa5246a_device** %5, align 8
  %20 = load i32, i32* @SAA5246A_REGISTER_R8, align 4
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @R8_DO_NOT_CLEAR_MEMORY, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = trunc i32 %25 to i8
  %27 = load i32, i32* @R9_CURSER_ROW_25, align 4
  %28 = load i32, i32* @R10_CURSER_COLUMN_0, align 4
  %29 = load i32, i32* @COMMAND_END, align 4
  %30 = call i64 @i2c_senddata(%struct.saa5246a_device* %19, i32 %20, i8 zeroext %26, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %18
  %33 = load %struct.saa5246a_device*, %struct.saa5246a_device** %5, align 8
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %35 = call i64 @i2c_getdata(%struct.saa5246a_device* %33, i32 10, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %18
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %223

40:                                               ; preds = %32
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %42 = call i32 @saa5246a_extract_pagenum_from_infobits(i8* %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 14
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %46 = call i32 @saa5246a_extract_hour_from_infobits(i8* %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 13
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %50 = call i32 @saa5246a_extract_minutes_from_infobits(i8* %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 7
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @ROW25_COLUMN7_CHARACTER_SET, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = ashr i32 %58, 1
  %60 = trunc i32 %59 to i8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i8 %60, i8* %62, align 4
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @ROW25_COLUMN3_DELETE_PAGE, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 5
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @ROW25_COLUMN5_INSERT_HEADLINE, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 5
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @ROW25_COLUMN5_INSERT_SUBTITLE, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 6
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @ROW25_COLUMN6_SUPPRESS_HEADER, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 6
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* @ROW25_COLUMN6_UPDATE_PAGE, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 6
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* @ROW25_COLUMN6_INTERRUPTED_SEQUENCE, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 4
  %135 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 6
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* @ROW25_COLUMN6_SUPPRESS_DISPLAY, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 4
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 7
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8, i8* @ROW25_COLUMN7_SERIAL_MODE, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %149, %151
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 4
  %159 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 8
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* @ROW25_COLUMN8_PAGE_NOT_FOUND, align 1
  %163 = zext i8 %162 to i32
  %164 = and i32 %161, %163
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 9
  store i32 %168, i32* %170, align 4
  %171 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 9
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = load i8, i8* @ROW25_COLUMN9_PAGE_BEING_LOOKED_FOR, align 1
  %175 = zext i8 %174 to i32
  %176 = and i32 %173, %175
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 10
  store i32 %180, i32* %182, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 11
  store i32 0, i32* %184, align 4
  store i32 0, i32* %9, align 4
  br label %185

185:                                              ; preds = %202, %40
  %186 = load i32, i32* %9, align 4
  %187 = icmp sle i32 %186, 7
  br i1 %187, label %188, label %205

188:                                              ; preds = %185
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = load i8, i8* @ROW25_COLUMN0_TO_7_HAMMING_ERROR, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %193, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %188
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 11
  store i32 1, i32* %200, align 4
  br label %205

201:                                              ; preds = %188
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %9, align 4
  br label %185

205:                                              ; preds = %198, %185
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 11
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %222, label %210

210:                                              ; preds = %205
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %210
  %216 = load %struct.saa5246a_device*, %struct.saa5246a_device** %5, align 8
  %217 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i8, i8* %7, align 1
  %220 = zext i8 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 0, i32* %221, align 4
  br label %222

222:                                              ; preds = %215, %210, %205
  store i32 0, i32* %4, align 4
  br label %223

223:                                              ; preds = %222, %37, %15
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i64 @i2c_senddata(%struct.saa5246a_device*, i32, i8 zeroext, i32, i32, i32) #1

declare dso_local i64 @i2c_getdata(%struct.saa5246a_device*, i32, i8*) #1

declare dso_local i32 @saa5246a_extract_pagenum_from_infobits(i8*) #1

declare dso_local i32 @saa5246a_extract_hour_from_infobits(i8*) #1

declare dso_local i32 @saa5246a_extract_minutes_from_infobits(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
