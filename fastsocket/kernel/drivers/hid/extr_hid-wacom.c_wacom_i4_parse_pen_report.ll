; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_i4_parse_pen_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-wacom.c_wacom_i4_parse_pen_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_data = type { i8, i8, i32 }
%struct.input_dev = type { i32 }

@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_data*, %struct.input_dev*, i8*)* @wacom_i4_parse_pen_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_i4_parse_pen_report(%struct.wacom_data* %0, %struct.input_dev* %1, i8* %2) #0 {
  %4 = alloca %struct.wacom_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wacom_data* %0, %struct.wacom_data** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  switch i32 %14, label %116 [
    i32 128, label %15
    i32 194, label %41
  ]

15:                                               ; preds = %3
  %16 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %17 = load i32, i32* @BTN_TOUCH, align 4
  %18 = call i32 @input_report_key(%struct.input_dev* %16, i32 %17, i32 0)
  %19 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %20 = load i32, i32* @ABS_PRESSURE, align 4
  %21 = call i32 @input_report_abs(%struct.input_dev* %19, i32 %20, i32 0)
  %22 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %23 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %24 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @input_report_key(%struct.input_dev* %22, i32 %25, i32 0)
  %27 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %28 = load i32, i32* @ABS_MISC, align 4
  %29 = call i32 @input_report_abs(%struct.input_dev* %27, i32 %28, i32 0)
  %30 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %31 = load i32, i32* @EV_MSC, align 4
  %32 = load i32, i32* @MSC_SERIAL, align 4
  %33 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %34 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 4
  %36 = call i32 @input_event(%struct.input_dev* %30, i32 %31, i32 %32, i8 zeroext %35)
  %37 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %38 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %40 = call i32 @input_sync(%struct.input_dev* %39)
  br label %235

41:                                               ; preds = %3
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 4
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = ashr i32 %50, 4
  %52 = or i32 %46, %51
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 7
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 15
  %58 = shl i32 %57, 20
  %59 = or i32 %52, %58
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 240
  %65 = shl i32 %64, 12
  %66 = or i32 %59, %65
  %67 = trunc i32 %66 to i8
  %68 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %69 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %68, i32 0, i32 1
  store i8 %67, i8* %69, align 1
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 15
  %75 = shl i32 %74, 28
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 20
  %81 = add nsw i32 %75, %80
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 5
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 12
  %87 = add nsw i32 %81, %86
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 6
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 4
  %93 = add nsw i32 %87, %92
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 7
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = ashr i32 %97, 4
  %99 = add nsw i32 %93, %98
  %100 = trunc i32 %99 to i8
  %101 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %102 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %101, i32 0, i32 0
  store i8 %100, i8* %102, align 4
  %103 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %104 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %103, i32 0, i32 1
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  switch i32 %106, label %115 [
    i32 1050626, label %107
    i32 1050634, label %111
  ]

107:                                              ; preds = %41
  %108 = load i32, i32* @BTN_TOOL_PEN, align 4
  %109 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %110 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  br label %115

111:                                              ; preds = %41
  %112 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %113 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %114 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %41, %111, %107
  br label %235

116:                                              ; preds = %3
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %120, 9
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 3
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %125, 1
  %127 = or i32 %121, %126
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 9
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 2
  %133 = ashr i32 %132, 1
  %134 = or i32 %127, %133
  store i32 %134, i32* %7, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = shl i32 %138, 9
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 5
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = shl i32 %143, 1
  %145 = or i32 %139, %144
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 9
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = and i32 %149, 1
  %151 = or i32 %145, %150
  store i32 %151, i32* %8, align 4
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 6
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = shl i32 %155, 3
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 7
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = and i32 %160, 192
  %162 = ashr i32 %161, 5
  %163 = or i32 %156, %162
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %167, 1
  %169 = or i32 %163, %168
  store i32 %169, i32* %9, align 4
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 9
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = ashr i32 %173, 2
  %175 = and i32 %174, 63
  store i32 %175, i32* %10, align 4
  %176 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %177 = load i32, i32* @BTN_TOUCH, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp sgt i32 %178, 1
  %180 = zext i1 %179 to i32
  %181 = call i32 @input_report_key(%struct.input_dev* %176, i32 %177, i32 %180)
  %182 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %183 = load i32, i32* @BTN_STYLUS, align 4
  %184 = load i8*, i8** %6, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = and i32 %187, 2
  %189 = call i32 @input_report_key(%struct.input_dev* %182, i32 %183, i32 %188)
  %190 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %191 = load i32, i32* @BTN_STYLUS2, align 4
  %192 = load i8*, i8** %6, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %195, 4
  %197 = call i32 @input_report_key(%struct.input_dev* %190, i32 %191, i32 %196)
  %198 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %199 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %200 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @input_report_key(%struct.input_dev* %198, i32 %201, i32 1)
  %203 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %204 = load i32, i32* @ABS_X, align 4
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @input_report_abs(%struct.input_dev* %203, i32 %204, i32 %205)
  %207 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %208 = load i32, i32* @ABS_Y, align 4
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @input_report_abs(%struct.input_dev* %207, i32 %208, i32 %209)
  %211 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %212 = load i32, i32* @ABS_DISTANCE, align 4
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @input_report_abs(%struct.input_dev* %211, i32 %212, i32 %213)
  %215 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %216 = load i32, i32* @ABS_PRESSURE, align 4
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @input_report_abs(%struct.input_dev* %215, i32 %216, i32 %217)
  %219 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %220 = load i32, i32* @ABS_MISC, align 4
  %221 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %222 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %221, i32 0, i32 1
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = call i32 @input_report_abs(%struct.input_dev* %219, i32 %220, i32 %224)
  %226 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %227 = load i32, i32* @EV_MSC, align 4
  %228 = load i32, i32* @MSC_SERIAL, align 4
  %229 = load %struct.wacom_data*, %struct.wacom_data** %4, align 8
  %230 = getelementptr inbounds %struct.wacom_data, %struct.wacom_data* %229, i32 0, i32 0
  %231 = load i8, i8* %230, align 4
  %232 = call i32 @input_event(%struct.input_dev* %226, i32 %227, i32 %228, i8 zeroext %231)
  %233 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %234 = call i32 @input_sync(%struct.input_dev* %233)
  br label %235

235:                                              ; preds = %116, %115, %15
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
