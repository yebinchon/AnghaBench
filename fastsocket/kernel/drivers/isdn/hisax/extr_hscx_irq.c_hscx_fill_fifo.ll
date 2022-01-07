; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hscx_irq.c_hscx_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hscx_irq.c_hscx_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, i8*, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.IsdnCardState* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.IsdnCardState = type { i32, i32 }

@HW_IPAC = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hscx_fill_fifo\00", align 1
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"hscx_fill_fifo %c cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @hscx_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hscx_fill_fifo(%struct.BCState* %0) #0 {
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
  %12 = load i32, i32* @HW_IPAC, align 4
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 1
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 64, i32 32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @L1_DEB_HSCX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %27 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %34 = call i32 @debugl1(%struct.IsdnCardState* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %25, %1
  %36 = load %struct.BCState*, %struct.BCState** %2, align 8
  %37 = getelementptr inbounds %struct.BCState, %struct.BCState* %36, i32 0, i32 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %156

41:                                               ; preds = %35
  %42 = load %struct.BCState*, %struct.BCState** %2, align 8
  %43 = getelementptr inbounds %struct.BCState, %struct.BCState* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %156

49:                                               ; preds = %41
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
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %5, align 4
  br label %72

66:                                               ; preds = %49
  %67 = load %struct.BCState*, %struct.BCState** %2, align 8
  %68 = getelementptr inbounds %struct.BCState, %struct.BCState* %67, i32 0, i32 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %66, %64
  %73 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %74 = load %struct.BCState*, %struct.BCState** %2, align 8
  %75 = getelementptr inbounds %struct.BCState, %struct.BCState* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @waitforXFW(%struct.IsdnCardState* %73, i64 %78)
  %80 = load %struct.BCState*, %struct.BCState** %2, align 8
  %81 = getelementptr inbounds %struct.BCState, %struct.BCState* %80, i32 0, i32 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %7, align 8
  %85 = load %struct.BCState*, %struct.BCState** %2, align 8
  %86 = getelementptr inbounds %struct.BCState, %struct.BCState* %85, i32 0, i32 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @skb_pull(%struct.TYPE_6__* %87, i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.BCState*, %struct.BCState** %2, align 8
  %92 = getelementptr inbounds %struct.BCState, %struct.BCState* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.BCState*, %struct.BCState** %2, align 8
  %97 = getelementptr inbounds %struct.BCState, %struct.BCState* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, %95
  store i32 %101, i32* %99, align 8
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %103 = load %struct.BCState*, %struct.BCState** %2, align 8
  %104 = getelementptr inbounds %struct.BCState, %struct.BCState* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @WRITEHSCXFIFO(%struct.IsdnCardState* %102, i64 %107, i32* %108, i32 %109)
  %111 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %112 = load %struct.BCState*, %struct.BCState** %2, align 8
  %113 = getelementptr inbounds %struct.BCState, %struct.BCState* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 8, i32 10
  %121 = call i32 @WriteHSCXCMDR(%struct.IsdnCardState* %111, i64 %116, i32 %120)
  %122 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %123 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %72
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

156:                                              ; preds = %40, %48, %128, %72
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @waitforXFW(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @skb_pull(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @WRITEHSCXFIFO(%struct.IsdnCardState*, i64, i32*, i32) #1

declare dso_local i32 @WriteHSCXCMDR(%struct.IsdnCardState*, i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
