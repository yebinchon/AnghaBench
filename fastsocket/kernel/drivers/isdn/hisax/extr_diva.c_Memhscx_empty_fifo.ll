; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_diva.c_Memhscx_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_diva.c_Memhscx_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i8*, %struct.TYPE_8__, %struct.IsdnCardState* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32* }
%struct.IsdnCardState = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"hscx_empty_fifo\00", align 1
@HSCX_BUFMAX = common dso_local global i64 0, align 8
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"hscx_empty_fifo: incoming packet too large\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"hscx_empty_fifo %c cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32)* @Memhscx_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Memhscx_empty_fifo(%struct.BCState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.IsdnCardState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.BCState*, %struct.BCState** %3, align 8
  %10 = getelementptr inbounds %struct.BCState, %struct.BCState* %9, i32 0, i32 2
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %10, align 8
  store %struct.IsdnCardState* %11, %struct.IsdnCardState** %6, align 8
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @L1_DEB_HSCX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %27 = call i32 @debugl1(%struct.IsdnCardState* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %18, %2
  %29 = load %struct.BCState*, %struct.BCState** %3, align 8
  %30 = getelementptr inbounds %struct.BCState, %struct.BCState* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load i64, i64* @HSCX_BUFMAX, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %28
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @L1_DEB_WARN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %48 = call i32 @debugl1(%struct.IsdnCardState* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %51 = load %struct.BCState*, %struct.BCState** %3, align 8
  %52 = getelementptr inbounds %struct.BCState, %struct.BCState* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @MemWriteHSCXCMDR(%struct.IsdnCardState* %50, i64 %55, i32 128)
  %57 = load %struct.BCState*, %struct.BCState** %3, align 8
  %58 = getelementptr inbounds %struct.BCState, %struct.BCState* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %156

61:                                               ; preds = %28
  %62 = load %struct.BCState*, %struct.BCState** %3, align 8
  %63 = getelementptr inbounds %struct.BCState, %struct.BCState* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.BCState*, %struct.BCState** %3, align 8
  %68 = getelementptr inbounds %struct.BCState, %struct.BCState* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  store i32* %72, i32** %5, align 8
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %78, %61
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %7, align 4
  %77 = icmp ne i32 %75, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %80 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.BCState*, %struct.BCState** %3, align 8
  %85 = getelementptr inbounds %struct.BCState, %struct.BCState* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 64, i32 0
  %92 = call i32 @memreadreg(i32 %83, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  br label %74

95:                                               ; preds = %74
  %96 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %97 = load %struct.BCState*, %struct.BCState** %3, align 8
  %98 = getelementptr inbounds %struct.BCState, %struct.BCState* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @MemWriteHSCXCMDR(%struct.IsdnCardState* %96, i64 %101, i32 128)
  %103 = load %struct.BCState*, %struct.BCState** %3, align 8
  %104 = getelementptr inbounds %struct.BCState, %struct.BCState* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.BCState*, %struct.BCState** %3, align 8
  %109 = getelementptr inbounds %struct.BCState, %struct.BCState* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  store i32* %113, i32** %5, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.BCState*, %struct.BCState** %3, align 8
  %117 = getelementptr inbounds %struct.BCState, %struct.BCState* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %115
  store i64 %121, i64* %119, align 8
  %122 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %123 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %95
  %129 = load %struct.BCState*, %struct.BCState** %3, align 8
  %130 = getelementptr inbounds %struct.BCState, %struct.BCState* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %8, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load %struct.BCState*, %struct.BCState** %3, align 8
  %134 = getelementptr inbounds %struct.BCState, %struct.BCState* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 66, i32 65
  %141 = trunc i32 %140 to i8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @sprintf(i8* %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8 signext %141, i32 %142)
  %144 = load i8*, i8** %8, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %8, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @QuickHex(i8* %147, i32* %148, i32 %149)
  %151 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %152 = load %struct.BCState*, %struct.BCState** %3, align 8
  %153 = getelementptr inbounds %struct.BCState, %struct.BCState* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @debugl1(%struct.IsdnCardState* %151, i8* %154)
  br label %156

156:                                              ; preds = %49, %128, %95
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @MemWriteHSCXCMDR(%struct.IsdnCardState*, i64, i32) #1

declare dso_local i32 @memreadreg(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
