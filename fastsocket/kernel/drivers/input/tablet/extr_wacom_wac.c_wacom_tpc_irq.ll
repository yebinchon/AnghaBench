; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_tpc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_tpc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8* }
%struct.urb = type { i64 }
%struct.wacom_combo = type { %struct.urb* }

@.str = private unnamed_addr constant [35 x i8] c"wacom_tpc_irq: received report #%d\00", align 1
@WACOM_PKGLEN_TPC1FG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*, i8*)* @wacom_tpc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_tpc_irq(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wacom_wac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.urb*, align 8
  store %struct.wacom_wac* %0, %struct.wacom_wac** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %9 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.wacom_combo*
  %13 = getelementptr inbounds %struct.wacom_combo, %struct.wacom_combo* %12, i32 0, i32 0
  %14 = load %struct.urb*, %struct.urb** %13, align 8
  store %struct.urb* %14, %struct.urb** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8 signext %17)
  %19 = load %struct.urb*, %struct.urb** %7, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WACOM_PKGLEN_TPC1FG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %30, label %37

30:                                               ; preds = %24, %2
  %31 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.urb*, %struct.urb** %7, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @wacom_tpc_single_touch(%struct.wacom_wac* %31, i8* %32, i64 %35)
  store i32 %36, i32* %3, align 4
  br label %60

37:                                               ; preds = %24
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 13
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @wacom_tpc_mt_touch(%struct.wacom_wac* %44, i8* %45)
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %37
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @wacom_tpc_pen(%struct.wacom_wac* %54, i8* %55)
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %53, %43, %30
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @dbg(i8*, i8 signext) #1

declare dso_local i32 @wacom_tpc_single_touch(%struct.wacom_wac*, i8*, i64) #1

declare dso_local i32 @wacom_tpc_mt_touch(%struct.wacom_wac*, i8*) #1

declare dso_local i32 @wacom_tpc_pen(%struct.wacom_wac*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
