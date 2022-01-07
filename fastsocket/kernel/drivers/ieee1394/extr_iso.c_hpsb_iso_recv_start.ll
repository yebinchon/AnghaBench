; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_recv_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_recv_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hpsb_iso*, i32, i64)* }

@HPSB_ISO_RECV = common dso_local global i64 0, align 8
@HPSB_ISO_DRIVER_STARTED = common dso_local global i32 0, align 4
@RECV_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_iso_recv_start(%struct.hpsb_iso* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hpsb_iso*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.hpsb_iso*, %struct.hpsb_iso** %6, align 8
  %13 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HPSB_ISO_RECV, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %71

18:                                               ; preds = %4
  %19 = load %struct.hpsb_iso*, %struct.hpsb_iso** %6, align 8
  %20 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HPSB_ISO_DRIVER_STARTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %71

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 8000
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = srem i32 %34, 8000
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 15, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.hpsb_iso*, %struct.hpsb_iso** %6, align 8
  %49 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.hpsb_iso*, i32, i64)*, i32 (%struct.hpsb_iso*, i32, i64)** %53, align 8
  %55 = load %struct.hpsb_iso*, %struct.hpsb_iso** %6, align 8
  %56 = load i32, i32* @RECV_START, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %58 = ptrtoint i32* %57 to i64
  %59 = call i32 %54(%struct.hpsb_iso* %55, i32 %56, i64 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %43
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %71

64:                                               ; preds = %43
  %65 = load i32, i32* @HPSB_ISO_DRIVER_STARTED, align 4
  %66 = load %struct.hpsb_iso*, %struct.hpsb_iso** %6, align 8
  %67 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %64, %62, %25, %17
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
