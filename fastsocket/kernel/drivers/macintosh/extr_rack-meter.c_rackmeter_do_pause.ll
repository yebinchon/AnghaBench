; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_rack-meter.c_rackmeter_do_pause.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_rack-meter.c_rackmeter_do_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rackmeter = type { i32, i32, %struct.TYPE_2__*, %struct.rackmeter_dma* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rackmeter_dma = type { i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"rackmeter: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"paused\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"started\00", align 1
@SAMPLE_COUNT = common dso_local global i32 0, align 4
@RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rackmeter*, i32)* @rackmeter_do_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rackmeter_do_pause(%struct.rackmeter* %0, i32 %1) #0 {
  %3 = alloca %struct.rackmeter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rackmeter_dma*, align 8
  store %struct.rackmeter* %0, %struct.rackmeter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %7 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %6, i32 0, i32 3
  %8 = load %struct.rackmeter_dma*, %struct.rackmeter_dma** %7, align 8
  store %struct.rackmeter_dma* %8, %struct.rackmeter_dma** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %16 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %21 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @DBDMA_DO_STOP(%struct.TYPE_2__* %22)
  br label %68

24:                                               ; preds = %2
  %25 = load %struct.rackmeter_dma*, %struct.rackmeter_dma** %5, align 8
  %26 = getelementptr inbounds %struct.rackmeter_dma, %struct.rackmeter_dma* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SAMPLE_COUNT, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32 %27, i32 0, i32 %31)
  %33 = load %struct.rackmeter_dma*, %struct.rackmeter_dma** %5, align 8
  %34 = getelementptr inbounds %struct.rackmeter_dma, %struct.rackmeter_dma* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SAMPLE_COUNT, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(i32 %35, i32 0, i32 %39)
  %41 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %42 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %41, i32 0, i32 3
  %43 = load %struct.rackmeter_dma*, %struct.rackmeter_dma** %42, align 8
  %44 = getelementptr inbounds %struct.rackmeter_dma, %struct.rackmeter_dma* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = call i32 (...) @mb()
  %46 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %47 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = call i32 @out_le32(i32* %49, i32 0)
  %51 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %52 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %56 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @out_le32(i32* %54, i32 %57)
  %59 = load %struct.rackmeter*, %struct.rackmeter** %3, align 8
  %60 = getelementptr inbounds %struct.rackmeter, %struct.rackmeter* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* @RUN, align 4
  %64 = shl i32 %63, 16
  %65 = load i32, i32* @RUN, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @out_le32(i32* %62, i32 %66)
  br label %68

68:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @DBDMA_DO_STOP(%struct.TYPE_2__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @out_le32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
