; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_xmit_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_xmit_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i64, i32, i32, i32, i32, i32 }

@HPSB_ISO_XMIT = common dso_local global i64 0, align 8
@HPSB_ISO_DRIVER_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_iso_xmit_start(%struct.hpsb_iso* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpsb_iso*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %9 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HPSB_ISO_XMIT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %67

14:                                               ; preds = %3
  %15 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %16 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HPSB_ISO_DRIVER_STARTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %67

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %33

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %27, 8000
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = srem i32 %30, 8000
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %36 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %41 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %49

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %44
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %52 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %57 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %55, %49
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %63 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.hpsb_iso*, %struct.hpsb_iso** %5, align 8
  %66 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %21, %13
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
