; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_W6692B_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_W6692B_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, i32, i8*, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.IsdnCardState* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.IsdnCardState = type { i32, i32 (%struct.IsdnCardState*, i32, i32, i32)* }

@L1_MODE_TRANS = common dso_local global i64 0, align 8
@W_B_FIFO_THRESH = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"W6692B_fill_fifo%s%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" last \00", align 1
@W_B_CMDR = common dso_local global i32 0, align 4
@W_B_CMDR_RACT = common dso_local global i32 0, align 4
@W_B_CMDR_XMS = common dso_local global i32 0, align 4
@W_B_CMDR_XME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"W6692B_fill_fifo %c cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @W6692B_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692B_fill_fifo(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %8 = load %struct.BCState*, %struct.BCState** %2, align 8
  %9 = getelementptr inbounds %struct.BCState, %struct.BCState* %8, i32 0, i32 6
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  store %struct.IsdnCardState* %10, %struct.IsdnCardState** %3, align 8
  %11 = load %struct.BCState*, %struct.BCState** %2, align 8
  %12 = getelementptr inbounds %struct.BCState, %struct.BCState* %11, i32 0, i32 5
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %148

16:                                               ; preds = %1
  %17 = load %struct.BCState*, %struct.BCState** %2, align 8
  %18 = getelementptr inbounds %struct.BCState, %struct.BCState* %17, i32 0, i32 5
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %148

24:                                               ; preds = %16
  %25 = load %struct.BCState*, %struct.BCState** %2, align 8
  %26 = getelementptr inbounds %struct.BCState, %struct.BCState* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @L1_MODE_TRANS, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %4, align 4
  %32 = load %struct.BCState*, %struct.BCState** %2, align 8
  %33 = getelementptr inbounds %struct.BCState, %struct.BCState* %32, i32 0, i32 5
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @W_B_FIFO_THRESH, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  %40 = load i32, i32* @W_B_FIFO_THRESH, align 4
  store i32 %40, i32* %5, align 4
  br label %47

41:                                               ; preds = %24
  %42 = load %struct.BCState*, %struct.BCState** %2, align 8
  %43 = getelementptr inbounds %struct.BCState, %struct.BCState* %42, i32 0, i32 5
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %39
  %48 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %49 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @L1_DEB_HSCX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %54
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %67 = load i32, i32* %5, align 4
  %68 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %54, %47
  %70 = load %struct.BCState*, %struct.BCState** %2, align 8
  %71 = getelementptr inbounds %struct.BCState, %struct.BCState* %70, i32 0, i32 5
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %6, align 8
  %75 = load %struct.BCState*, %struct.BCState** %2, align 8
  %76 = getelementptr inbounds %struct.BCState, %struct.BCState* %75, i32 0, i32 5
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @skb_pull(%struct.TYPE_6__* %77, i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.BCState*, %struct.BCState** %2, align 8
  %82 = getelementptr inbounds %struct.BCState, %struct.BCState* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.BCState*, %struct.BCState** %2, align 8
  %87 = getelementptr inbounds %struct.BCState, %struct.BCState* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, %85
  store i32 %91, i32* %89, align 8
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %93 = load %struct.BCState*, %struct.BCState** %2, align 8
  %94 = getelementptr inbounds %struct.BCState, %struct.BCState* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @WRITEW6692BFIFO(%struct.IsdnCardState* %92, i32 %95, i32* %96, i32 %97)
  %99 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %100 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %99, i32 0, i32 1
  %101 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %100, align 8
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %103 = load %struct.BCState*, %struct.BCState** %2, align 8
  %104 = getelementptr inbounds %struct.BCState, %struct.BCState* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @W_B_CMDR, align 4
  %107 = load i32, i32* @W_B_CMDR_RACT, align 4
  %108 = load i32, i32* @W_B_CMDR_XMS, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %69
  br label %115

113:                                              ; preds = %69
  %114 = load i32, i32* @W_B_CMDR_XME, align 4
  br label %115

115:                                              ; preds = %113, %112
  %116 = phi i32 [ 0, %112 ], [ %114, %113 ]
  %117 = or i32 %109, %116
  %118 = call i32 %101(%struct.IsdnCardState* %102, i32 %105, i32 %106, i32 %117)
  %119 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %120 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %115
  %126 = load %struct.BCState*, %struct.BCState** %2, align 8
  %127 = getelementptr inbounds %struct.BCState, %struct.BCState* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %7, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load %struct.BCState*, %struct.BCState** %2, align 8
  %131 = getelementptr inbounds %struct.BCState, %struct.BCState* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 49
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @sprintf(i8* %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i8*, i8** %7, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %7, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @QuickHex(i8* %139, i32* %140, i32 %141)
  %143 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %144 = load %struct.BCState*, %struct.BCState** %2, align 8
  %145 = getelementptr inbounds %struct.BCState, %struct.BCState* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %143, i8* %146)
  br label %148

148:                                              ; preds = %15, %23, %125, %115
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @skb_pull(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @WRITEW6692BFIFO(%struct.IsdnCardState*, i32, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
