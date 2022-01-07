; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_overlay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa7134_fh = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }

@saa7134_no_overlay = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"no_overlay\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RESOURCE_OVERLAY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @saa7134_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_overlay(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7134_fh*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %12, %struct.saa7134_fh** %8, align 8
  %13 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %14 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %13, i32 0, i32 0
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %14, align 8
  store %struct.saa7134_dev* %15, %struct.saa7134_dev** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %3
  %19 = load i64, i64* @saa7134_no_overlay, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %74

25:                                               ; preds = %18
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %27 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %28 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %29 = call i32 @res_get(%struct.saa7134_dev* %26, %struct.saa7134_fh* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %74

34:                                               ; preds = %25
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %36 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %40 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %41 = call i32 @start_preview(%struct.saa7134_dev* %39, %struct.saa7134_fh* %40)
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %43 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %34, %3
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %46
  %50 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %51 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %52 = call i32 @res_check(%struct.saa7134_fh* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %74

57:                                               ; preds = %49
  %58 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %59 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %63 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %64 = call i32 @stop_preview(%struct.saa7134_dev* %62, %struct.saa7134_fh* %63)
  %65 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %66 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %65, i32 0, i32 0
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %70 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %71 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %72 = call i32 @res_free(%struct.saa7134_dev* %69, %struct.saa7134_fh* %70, i32 %71)
  br label %73

73:                                               ; preds = %57, %46
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %54, %31, %21
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @res_get(%struct.saa7134_dev*, %struct.saa7134_fh*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @start_preview(%struct.saa7134_dev*, %struct.saa7134_fh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @res_check(%struct.saa7134_fh*, i32) #1

declare dso_local i32 @stop_preview(%struct.saa7134_dev*, %struct.saa7134_fh*) #1

declare dso_local i32 @res_free(%struct.saa7134_dev*, %struct.saa7134_fh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
