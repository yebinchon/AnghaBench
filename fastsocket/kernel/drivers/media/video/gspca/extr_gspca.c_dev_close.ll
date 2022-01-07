; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_dev_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_dev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { %struct.gspca_dev* }
%struct.gspca_dev = type { i32, i32, i32, i64, i64, %struct.file* }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"[%s] close\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"close done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @dev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_close(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.gspca_dev*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  store %struct.gspca_dev* %7, %struct.gspca_dev** %4, align 8
  %8 = load i32, i32* @D_STREAM, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i32, i8*, ...) @PDEBUG(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 0
  %15 = call i64 @mutex_lock_interruptible(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ERESTARTSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %57

20:                                               ; preds = %1
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 5
  %23 = load %struct.file*, %struct.file** %22, align 8
  %24 = load %struct.file*, %struct.file** %3, align 8
  %25 = icmp eq %struct.file* %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %20
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %33 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %38 = call i32 @gspca_stream_off(%struct.gspca_dev* %37)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 2
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %42

42:                                               ; preds = %31, %26
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %44 = call i32 @frame_free(%struct.gspca_dev* %43)
  br label %45

45:                                               ; preds = %42, %20
  %46 = load %struct.file*, %struct.file** %3, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  store %struct.gspca_dev* null, %struct.gspca_dev** %47, align 8
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @module_put(i32 %50)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* @D_STREAM, align 4
  %56 = call i32 (i32, i8*, ...) @PDEBUG(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %45, %17
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gspca_stream_off(%struct.gspca_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @frame_free(%struct.gspca_dev*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
