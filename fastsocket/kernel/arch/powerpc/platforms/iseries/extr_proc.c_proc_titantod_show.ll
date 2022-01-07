; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_proc.c_proc_titantod_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_proc.c_proc_titantod_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"Titan\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"  time base =          %016lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"  titan tod =          %016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"  xProcFreq =          %016x\0A\00", align 1
@xIoHriProcessorVpd = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"  xTimeBaseFreq =      %016x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  tb_ticks_per_jiffy = %lu\0A\00", align 1
@tb_ticks_per_jiffy = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"  tb_ticks_per_usec  = %lu\0A\00", align 1
@tb_ticks_per_usec = common dso_local global i64 0, align 8
@startTitan = common dso_local global i64 0, align 8
@startTb = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"  titan elapsed = %lu uSec\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"  tb elapsed    = %lu ticks\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"  titan jiffies = %lu.%04lu \0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"  tb jiffies    = %lu.%04lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"  new tb_ticks_per_jiffy = %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @proc_titantod_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_titantod_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = call i64 (...) @get_tb()
  store i64 %17, i64* %5, align 8
  %18 = call i64 (...) @HvCallXm_loadTod()
  store i64 %18, i64* %6, align 8
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xIoHriProcessorVpd, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xIoHriProcessorVpd, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load i64, i64* @tb_ticks_per_jiffy, align 8
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load i64, i64* @tb_ticks_per_usec, align 8
  %44 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* @startTitan, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %2
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* @startTitan, align 8
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* @startTb, align 8
  br label %107

50:                                               ; preds = %2
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @startTitan, align 8
  %53 = sub i64 %51, %52
  %54 = lshr i64 %53, 12
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @startTb, align 8
  %57 = sub i64 %55, %56
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* @HZ, align 4
  %60 = sdiv i32 1000000, %59
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %58, %61
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* @HZ, align 4
  %65 = sdiv i32 1000000, %64
  %66 = sext i32 %65 to i64
  %67 = mul i64 %63, %66
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %10, align 8
  %70 = sub i64 %68, %69
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @tb_ticks_per_jiffy, align 8
  %73 = udiv i64 %71, %72
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @tb_ticks_per_jiffy, align 8
  %76 = mul i64 %74, %75
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %13, align 8
  %79 = sub i64 %77, %78
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @tb_ticks_per_usec, align 8
  %82 = udiv i64 %80, %81
  store i64 %82, i64* %15, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* @HZ, align 4
  %85 = sdiv i32 1000000, %84
  %86 = sext i32 %85 to i64
  %87 = mul i64 %83, %86
  %88 = load i64, i64* %7, align 8
  %89 = udiv i64 %87, %88
  store i64 %89, i64* %16, align 8
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %91)
  %93 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %94 = load i64, i64* %8, align 8
  %95 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i64 %94)
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i64 %97, i64 %98)
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %15, align 8
  %103 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 %101, i64 %102)
  %104 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %105 = load i64, i64* %16, align 8
  %106 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i64 %105)
  br label %107

107:                                              ; preds = %50, %47
  ret i32 0
}

declare dso_local i64 @get_tb(...) #1

declare dso_local i64 @HvCallXm_loadTod(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
