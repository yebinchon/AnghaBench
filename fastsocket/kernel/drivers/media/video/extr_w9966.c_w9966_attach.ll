; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_w9966.c_w9966_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.parport = type { i8* }

@W9966_MAXCAMS = common dso_local global i32 0, align 4
@w9966_cams = common dso_local global %struct.TYPE_4__* null, align 8
@pardev = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"aggressive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @w9966_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w9966_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %52, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @W9966_MAXCAMS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %55

8:                                                ; preds = %4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @w9966_cams, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %52

17:                                               ; preds = %8
  %18 = load i32*, i32** @pardev, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = load i32*, i32** @pardev, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.parport*, %struct.parport** %2, align 8
  %32 = getelementptr inbounds %struct.parport, %struct.parport* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i32 %30, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %25, %17
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @w9966_cams, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = load %struct.parport*, %struct.parport** %2, align 8
  %42 = call i64 @w9966_init(%struct.TYPE_4__* %40, %struct.parport* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @w9966_cams, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = call i32 @w9966_term(%struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %44, %36
  br label %55

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51, %16
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %4

55:                                               ; preds = %50, %4
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @w9966_init(%struct.TYPE_4__*, %struct.parport*) #1

declare dso_local i32 @w9966_term(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
