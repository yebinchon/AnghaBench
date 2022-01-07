; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci1394_stop_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci1394_stop_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ohci = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Runaway loop while stopping context: %s...\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: dma prg stopped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ohci1394_stop_context(%struct.ti_ohci* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_ohci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ti_ohci* %0, %struct.ti_ohci** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @reg_write(%struct.ti_ohci* %9, i32 %10, i32 32768)
  br label %12

12:                                               ; preds = %33, %3
  %13 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @reg_read(%struct.ti_ohci* %13, i32 %14)
  %16 = and i32 %15, 1024
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 5000
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  br label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %29 ]
  %32 = call i32 @PRINT(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 1, i32* %4, align 4
  br label %44

33:                                               ; preds = %18
  %34 = call i32 (...) @mb()
  %35 = call i32 @udelay(i32 10)
  br label %12

36:                                               ; preds = %12
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @KERN_ERR, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @PRINT(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %36
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.ti_ohci*, i32) #1

declare dso_local i32 @PRINT(i32, i8*, i8*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
