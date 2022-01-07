; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_eeprom.c_i_EepromReadTimerHeader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_addi_eeprom.c_i_EepromReadTimerHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_TimerMainHeader = type { i16, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8, i8, i16, i8, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_EepromReadTimerHeader(i16 zeroext %0, i8* %1, i16 zeroext %2, %struct.str_TimerMainHeader* %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.str_TimerMainHeader*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store i16 %0, i16* %5, align 2
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  store %struct.str_TimerMainHeader* %3, %struct.str_TimerMainHeader** %8, align 8
  store i16 0, i16* %10, align 2
  %12 = load i16, i16* %5, align 2
  %13 = load i8*, i8** %6, align 8
  %14 = load i16, i16* %7, align 2
  %15 = zext i16 %14 to i32
  %16 = add nsw i32 256, %15
  %17 = add nsw i32 %16, 6
  %18 = call i8* @w_EepromReadWord(i16 zeroext %12, i8* %13, i32 %17)
  %19 = ptrtoint i8* %18 to i16
  %20 = load %struct.str_TimerMainHeader*, %struct.str_TimerMainHeader** %8, align 8
  %21 = getelementptr inbounds %struct.str_TimerMainHeader, %struct.str_TimerMainHeader* %20, i32 0, i32 0
  store i16 %19, i16* %21, align 8
  store i16 0, i16* %9, align 2
  br label %22

22:                                               ; preds = %138, %4
  %23 = load i16, i16* %9, align 2
  %24 = zext i16 %23 to i32
  %25 = load %struct.str_TimerMainHeader*, %struct.str_TimerMainHeader** %8, align 8
  %26 = getelementptr inbounds %struct.str_TimerMainHeader, %struct.str_TimerMainHeader* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %141

30:                                               ; preds = %22
  %31 = load i16, i16* %5, align 2
  %32 = load i8*, i8** %6, align 8
  %33 = load i16, i16* %7, align 2
  %34 = zext i16 %33 to i32
  %35 = add nsw i32 256, %34
  %36 = add nsw i32 %35, 8
  %37 = load i16, i16* %10, align 2
  %38 = zext i16 %37 to i32
  %39 = add nsw i32 %36, %38
  %40 = add nsw i32 %39, 0
  %41 = call i8* @w_EepromReadWord(i16 zeroext %31, i8* %32, i32 %40)
  %42 = load %struct.str_TimerMainHeader*, %struct.str_TimerMainHeader** %8, align 8
  %43 = getelementptr inbounds %struct.str_TimerMainHeader, %struct.str_TimerMainHeader* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i16, i16* %9, align 2
  %46 = zext i16 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  store i8* %41, i8** %48, align 8
  %49 = load i16, i16* %5, align 2
  %50 = load i8*, i8** %6, align 8
  %51 = load i16, i16* %7, align 2
  %52 = zext i16 %51 to i32
  %53 = add nsw i32 256, %52
  %54 = add nsw i32 %53, 8
  %55 = load i16, i16* %10, align 2
  %56 = zext i16 %55 to i32
  %57 = add nsw i32 %54, %56
  %58 = add nsw i32 %57, 2
  %59 = call i8* @w_EepromReadWord(i16 zeroext %49, i8* %50, i32 %58)
  %60 = ptrtoint i8* %59 to i16
  store i16 %60, i16* %11, align 2
  %61 = load i16, i16* %11, align 2
  %62 = zext i16 %61 to i32
  %63 = ashr i32 %62, 10
  %64 = trunc i32 %63 to i8
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 63
  %67 = trunc i32 %66 to i8
  %68 = load %struct.str_TimerMainHeader*, %struct.str_TimerMainHeader** %8, align 8
  %69 = getelementptr inbounds %struct.str_TimerMainHeader, %struct.str_TimerMainHeader* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i16, i16* %9, align 2
  %72 = zext i16 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i8 %67, i8* %74, align 8
  %75 = load i16, i16* %11, align 2
  %76 = zext i16 %75 to i32
  %77 = ashr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 63
  %81 = trunc i32 %80 to i8
  %82 = load %struct.str_TimerMainHeader*, %struct.str_TimerMainHeader** %8, align 8
  %83 = getelementptr inbounds %struct.str_TimerMainHeader, %struct.str_TimerMainHeader* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i16, i16* %9, align 2
  %86 = zext i16 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i8 %81, i8* %88, align 1
  %89 = load i16, i16* %5, align 2
  %90 = load i8*, i8** %6, align 8
  %91 = load i16, i16* %7, align 2
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 256, %92
  %94 = add nsw i32 %93, 8
  %95 = load i16, i16* %10, align 2
  %96 = zext i16 %95 to i32
  %97 = add nsw i32 %94, %96
  %98 = add nsw i32 %97, 4
  %99 = call i8* @w_EepromReadWord(i16 zeroext %89, i8* %90, i32 %98)
  %100 = ptrtoint i8* %99 to i16
  store i16 %100, i16* %11, align 2
  %101 = load i16, i16* %11, align 2
  %102 = zext i16 %101 to i32
  %103 = ashr i32 %102, 6
  %104 = and i32 %103, 1023
  %105 = trunc i32 %104 to i16
  %106 = load %struct.str_TimerMainHeader*, %struct.str_TimerMainHeader** %8, align 8
  %107 = getelementptr inbounds %struct.str_TimerMainHeader, %struct.str_TimerMainHeader* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i16, i16* %9, align 2
  %110 = zext i16 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  store i16 %105, i16* %112, align 2
  %113 = load i16, i16* %11, align 2
  %114 = trunc i16 %113 to i8
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 63
  %117 = trunc i32 %116 to i8
  %118 = load %struct.str_TimerMainHeader*, %struct.str_TimerMainHeader** %8, align 8
  %119 = getelementptr inbounds %struct.str_TimerMainHeader, %struct.str_TimerMainHeader* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i16, i16* %9, align 2
  %122 = zext i16 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  store i8 %117, i8* %124, align 4
  %125 = load %struct.str_TimerMainHeader*, %struct.str_TimerMainHeader** %8, align 8
  %126 = getelementptr inbounds %struct.str_TimerMainHeader, %struct.str_TimerMainHeader* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i16, i16* %9, align 2
  %129 = zext i16 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 4
  %132 = load i8*, i8** %131, align 8
  %133 = load i16, i16* %10, align 2
  %134 = zext i16 %133 to i32
  %135 = zext i32 %134 to i64
  %136 = getelementptr i8, i8* %132, i64 %135
  %137 = ptrtoint i8* %136 to i16
  store i16 %137, i16* %10, align 2
  br label %138

138:                                              ; preds = %30
  %139 = load i16, i16* %9, align 2
  %140 = add i16 %139, 1
  store i16 %140, i16* %9, align 2
  br label %22

141:                                              ; preds = %22
  ret i32 0
}

declare dso_local i8* @w_EepromReadWord(i16 zeroext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
