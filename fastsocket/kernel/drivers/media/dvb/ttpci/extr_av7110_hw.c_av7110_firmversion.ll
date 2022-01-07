; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_hw.c_av7110_firmversion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_hw.c_av7110_firmversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COMTYPE_REQUEST = common dso_local global i32 0, align 4
@ReqVersion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"dvb-ttpci: failed to boot firmware @ card %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"dvb-ttpci: info @ card %d: firm %08x, rtsl %08x, vid %08x, app %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"dvb-ttpci: firmware @ card %d supports CI link layer interface\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"dvb-ttpci: no firmware support for CI link layer interface @ card %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_firmversion(%struct.av7110* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca [20 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  %6 = load i32, i32* @COMTYPE_REQUEST, align 4
  %7 = shl i32 %6, 8
  %8 = load i32, i32* @ReqVersion, align 4
  %9 = add nsw i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.av7110*, %struct.av7110** %3, align 8
  %11 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.av7110* %10)
  %12 = load %struct.av7110*, %struct.av7110** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %15 = call i64 @av7110_fw_query(%struct.av7110* %12, i32 %13, i32* %14, i32 16)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.av7110*, %struct.av7110** %3, align 8
  %19 = getelementptr inbounds %struct.av7110, %struct.av7110* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %101

25:                                               ; preds = %1
  %26 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  %28 = shl i32 %27, 16
  %29 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %28, %30
  %32 = load %struct.av7110*, %struct.av7110** %3, align 8
  %33 = getelementptr inbounds %struct.av7110, %struct.av7110* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 2
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 16
  %37 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %36, %38
  %40 = load %struct.av7110*, %struct.av7110** %3, align 8
  %41 = getelementptr inbounds %struct.av7110, %struct.av7110* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 4
  %43 = load i32, i32* %42, align 16
  %44 = shl i32 %43, 16
  %45 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %44, %46
  %48 = load %struct.av7110*, %struct.av7110** %3, align 8
  %49 = getelementptr inbounds %struct.av7110, %struct.av7110* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 6
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %51, 16
  %53 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 7
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %52, %54
  %56 = load %struct.av7110*, %struct.av7110** %3, align 8
  %57 = getelementptr inbounds %struct.av7110, %struct.av7110* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 8
  %59 = load i32, i32* %58, align 16
  %60 = shl i32 %59, 16
  %61 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 9
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %60, %62
  %64 = load %struct.av7110*, %struct.av7110** %3, align 8
  %65 = getelementptr inbounds %struct.av7110, %struct.av7110* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.av7110*, %struct.av7110** %3, align 8
  %67 = getelementptr inbounds %struct.av7110, %struct.av7110* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.av7110*, %struct.av7110** %3, align 8
  %71 = getelementptr inbounds %struct.av7110, %struct.av7110* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.av7110*, %struct.av7110** %3, align 8
  %74 = getelementptr inbounds %struct.av7110, %struct.av7110* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.av7110*, %struct.av7110** %3, align 8
  %77 = getelementptr inbounds %struct.av7110, %struct.av7110* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.av7110*, %struct.av7110** %3, align 8
  %80 = getelementptr inbounds %struct.av7110, %struct.av7110* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72, i32 %75, i32 %78, i32 %81)
  %83 = load %struct.av7110*, %struct.av7110** %3, align 8
  %84 = getelementptr inbounds %struct.av7110, %struct.av7110* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @FW_CI_LL_SUPPORT(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %25
  %89 = load %struct.av7110*, %struct.av7110** %3, align 8
  %90 = getelementptr inbounds %struct.av7110, %struct.av7110* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  br label %100

94:                                               ; preds = %25
  %95 = load %struct.av7110*, %struct.av7110** %3, align 8
  %96 = getelementptr inbounds %struct.av7110, %struct.av7110* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %94, %88
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %17
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i64 @av7110_fw_query(%struct.av7110*, i32, i32*, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i64 @FW_CI_LL_SUPPORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
