; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534.c_set_frame_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534.c_set_frame_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_s = type { i64, i64, i64, i64 }
%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.sd = type { i64 }
%struct.rate_s.0 = type opaque

@set_frame_rate.rate_0 = internal constant [5 x %struct.rate_s] [%struct.rate_s { i64 60, i64 1, i64 193, i64 4 }, %struct.rate_s { i64 50, i64 1, i64 65, i64 2 }, %struct.rate_s { i64 40, i64 2, i64 193, i64 4 }, %struct.rate_s { i64 30, i64 4, i64 129, i64 2 }, %struct.rate_s { i64 15, i64 3, i64 65, i64 4 }], align 16
@set_frame_rate.rate_1 = internal constant [7 x %struct.rate_s] [%struct.rate_s { i64 125, i64 2, i64 129, i64 2 }, %struct.rate_s { i64 100, i64 2, i64 193, i64 4 }, %struct.rate_s { i64 75, i64 3, i64 193, i64 4 }, %struct.rate_s { i64 60, i64 4, i64 193, i64 4 }, %struct.rate_s { i64 50, i64 2, i64 65, i64 4 }, %struct.rate_s { i64 40, i64 3, i64 65, i64 4 }, %struct.rate_s { i64 30, i64 4, i64 65, i64 4 }], align 16
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"frame_rate: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @set_frame_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_frame_rate(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rate_s*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  store %struct.rate_s* getelementptr inbounds ([5 x %struct.rate_s], [5 x %struct.rate_s]* @set_frame_rate.rate_0, i64 0, i64 0), %struct.rate_s** %5, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.rate_s.0* bitcast ([5 x %struct.rate_s]* @set_frame_rate.rate_0 to %struct.rate_s.0*))
  store i32 %20, i32* %4, align 4
  br label %23

21:                                               ; preds = %1
  store %struct.rate_s* getelementptr inbounds ([7 x %struct.rate_s], [7 x %struct.rate_s]* @set_frame_rate.rate_1, i64 0, i64 0), %struct.rate_s** %5, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.rate_s.0* bitcast ([7 x %struct.rate_s]* @set_frame_rate.rate_1 to %struct.rate_s.0*))
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.sd*, %struct.sd** %3, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %33 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %40

37:                                               ; preds = %28
  %38 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %39 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %38, i32 1
  store %struct.rate_s* %39, %struct.rate_s** %5, align 8
  br label %24

40:                                               ; preds = %36, %24
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %43 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @sccb_reg_write(%struct.gspca_dev* %41, i32 17, i64 %44)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %48 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @sccb_reg_write(%struct.gspca_dev* %46, i32 13, i64 %49)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %53 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ov534_reg_write(%struct.gspca_dev* %51, i32 229, i64 %54)
  %56 = load i32, i32* @D_PROBE, align 4
  %57 = load %struct.rate_s*, %struct.rate_s** %5, align 8
  %58 = getelementptr inbounds %struct.rate_s, %struct.rate_s* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @PDEBUG(i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %59)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.rate_s.0*) #1

declare dso_local i32 @sccb_reg_write(%struct.gspca_dev*, i32, i64) #1

declare dso_local i32 @ov534_reg_write(%struct.gspca_dev*, i32, i64) #1

declare dso_local i32 @PDEBUG(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
