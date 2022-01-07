; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_event.c_indicate_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/sc/extr_event.c_indicate_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s: Event data: %s\0A\00", align 1
@sc_adapter = common dso_local global %struct.TYPE_9__** null, align 8
@events = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @indicate_status(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %4
  %13 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sc_adapter, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %13, i64 %15
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 (i8*, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20)
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %33 [
    i32 129, label %23
    i32 128, label %28
  ]

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @memcpy(i32* %25, i8* %26, i32 4)
  br label %39

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @memcpy(i32* %30, i8* %31, i32 4)
  br label %39

33:                                               ; preds = %12
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strcpy(i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %33, %28, %23
  br label %40

40:                                               ; preds = %39, %4
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sc_adapter, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %43, i64 %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sc_adapter, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %53, i64 %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %60, align 8
  %62 = call i32 %61(%struct.TYPE_8__* %9)
  ret i32 %62
}

declare dso_local i32 @pr_debug(i8*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
