; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_ReportErrorStatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_ReportErrorStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Physical Device %d:%d Not Responding\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Spinning Up Drives\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Configuration Checksum Error\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Mirror Race Recovery Failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Mirror Race Recovery In Progress\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Physical Device %d:%d COD Mismatch\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Logical Drive Installation Aborted\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Mirror Race On A Critical Logical Drive\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"New Controller Configuration Found\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Fatal Memory Parity Error for Controller at\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Unknown Initialization Error %02X for Controller at\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8, i8, i8)* @DAC960_ReportErrorStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_ReportErrorStatus(%struct.TYPE_5__* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  %10 = load i8, i8* %7, align 1
  %11 = zext i8 %10 to i32
  switch i32 %11, label %58 [
    i32 0, label %12
    i32 8, label %19
    i32 48, label %30
    i32 96, label %33
    i32 112, label %36
    i32 144, label %39
    i32 160, label %46
    i32 176, label %49
    i32 208, label %52
    i32 240, label %55
  ]

12:                                               ; preds = %4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = load i8, i8* %9, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* %8, align 1
  %17 = zext i8 %16 to i32
  %18 = call i32 (i8*, %struct.TYPE_5__*, ...) @DAC960_Notice(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %13, i32 %15, i32 %17)
  br label %63

19:                                               ; preds = %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %63

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = call i32 (i8*, %struct.TYPE_5__*, ...) @DAC960_Notice(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %63

30:                                               ; preds = %4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = call i32 (i8*, %struct.TYPE_5__*, ...) @DAC960_Notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_5__* %31)
  br label %63

33:                                               ; preds = %4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = call i32 (i8*, %struct.TYPE_5__*, ...) @DAC960_Notice(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_5__* %34)
  br label %63

36:                                               ; preds = %4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = call i32 (i8*, %struct.TYPE_5__*, ...) @DAC960_Notice(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_5__* %37)
  br label %63

39:                                               ; preds = %4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 (i8*, %struct.TYPE_5__*, ...) @DAC960_Notice(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_5__* %40, i32 %42, i32 %44)
  br label %63

46:                                               ; preds = %4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = call i32 (i8*, %struct.TYPE_5__*, ...) @DAC960_Notice(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_5__* %47)
  br label %63

49:                                               ; preds = %4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = call i32 (i8*, %struct.TYPE_5__*, ...) @DAC960_Notice(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_5__* %50)
  br label %63

52:                                               ; preds = %4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = call i32 (i8*, %struct.TYPE_5__*, ...) @DAC960_Notice(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_5__* %53)
  br label %63

55:                                               ; preds = %4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = call i32 (i8*, %struct.TYPE_5__*, ...) @DAC960_Error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_5__* %56)
  store i32 1, i32* %5, align 4
  br label %64

58:                                               ; preds = %4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = load i8, i8* %7, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 (i8*, %struct.TYPE_5__*, ...) @DAC960_Error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_5__* %59, i32 %61)
  store i32 1, i32* %5, align 4
  br label %64

63:                                               ; preds = %52, %49, %46, %39, %36, %33, %30, %25, %24, %12
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %58, %55
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @DAC960_Notice(i8*, %struct.TYPE_5__*, ...) #1

declare dso_local i32 @DAC960_Error(i8*, %struct.TYPE_5__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
