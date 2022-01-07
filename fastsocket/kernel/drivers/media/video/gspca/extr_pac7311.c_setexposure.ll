; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac7311.c_setexposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac7311.c_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setexposure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 120, %9
  %11 = sdiv i32 %10, 1000
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 63
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 63, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %19, %14
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = call i32 @reg_w(%struct.gspca_dev* %21, i32 255, i32 4)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @reg_w(%struct.gspca_dev* %23, i32 2, i32 %24)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = call i32 @reg_w(%struct.gspca_dev* %26, i32 255, i32 1)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %20
  %42 = load i32, i32* %4, align 4
  %43 = icmp sle i32 %42, 3
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = call i32 @reg_w(%struct.gspca_dev* %45, i32 8, i32 9)
  br label %50

47:                                               ; preds = %41, %20
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = call i32 @reg_w(%struct.gspca_dev* %48, i32 8, i32 8)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = call i32 @reg_w(%struct.gspca_dev* %51, i32 17, i32 1)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
