; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_qt1010.c_qt1010_init_meas1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_qt1010.c_qt1010_init_meas1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qt1010_priv = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i32 }

@QT1010_WR = common dso_local global i64 0, align 8
@QT1010_RD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"compare reg:%02x %02x %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qt1010_priv*, i64, i64, i64, i64*)* @qt1010_init_meas1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt1010_init_meas1(%struct.qt1010_priv* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qt1010_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [4 x %struct.TYPE_3__], align 16
  store %struct.qt1010_priv* %0, %struct.qt1010_priv** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %16, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* @QT1010_WR, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* @QT1010_WR, align 8
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i64 30, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 5
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* @QT1010_WR, align 8
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i64 30, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* @QT1010_RD, align 8
  store i64 %46, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i64 255, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  store i32 0, i32* %52, align 4
  store i64 0, i64* %12, align 8
  br label %53

53:                                               ; preds = %90, %5
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %16, i64 0, i64 0
  %56 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %55)
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %53
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %16, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @QT1010_WR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load %struct.qt1010_priv*, %struct.qt1010_priv** %7, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %16, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %16, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @qt1010_writereg(%struct.qt1010_priv* %66, i32 %70, i32 %74)
  store i32 %75, i32* %15, align 4
  br label %84

76:                                               ; preds = %58
  %77 = load %struct.qt1010_priv*, %struct.qt1010_priv** %7, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %16, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = call i32 @qt1010_readreg(%struct.qt1010_priv* %77, i64 %82, i64* %14)
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %76, %65
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %6, align 4
  br label %117

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %12, align 8
  br label %53

93:                                               ; preds = %53
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i64, i64* %14, align 8
  store i64 %95, i64* %13, align 8
  %96 = load %struct.qt1010_priv*, %struct.qt1010_priv** %7, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @qt1010_readreg(%struct.qt1010_priv* %96, i64 %97, i64* %14)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %117

103:                                              ; preds = %94
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %104, i64 %105, i64 %106)
  br label %108

108:                                              ; preds = %103
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %94, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* %13, align 8
  %114 = load i64*, i64** %11, align 8
  store i64 %113, i64* %114, align 8
  %115 = load %struct.qt1010_priv*, %struct.qt1010_priv** %7, align 8
  %116 = call i32 @qt1010_writereg(%struct.qt1010_priv* %115, i32 30, i32 0)
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %112, %101, %87
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @qt1010_writereg(%struct.qt1010_priv*, i32, i32) #1

declare dso_local i32 @qt1010_readreg(%struct.qt1010_priv*, i64, i64*) #1

declare dso_local i32 @dprintk(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
