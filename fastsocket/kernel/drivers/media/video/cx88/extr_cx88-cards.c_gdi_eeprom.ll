; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-cards.c_gdi_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-cards.c_gdi_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64, i32 }
%struct.cx88_core = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@gdi_tuner = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"GDI: tuner=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@CX88_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*, i64*)* @gdi_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdi_eeprom(%struct.cx88_core* %0, i64* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 13
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gdi_tuner, align 8
  %10 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gdi_tuner, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 13
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %12
  %22 = phi i8* [ %19, %12 ], [ null, %20 ]
  store i8* %22, i8** %5, align 8
  %23 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %28 ]
  %31 = call i32 @info_printk(%struct.cx88_core* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %5, align 8
  %33 = icmp eq i8* null, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %63

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gdi_tuner, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 13
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %44 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gdi_tuner, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 13
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  %55 = load i32, i32* @CX88_RADIO, align 4
  br label %57

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %60 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %34
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @info_printk(%struct.cx88_core*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
