; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-terratec.c_tt_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-terratec.c_tt_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terratec = type { i64, i32, i32 }

@WRT_EN = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@CLK_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.terratec*, i64)* @tt_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_setfreq(%struct.terratec* %0, i64 %1) #0 {
  %3 = alloca %struct.terratec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [25 x i8], align 16
  store %struct.terratec* %0, %struct.terratec** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.terratec*, %struct.terratec** %3, align 8
  %12 = getelementptr inbounds %struct.terratec, %struct.terratec* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.terratec*, %struct.terratec** %3, align 8
  %16 = getelementptr inbounds %struct.terratec, %struct.terratec* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %4, align 8
  %18 = udiv i64 %17, 160
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = getelementptr inbounds [25 x i8], [25 x i8]* %10, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 25)
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 10
  %24 = add nsw i32 %23, 10700
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %9, align 8
  store i32 13, i32* %6, align 4
  store i32 10, i32* %7, align 4
  store i32 102400, i32* %8, align 4
  br label %26

26:                                               ; preds = %48, %2
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = srem i64 %30, %32
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [25 x i8], [25 x i8]* %10, i64 0, i64 %38
  store i8 0, i8* %39, align 1
  br label %48

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [25 x i8], [25 x i8]* %10, i64 0, i64 %42
  store i8 1, i8* %43, align 1
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %44, %46
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %40, %36
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %8, align 4
  br label %26

55:                                               ; preds = %26
  store i32 24, i32* %6, align 4
  br label %56

56:                                               ; preds = %104, %55
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %107

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [25 x i8], [25 x i8]* %10, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %90

66:                                               ; preds = %59
  %67 = load i32, i32* @WRT_EN, align 4
  %68 = load i32, i32* @DATA, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.terratec*, %struct.terratec** %3, align 8
  %71 = getelementptr inbounds %struct.terratec, %struct.terratec* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @outb(i32 %69, i32 %72)
  %74 = load i32, i32* @WRT_EN, align 4
  %75 = load i32, i32* @DATA, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @CLK_ON, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.terratec*, %struct.terratec** %3, align 8
  %80 = getelementptr inbounds %struct.terratec, %struct.terratec* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @outb(i32 %78, i32 %81)
  %83 = load i32, i32* @WRT_EN, align 4
  %84 = load i32, i32* @DATA, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.terratec*, %struct.terratec** %3, align 8
  %87 = getelementptr inbounds %struct.terratec, %struct.terratec* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @outb(i32 %85, i32 %88)
  br label %103

90:                                               ; preds = %59
  %91 = load i32, i32* @WRT_EN, align 4
  %92 = load %struct.terratec*, %struct.terratec** %3, align 8
  %93 = getelementptr inbounds %struct.terratec, %struct.terratec* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @outb(i32 %91, i32 %94)
  %96 = load i32, i32* @WRT_EN, align 4
  %97 = load i32, i32* @CLK_ON, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.terratec*, %struct.terratec** %3, align 8
  %100 = getelementptr inbounds %struct.terratec, %struct.terratec* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @outb(i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %90, %66
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %6, align 4
  br label %56

107:                                              ; preds = %56
  %108 = load %struct.terratec*, %struct.terratec** %3, align 8
  %109 = getelementptr inbounds %struct.terratec, %struct.terratec* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @outb(i32 0, i32 %110)
  %112 = load %struct.terratec*, %struct.terratec** %3, align 8
  %113 = getelementptr inbounds %struct.terratec, %struct.terratec* %112, i32 0, i32 1
  %114 = call i32 @mutex_unlock(i32* %113)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
