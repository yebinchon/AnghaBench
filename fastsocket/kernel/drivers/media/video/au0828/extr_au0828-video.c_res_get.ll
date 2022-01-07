; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_res_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_res_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_fh = type { i32, %struct.au0828_dev* }
%struct.au0828_dev = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"res: get %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_fh*, i32)* @res_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_get(%struct.au0828_fh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au0828_fh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.au0828_dev*, align 8
  store %struct.au0828_fh* %0, %struct.au0828_fh** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.au0828_fh*, %struct.au0828_fh** %4, align 8
  %8 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %7, i32 0, i32 1
  %9 = load %struct.au0828_dev*, %struct.au0828_dev** %8, align 8
  store %struct.au0828_dev* %9, %struct.au0828_dev** %6, align 8
  %10 = load %struct.au0828_fh*, %struct.au0828_fh** %4, align 8
  %11 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %19 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %22 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %29 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  store i32 0, i32* %3, align 4
  br label %47

31:                                               ; preds = %17
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.au0828_fh*, %struct.au0828_fh** %4, align 8
  %34 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %39 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %45 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %31, %27, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
