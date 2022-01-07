; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_intuos_general.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_intuos_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@INTUOS4S = common dso_local global i64 0, align 8
@INTUOS4L = common dso_local global i64 0, align 8
@INTUOS5S = common dso_local global i64 0, align 8
@INTUOS5L = common dso_local global i64 0, align 8
@WACOM_21UX2 = common dso_local global i64 0, align 8
@WACOM_24HD = common dso_local global i64 0, align 8
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*, i8*)* @wacom_intuos_general to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_intuos_general(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %8 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 184
  %15 = icmp eq i32 %14, 160
  br i1 %15, label %16, label %138

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 6
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 2
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 7
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = ashr i32 %25, 6
  %27 = and i32 %26, 3
  %28 = or i32 %21, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %30 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @INTUOS4S, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %16
  %37 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %38 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @INTUOS4L, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %76, label %44

44:                                               ; preds = %36, %16
  %45 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %46 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @INTUOS5S, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %54 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @INTUOS5L, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %76, label %60

60:                                               ; preds = %52, %44
  %61 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %62 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @WACOM_21UX2, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %60
  %69 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %70 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @WACOM_24HD, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %68, %52, %36
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 %77, 1
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 1
  %84 = or i32 %78, %83
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %76, %68, %60
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* @ABS_PRESSURE, align 4
  %88 = load i32, i32* %6, align 4
  %89 = trunc i32 %88 to i8
  %90 = call i32 @wacom_report_abs(i8* %86, i32 %87, i8 zeroext %89)
  %91 = load i8*, i8** %4, align 8
  %92 = load i32, i32* @ABS_TILT_X, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 7
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl i32 %96, 1
  %98 = and i32 %97, 126
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = ashr i32 %102, 7
  %104 = or i32 %98, %103
  %105 = trunc i32 %104 to i8
  %106 = call i32 @wacom_report_abs(i8* %91, i32 %92, i8 zeroext %105)
  %107 = load i8*, i8** %4, align 8
  %108 = load i32, i32* @ABS_TILT_Y, align 4
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 127
  %114 = trunc i32 %113 to i8
  %115 = call i32 @wacom_report_abs(i8* %107, i32 %108, i8 zeroext %114)
  %116 = load i8*, i8** %4, align 8
  %117 = load i32, i32* @BTN_STYLUS, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 2
  %123 = call i32 @wacom_report_key(i8* %116, i32 %117, i32 %122)
  %124 = load i8*, i8** %4, align 8
  %125 = load i32, i32* @BTN_STYLUS2, align 4
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 4
  %131 = call i32 @wacom_report_key(i8* %124, i32 %125, i32 %130)
  %132 = load i8*, i8** %4, align 8
  %133 = load i32, i32* @BTN_TOUCH, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ugt i32 %134, 10
  %136 = zext i1 %135 to i32
  %137 = call i32 @wacom_report_key(i8* %132, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %85, %2
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 188
  %144 = icmp eq i32 %143, 180
  br i1 %144, label %145, label %187

145:                                              ; preds = %138
  %146 = load i8*, i8** %4, align 8
  %147 = load i32, i32* @ABS_WHEEL, align 4
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 6
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = shl i32 %151, 2
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 7
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = ashr i32 %156, 6
  %158 = and i32 %157, 3
  %159 = or i32 %152, %158
  %160 = trunc i32 %159 to i8
  %161 = call i32 @wacom_report_abs(i8* %146, i32 %147, i8 zeroext %160)
  %162 = load i8*, i8** %4, align 8
  %163 = load i32, i32* @ABS_TILT_X, align 4
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 7
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = shl i32 %167, 1
  %169 = and i32 %168, 126
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 8
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = ashr i32 %173, 7
  %175 = or i32 %169, %174
  %176 = trunc i32 %175 to i8
  %177 = call i32 @wacom_report_abs(i8* %162, i32 %163, i8 zeroext %176)
  %178 = load i8*, i8** %4, align 8
  %179 = load i32, i32* @ABS_TILT_Y, align 4
  %180 = load i8*, i8** %5, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 8
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = and i32 %183, 127
  %185 = trunc i32 %184 to i8
  %186 = call i32 @wacom_report_abs(i8* %178, i32 %179, i8 zeroext %185)
  br label %187

187:                                              ; preds = %145, %138
  ret void
}

declare dso_local i32 @wacom_report_abs(i8*, i32, i8 zeroext) #1

declare dso_local i32 @wacom_report_key(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
