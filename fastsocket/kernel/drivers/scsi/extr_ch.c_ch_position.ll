; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ch.c_ch_position.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ch.c_ch_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"position: 0x%x\0A\00", align 1
@CHET_MT = common dso_local global i64 0, align 8
@POSITION_TO_ELEMENT = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32)* @ch_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_position(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 0, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @CHET_MT, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %14, %4
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %23 = call i32 @memset(i32* %22, i32 0, i32 40)
  %24 = load i32, i32* @POSITION_TO_ELEMENT, align 4
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 5
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 2
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 4
  store i32 %42, i32* %43, align 16
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 5
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 8
  store i32 %50, i32* %51, align 16
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %54 = load i32, i32* @DMA_NONE, align 4
  %55 = call i32 @ch_do_scsi(%struct.TYPE_6__* %52, i32* %53, i32* null, i32 0, i32 %54)
  ret i32 %55
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ch_do_scsi(%struct.TYPE_6__*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
