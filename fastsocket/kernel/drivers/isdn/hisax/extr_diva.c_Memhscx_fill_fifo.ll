; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_diva.c_Memhscx_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_diva.c_Memhscx_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i64, i32, i8*, %struct.TYPE_9__, %struct.TYPE_10__*, %struct.IsdnCardState* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.IsdnCardState = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@HW_IPAC = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hscx_fill_fifo\00", align 1
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"hscx_fill_fifo %c cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @Memhscx_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Memhscx_fill_fifo(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %11 = load %struct.BCState*, %struct.BCState** %2, align 8
  %12 = getelementptr inbounds %struct.BCState, %struct.BCState* %11, i32 0, i32 5
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %12, align 8
  store %struct.IsdnCardState* %13, %struct.IsdnCardState** %3, align 8
  %14 = load i32, i32* @HW_IPAC, align 4
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %16 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %15, i32 0, i32 2
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 64, i32 32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %22 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @L1_DEB_HSCX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %36 = call i32 @debugl1(%struct.IsdnCardState* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %27, %1
  %38 = load %struct.BCState*, %struct.BCState** %2, align 8
  %39 = getelementptr inbounds %struct.BCState, %struct.BCState* %38, i32 0, i32 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %173

43:                                               ; preds = %37
  %44 = load %struct.BCState*, %struct.BCState** %2, align 8
  %45 = getelementptr inbounds %struct.BCState, %struct.BCState* %44, i32 0, i32 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %173

51:                                               ; preds = %43
  %52 = load %struct.BCState*, %struct.BCState** %2, align 8
  %53 = getelementptr inbounds %struct.BCState, %struct.BCState* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @L1_MODE_TRANS, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %4, align 4
  %59 = load %struct.BCState*, %struct.BCState** %2, align 8
  %60 = getelementptr inbounds %struct.BCState, %struct.BCState* %59, i32 0, i32 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %5, align 4
  br label %74

68:                                               ; preds = %51
  %69 = load %struct.BCState*, %struct.BCState** %2, align 8
  %70 = getelementptr inbounds %struct.BCState, %struct.BCState* %69, i32 0, i32 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %66
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %6, align 4
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %77 = load %struct.BCState*, %struct.BCState** %2, align 8
  %78 = getelementptr inbounds %struct.BCState, %struct.BCState* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @MemwaitforXFW(%struct.IsdnCardState* %76, i64 %81)
  %83 = load %struct.BCState*, %struct.BCState** %2, align 8
  %84 = getelementptr inbounds %struct.BCState, %struct.BCState* %83, i32 0, i32 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %8, align 8
  store i32* %87, i32** %9, align 8
  %88 = load %struct.BCState*, %struct.BCState** %2, align 8
  %89 = getelementptr inbounds %struct.BCState, %struct.BCState* %88, i32 0, i32 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @skb_pull(%struct.TYPE_10__* %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.BCState*, %struct.BCState** %2, align 8
  %95 = getelementptr inbounds %struct.BCState, %struct.BCState* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.BCState*, %struct.BCState** %2, align 8
  %100 = getelementptr inbounds %struct.BCState, %struct.BCState* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, %98
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %109, %74
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %6, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %111 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.BCState*, %struct.BCState** %2, align 8
  %116 = getelementptr inbounds %struct.BCState, %struct.BCState* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 64, i32 0
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %9, align 8
  %125 = load i32, i32* %123, align 4
  %126 = call i32 @memwritereg(i32 %114, i32 %122, i32 %125)
  br label %105

127:                                              ; preds = %105
  %128 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %129 = load %struct.BCState*, %struct.BCState** %2, align 8
  %130 = getelementptr inbounds %struct.BCState, %struct.BCState* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 8, i32 10
  %138 = call i32 @MemWriteHSCXCMDR(%struct.IsdnCardState* %128, i64 %133, i32 %137)
  %139 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %140 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %173

145:                                              ; preds = %127
  %146 = load %struct.BCState*, %struct.BCState** %2, align 8
  %147 = getelementptr inbounds %struct.BCState, %struct.BCState* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %10, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = load %struct.BCState*, %struct.BCState** %2, align 8
  %151 = getelementptr inbounds %struct.BCState, %struct.BCState* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 66, i32 65
  %158 = trunc i32 %157 to i8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @sprintf(i8* %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8 signext %158, i32 %159)
  %161 = load i8*, i8** %10, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %10, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @QuickHex(i8* %164, i32* %165, i32 %166)
  %168 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %169 = load %struct.BCState*, %struct.BCState** %2, align 8
  %170 = getelementptr inbounds %struct.BCState, %struct.BCState* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @debugl1(%struct.IsdnCardState* %168, i8* %171)
  br label %173

173:                                              ; preds = %42, %50, %145, %127
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @MemwaitforXFW(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @skb_pull(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memwritereg(i32, i32, i32) #1

declare dso_local i32 @MemWriteHSCXCMDR(%struct.IsdnCardState*, i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
