; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_pp_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_cpia_pp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@parport_nr = common dso_local global i32* null, align 8
@PARPORT_CLASS_MEDIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CPIA_1\00", align 1
@PARPORT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @cpia_pp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpia_pp_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %2, align 8
  %4 = load i32*, i32** @parport_nr, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %37 [
    i32 128, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.parport*, %struct.parport** %2, align 8
  %9 = getelementptr inbounds %struct.parport, %struct.parport* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PARPORT_CLASS_MEDIA, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %33, label %16

16:                                               ; preds = %7
  %17 = load %struct.parport*, %struct.parport** %2, align 8
  %18 = getelementptr inbounds %struct.parport, %struct.parport* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %16
  %25 = load %struct.parport*, %struct.parport** %2, align 8
  %26 = getelementptr inbounds %struct.parport, %struct.parport* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @strncmp(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24, %16, %7
  br label %60

34:                                               ; preds = %24
  %35 = load %struct.parport*, %struct.parport** %2, align 8
  %36 = call i32 @cpia_pp_register(%struct.parport* %35)
  br label %60

37:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @PARPORT_MAX, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.parport*, %struct.parport** %2, align 8
  %44 = getelementptr inbounds %struct.parport, %struct.parport* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** @parport_nr, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %45, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.parport*, %struct.parport** %2, align 8
  %54 = call i32 @cpia_pp_register(%struct.parport* %53)
  br label %59

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %38

59:                                               ; preds = %52, %38
  br label %60

60:                                               ; preds = %33, %59, %34
  ret void
}

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @cpia_pp_register(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
