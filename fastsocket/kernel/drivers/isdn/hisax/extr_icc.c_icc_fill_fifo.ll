; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_icc.c_icc_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_icc.c_icc_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, i8*, %struct.TYPE_6__, i32, i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32*, i32)*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32* }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@L1_DEB_ISAC_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"icc_fill_fifo\00", align 1
@ICC_CMDR = common dso_local global i32 0, align 4
@FLG_DBUSY_TIMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"icc_fill_fifo dbusytimer running\00", align 1
@jiffies = common dso_local global i64 0, align 8
@DBUSY_TIMER_VALUE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"icc_fill_fifo cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @icc_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icc_fill_fifo(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %8 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @L1_DEB_ISAC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %15 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %22 = call i32 @debugl1(%struct.IsdnCardState* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %13, %1
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 7
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %128

29:                                               ; preds = %23
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %31 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %30, i32 0, i32 7
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %128

38:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp sgt i32 %39, 32
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  store i32 32, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %44 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %43, i32 0, i32 7
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %5, align 8
  %48 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %49 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %48, i32 0, i32 7
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @skb_pull(%struct.TYPE_5__* %50, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %55 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %59 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %58, i32 0, i32 6
  %60 = load i32 (%struct.IsdnCardState*, i32*, i32)*, i32 (%struct.IsdnCardState*, i32*, i32)** %59, align 8
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 %60(%struct.IsdnCardState* %61, i32* %62, i32 %63)
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %66 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %65, i32 0, i32 5
  %67 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %66, align 8
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %69 = load i32, i32* @ICC_CMDR, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 8, i32 10
  %74 = call i32 %67(%struct.IsdnCardState* %68, i32 %69, i32 %73)
  %75 = load i32, i32* @FLG_DBUSY_TIMER, align 4
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 4
  %78 = call i64 @test_and_set_bit(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %42
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %82 = call i32 @debugl1(%struct.IsdnCardState* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %84 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %83, i32 0, i32 3
  %85 = call i32 @del_timer(%struct.TYPE_6__* %84)
  br label %86

86:                                               ; preds = %80, %42
  %87 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %88 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %87, i32 0, i32 3
  %89 = call i32 @init_timer(%struct.TYPE_6__* %88)
  %90 = load i64, i64* @jiffies, align 8
  %91 = load i32, i32* @DBUSY_TIMER_VALUE, align 4
  %92 = load i32, i32* @HZ, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sdiv i32 %93, 1000
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %90, %95
  %97 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %98 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  %100 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %101 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %100, i32 0, i32 3
  %102 = call i32 @add_timer(%struct.TYPE_6__* %101)
  %103 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %104 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %86
  %110 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %111 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %6, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @sprintf(i8* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %6, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %6, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @QuickHex(i8* %119, i32* %120, i32 %121)
  %123 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %124 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %125 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @debugl1(%struct.IsdnCardState* %123, i8* %126)
  br label %128

128:                                              ; preds = %28, %37, %109, %86
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @skb_pull(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
