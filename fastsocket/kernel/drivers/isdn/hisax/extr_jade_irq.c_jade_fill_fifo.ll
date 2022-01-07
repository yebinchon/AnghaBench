; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_jade_irq.c_jade_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_jade_irq.c_jade_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, i8*, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.IsdnCardState* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.IsdnCardState = type { i32 }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"jade_fill_fifo\00", align 1
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@jade_HDLC_XCMD = common dso_local global i32 0, align 4
@jadeXCMD_XF = common dso_local global i32 0, align 4
@jadeXCMD_XME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"jade_fill_fifo %c cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @jade_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jade_fill_fifo(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %9 = load %struct.BCState*, %struct.BCState** %2, align 8
  %10 = getelementptr inbounds %struct.BCState, %struct.BCState* %9, i32 0, i32 5
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %10, align 8
  store %struct.IsdnCardState* %11, %struct.IsdnCardState** %3, align 8
  store i32 32, i32* %6, align 4
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @L1_DEB_HSCX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %27 = call i32 @debugl1(%struct.IsdnCardState* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %18, %1
  %29 = load %struct.BCState*, %struct.BCState** %2, align 8
  %30 = getelementptr inbounds %struct.BCState, %struct.BCState* %29, i32 0, i32 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %156

34:                                               ; preds = %28
  %35 = load %struct.BCState*, %struct.BCState** %2, align 8
  %36 = getelementptr inbounds %struct.BCState, %struct.BCState* %35, i32 0, i32 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %156

42:                                               ; preds = %34
  %43 = load %struct.BCState*, %struct.BCState** %2, align 8
  %44 = getelementptr inbounds %struct.BCState, %struct.BCState* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @L1_MODE_TRANS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %4, align 4
  %50 = load %struct.BCState*, %struct.BCState** %2, align 8
  %51 = getelementptr inbounds %struct.BCState, %struct.BCState* %50, i32 0, i32 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %5, align 4
  br label %65

59:                                               ; preds = %42
  %60 = load %struct.BCState*, %struct.BCState** %2, align 8
  %61 = getelementptr inbounds %struct.BCState, %struct.BCState* %60, i32 0, i32 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %59, %57
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %67 = load %struct.BCState*, %struct.BCState** %2, align 8
  %68 = getelementptr inbounds %struct.BCState, %struct.BCState* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @waitforXFW(%struct.IsdnCardState* %66, i64 %71)
  %73 = load %struct.BCState*, %struct.BCState** %2, align 8
  %74 = getelementptr inbounds %struct.BCState, %struct.BCState* %73, i32 0, i32 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %7, align 8
  %78 = load %struct.BCState*, %struct.BCState** %2, align 8
  %79 = getelementptr inbounds %struct.BCState, %struct.BCState* %78, i32 0, i32 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @skb_pull(%struct.TYPE_6__* %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.BCState*, %struct.BCState** %2, align 8
  %85 = getelementptr inbounds %struct.BCState, %struct.BCState* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.BCState*, %struct.BCState** %2, align 8
  %90 = getelementptr inbounds %struct.BCState, %struct.BCState* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, %88
  store i32 %94, i32* %92, align 8
  %95 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %96 = load %struct.BCState*, %struct.BCState** %2, align 8
  %97 = getelementptr inbounds %struct.BCState, %struct.BCState* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @WRITEJADEFIFO(%struct.IsdnCardState* %95, i64 %100, i32* %101, i32 %102)
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %105 = load %struct.BCState*, %struct.BCState** %2, align 8
  %106 = getelementptr inbounds %struct.BCState, %struct.BCState* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @jade_HDLC_XCMD, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %65
  %114 = load i32, i32* @jadeXCMD_XF, align 4
  br label %119

115:                                              ; preds = %65
  %116 = load i32, i32* @jadeXCMD_XF, align 4
  %117 = load i32, i32* @jadeXCMD_XME, align 4
  %118 = or i32 %116, %117
  br label %119

119:                                              ; preds = %115, %113
  %120 = phi i32 [ %114, %113 ], [ %118, %115 ]
  %121 = call i32 @WriteJADECMDR(%struct.IsdnCardState* %104, i64 %109, i32 %110, i32 %120)
  %122 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %123 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %119
  %129 = load %struct.BCState*, %struct.BCState** %2, align 8
  %130 = getelementptr inbounds %struct.BCState, %struct.BCState* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %8, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load %struct.BCState*, %struct.BCState** %2, align 8
  %134 = getelementptr inbounds %struct.BCState, %struct.BCState* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 66, i32 65
  %141 = trunc i32 %140 to i8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @sprintf(i8* %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8 signext %141, i32 %142)
  %144 = load i8*, i8** %8, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %8, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @QuickHex(i8* %147, i32* %148, i32 %149)
  %151 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %152 = load %struct.BCState*, %struct.BCState** %2, align 8
  %153 = getelementptr inbounds %struct.BCState, %struct.BCState* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @debugl1(%struct.IsdnCardState* %151, i8* %154)
  br label %156

156:                                              ; preds = %33, %41, %128, %119
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @waitforXFW(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @skb_pull(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @WRITEJADEFIFO(%struct.IsdnCardState*, i64, i32*, i32) #1

declare dso_local i32 @WriteJADECMDR(%struct.IsdnCardState*, i64, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
