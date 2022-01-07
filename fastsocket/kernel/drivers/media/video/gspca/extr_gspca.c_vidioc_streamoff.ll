; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.gspca_dev = type { i32, i64, i32, i32, i32, i32, i64, %struct.file*, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %73

18:                                               ; preds = %3
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 0
  %21 = call i64 @mutex_lock_interruptible(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ERESTARTSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %73

26:                                               ; preds = %18
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %68

32:                                               ; preds = %26
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 7
  %35 = load %struct.file*, %struct.file** %34, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = icmp ne %struct.file* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %68

41:                                               ; preds = %32
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 5
  %44 = call i64 @mutex_lock_interruptible(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ERESTARTSYS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %68

49:                                               ; preds = %41
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %51 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %53 = call i32 @gspca_stream_off(%struct.gspca_dev* %52)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 5
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %58 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %57, i32 0, i32 4
  %59 = call i32 @wake_up_interruptible(i32* %58)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %61 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %60, i32 0, i32 3
  %62 = call i32 @atomic_set(i32* %61, i32 0)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %64 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %63, i32 0, i32 2
  %65 = call i32 @atomic_set(i32* %64, i32 0)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %67 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %49, %46, %38, %31
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %70 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %23, %15
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @gspca_stream_off(%struct.gspca_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
