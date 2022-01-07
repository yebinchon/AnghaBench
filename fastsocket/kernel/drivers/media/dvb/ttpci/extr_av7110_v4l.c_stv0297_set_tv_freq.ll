; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_stv0297_set_tv_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_stv0297_set_tv_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64 }
%struct.av7110 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, i32)* @stv0297_set_tv_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0297_set_tv_freq(%struct.saa7146_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.av7110*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %10 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.av7110*
  store %struct.av7110* %12, %struct.av7110** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 38900000
  %15 = add nsw i32 %14, 31250
  %16 = sdiv i32 %15, 62500
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 127
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 206, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 45000000
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %74

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 137000000
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 1, i32* %34, align 4
  br label %50

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 403000000
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 2, i32* %39, align 4
  br label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 860000000
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 4, i32* %44, align 4
  br label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %74

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %38
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.av7110*, %struct.av7110** %6, align 8
  %53 = getelementptr inbounds %struct.av7110, %struct.av7110* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.TYPE_4__*, i32)* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load %struct.av7110*, %struct.av7110** %6, align 8
  %61 = getelementptr inbounds %struct.av7110, %struct.av7110* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %64, align 8
  %66 = load %struct.av7110*, %struct.av7110** %6, align 8
  %67 = getelementptr inbounds %struct.av7110, %struct.av7110* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 %65(%struct.TYPE_4__* %68, i32 1)
  br label %70

70:                                               ; preds = %59, %51
  %71 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %73 = call i32 @tuner_write(%struct.saa7146_dev* %71, i32 99, i32* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %45, %27
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @tuner_write(%struct.saa7146_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
