; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_dev_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_dev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.gspca_dev* }
%struct.gspca_dev = type { i64, i64, i32, i32, i32, i32 }

@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@GSPCA_MEMORY_NO = common dso_local global i64 0, align 8
@POLLERR = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @dev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %9, align 8
  store %struct.gspca_dev* %10, %struct.gspca_dev** %6, align 8
  %11 = load i32, i32* @D_FRAM, align 4
  %12 = call i32 @PDEBUG(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 5
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @poll_wait(%struct.file* %13, i32* %15, i32* %16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GSPCA_MEMORY_NO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = call i32 @read_alloc(%struct.gspca_dev* %24, %struct.file* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @POLLERR, align 4
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 3
  %35 = call i64 @mutex_lock_interruptible(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @POLLERR, align 4
  store i32 %38, i32* %3, align 4
  br label %64

39:                                               ; preds = %32
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %44 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %43, i32 0, i32 4
  %45 = call i64 @atomic_read(i32* %44)
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @POLLIN, align 4
  %49 = load i32, i32* @POLLRDNORM, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %7, align 4
  br label %52

51:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %54 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %53, i32 0, i32 3
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @POLLHUP, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60, %37, %29
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @read_alloc(%struct.gspca_dev*, %struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
