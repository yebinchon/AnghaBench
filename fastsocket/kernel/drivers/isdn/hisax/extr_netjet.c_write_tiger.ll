; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_write_tiger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_write_tiger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@NETJET_DMA_TXSIZE = common dso_local global i32 0, align 4
@NETJET_IRQM0_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"tiger warn write double dma %x/%x\00", align 1
@NETJET_IRQM0_WRITE_1 = common dso_local global i32 0, align 4
@L1_MODE_HDLC = common dso_local global i64 0, align 8
@L1_MODE_HDLC_56K = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_tiger(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %5 = load i32, i32* @NETJET_DMA_TXSIZE, align 4
  %6 = sdiv i32 %5, 2
  store i32 %6, i32* %4, align 4
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %8 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %11, %16
  %18 = load i32, i32* @NETJET_IRQM0_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %24 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @debugl1(%struct.IsdnCardState* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32)
  br label %151

34:                                               ; preds = %1
  %35 = load i32, i32* @NETJET_IRQM0_WRITE, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %38 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %44 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NETJET_IRQM0_WRITE, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %51 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %49
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %34
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %58 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NETJET_IRQM0_WRITE_1, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %56
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %67 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @NETJET_DMA_TXSIZE, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = getelementptr inbounds i32, i32* %76, i64 -1
  store i32* %77, i32** %3, align 8
  br label %91

78:                                               ; preds = %56
  %79 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %80 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = getelementptr inbounds i32, i32* %89, i64 -1
  store i32* %90, i32** %3, align 8
  br label %91

91:                                               ; preds = %78, %65
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %93 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @L1_MODE_HDLC, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %109, label %100

100:                                              ; preds = %91
  %101 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %102 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @L1_MODE_HDLC_56K, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %100, %91
  %110 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %111 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @write_raw(%struct.TYPE_10__* %112, i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %109, %100
  %117 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %118 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @L1_MODE_HDLC, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %134, label %125

125:                                              ; preds = %116
  %126 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %127 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @L1_MODE_HDLC_56K, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %125, %116
  %135 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %136 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %135, i32 0, i32 1
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 1
  %139 = load i32*, i32** %3, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @write_raw(%struct.TYPE_10__* %138, i32* %139, i32 %140)
  br label %142

142:                                              ; preds = %134, %125
  %143 = load i32, i32* @NETJET_IRQM0_WRITE, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %146 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, %144
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %142, %21
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32, i32) #1

declare dso_local i32 @write_raw(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
