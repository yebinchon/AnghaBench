; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_tpc_mt_touch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_tpc_mt_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i8*)* @wacom_tpc_mt_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_tpc_mt_touch(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %13 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %78, %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %81

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %30 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %28, %18
  %37 = phi i1 [ false, %18 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @wacom_mt_slot(i8* %39, i32 %40)
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* @MT_TOOL_FINGER, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @wacom_mt_report_slot_state(i8* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %36
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = bitcast i8* %54 to i32*
  %56 = call i32 @le16_to_cpup(i32* %55)
  %57 = and i32 %56, 32767
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %59, 2
  %61 = add nsw i32 %60, 6
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = bitcast i8* %63 to i32*
  %65 = call i32 @le16_to_cpup(i32* %64)
  %66 = and i32 %65, 32767
  store i32 %66, i32* %11, align 4
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @wacom_report_abs(i8* %67, i32 %68, i32 %69)
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @wacom_report_abs(i8* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %48, %36
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %15

81:                                               ; preds = %15
  %82 = load i32, i32* %6, align 4
  %83 = icmp sgt i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %86 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @wacom_mt_report_pointer_emulation(i8* %89, i32 1)
  ret i32 1
}

declare dso_local i32 @wacom_mt_slot(i8*, i32) #1

declare dso_local i32 @wacom_mt_report_slot_state(i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @wacom_report_abs(i8*, i32, i32) #1

declare dso_local i32 @wacom_mt_report_pointer_emulation(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
