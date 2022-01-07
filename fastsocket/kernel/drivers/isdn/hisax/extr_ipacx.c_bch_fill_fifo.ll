; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_bch_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_bch_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, i8*, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.IsdnCardState* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.IsdnCardState = type { i32, i32 (%struct.IsdnCardState*, i32, i32, i32)* }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bch_fill_fifo()\00", align 1
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@B_FIFO_SIZE = common dso_local global i32 0, align 4
@IPACX_XFIFOB = common dso_local global i32 0, align 4
@IPACX_CMDRB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"chb_fill_fifo() B-%d cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @bch_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_fill_fifo(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %11 = load %struct.BCState*, %struct.BCState** %2, align 8
  %12 = getelementptr inbounds %struct.BCState, %struct.BCState* %11, i32 0, i32 5
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %12, align 8
  store %struct.IsdnCardState* %13, %struct.IsdnCardState** %3, align 8
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %15 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @L1_DEB_HSCX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %22 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %29 = call i32 @debugl1(%struct.IsdnCardState* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %20, %1
  %31 = load %struct.BCState*, %struct.BCState** %2, align 8
  %32 = getelementptr inbounds %struct.BCState, %struct.BCState* %31, i32 0, i32 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %149

36:                                               ; preds = %30
  %37 = load %struct.BCState*, %struct.BCState** %2, align 8
  %38 = getelementptr inbounds %struct.BCState, %struct.BCState* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %149

44:                                               ; preds = %36
  %45 = load %struct.BCState*, %struct.BCState** %2, align 8
  %46 = getelementptr inbounds %struct.BCState, %struct.BCState* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %9, align 4
  %50 = load %struct.BCState*, %struct.BCState** %2, align 8
  %51 = getelementptr inbounds %struct.BCState, %struct.BCState* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @L1_MODE_TRANS, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  store i32 %56, i32* %4, align 4
  %57 = load %struct.BCState*, %struct.BCState** %2, align 8
  %58 = getelementptr inbounds %struct.BCState, %struct.BCState* %57, i32 0, i32 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @B_FIFO_SIZE, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  %65 = load i32, i32* @B_FIFO_SIZE, align 4
  store i32 %65, i32* %5, align 4
  br label %72

66:                                               ; preds = %44
  %67 = load %struct.BCState*, %struct.BCState** %2, align 8
  %68 = getelementptr inbounds %struct.BCState, %struct.BCState* %67, i32 0, i32 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %66, %64
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %6, align 4
  %74 = load %struct.BCState*, %struct.BCState** %2, align 8
  %75 = getelementptr inbounds %struct.BCState, %struct.BCState* %74, i32 0, i32 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %7, align 8
  store i32* %78, i32** %8, align 8
  %79 = load %struct.BCState*, %struct.BCState** %2, align 8
  %80 = getelementptr inbounds %struct.BCState, %struct.BCState* %79, i32 0, i32 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @skb_pull(%struct.TYPE_6__* %81, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.BCState*, %struct.BCState** %2, align 8
  %86 = getelementptr inbounds %struct.BCState, %struct.BCState* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.BCState*, %struct.BCState** %2, align 8
  %91 = getelementptr inbounds %struct.BCState, %struct.BCState* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %89
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %100, %72
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %6, align 4
  %99 = icmp ne i32 %97, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %102 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %101, i32 0, i32 1
  %103 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %102, align 8
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @IPACX_XFIFOB, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %8, align 8
  %109 = load i32, i32* %107, align 4
  %110 = call i32 %103(%struct.IsdnCardState* %104, i32 %105, i32 %106, i32 %109)
  br label %96

111:                                              ; preds = %96
  %112 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %113 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %112, i32 0, i32 1
  %114 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %113, align 8
  %115 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @IPACX_CMDRB, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 8, i32 10
  %122 = call i32 %114(%struct.IsdnCardState* %115, i32 %116, i32 %117, i32 %121)
  %123 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %124 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %111
  %130 = load %struct.BCState*, %struct.BCState** %2, align 8
  %131 = getelementptr inbounds %struct.BCState, %struct.BCState* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %10, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @sprintf(i8* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load i8*, i8** %10, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %10, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @QuickHex(i8* %140, i32* %141, i32 %142)
  %144 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %145 = load %struct.BCState*, %struct.BCState** %2, align 8
  %146 = getelementptr inbounds %struct.BCState, %struct.BCState* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @debugl1(%struct.IsdnCardState* %144, i8* %147)
  br label %149

149:                                              ; preds = %35, %43, %129, %111
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @skb_pull(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
