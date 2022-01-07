; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_tpc_single_touch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_tpc_single_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@WACOM_PKGLEN_TPC1FG = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i8*, i64)* @wacom_tpc_single_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_tpc_single_touch(%struct.wacom_wac* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %12 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %15 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @WACOM_PKGLEN_TPC1FG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i32 @get_unaligned_le16(i8* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  %35 = call i32 @get_unaligned_le16(i8* %34)
  store i32 %35, i32* %10, align 4
  br label %50

36:                                               ; preds = %20
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = and i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = bitcast i8* %43 to i32*
  %45 = call i32 @le16_to_cpup(i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = bitcast i8* %47 to i32*
  %49 = call i32 @le16_to_cpup(i32* %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %36, %24
  br label %52

51:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* @ABS_X, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @wacom_report_abs(i8* %56, i32 %57, i32 %58)
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @ABS_Y, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @wacom_report_abs(i8* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %52
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* @BTN_TOUCH, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @wacom_report_key(i8* %65, i32 %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %71 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  ret i32 1
}

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @wacom_report_abs(i8*, i32, i32) #1

declare dso_local i32 @wacom_report_key(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
