; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_bch_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_bch_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i8*, %struct.TYPE_4__, %struct.IsdnCardState* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32* }
%struct.IsdnCardState = type { i32, i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)* }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bch_empty_fifo()\00", align 1
@HSCX_BUFMAX = common dso_local global i64 0, align 8
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"bch_empty_fifo() incoming packet too large\00", align 1
@IPACX_CMDRB = common dso_local global i32 0, align 4
@IPACX_RFIFOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"bch_empty_fifo() B-%d cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32)* @bch_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_empty_fifo(%struct.BCState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.IsdnCardState*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.BCState*, %struct.BCState** %3, align 8
  %11 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i32 0, i32 2
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %11, align 8
  store %struct.IsdnCardState* %12, %struct.IsdnCardState** %7, align 8
  %13 = load %struct.BCState*, %struct.BCState** %3, align 8
  %14 = getelementptr inbounds %struct.BCState, %struct.BCState* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @L1_DEB_HSCX, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %33 = call i32 @debugl1(%struct.IsdnCardState* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %24, %2
  %35 = load %struct.BCState*, %struct.BCState** %3, align 8
  %36 = getelementptr inbounds %struct.BCState, %struct.BCState* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i64, i64* @HSCX_BUFMAX, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %34
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %47 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @L1_DEB_WARN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %54 = call i32 @debugl1(%struct.IsdnCardState* %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %57 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %56, i32 0, i32 1
  %58 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %57, align 8
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @IPACX_CMDRB, align 4
  %62 = call i32 %58(%struct.IsdnCardState* %59, i32 %60, i32 %61, i32 128)
  %63 = load %struct.BCState*, %struct.BCState** %3, align 8
  %64 = getelementptr inbounds %struct.BCState, %struct.BCState* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  br label %147

67:                                               ; preds = %34
  %68 = load %struct.BCState*, %struct.BCState** %3, align 8
  %69 = getelementptr inbounds %struct.BCState, %struct.BCState* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.BCState*, %struct.BCState** %3, align 8
  %74 = getelementptr inbounds %struct.BCState, %struct.BCState* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  store i32* %78, i32** %5, align 8
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %84, %67
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %8, align 4
  %83 = icmp ne i32 %81, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %86 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %85, i32 0, i32 2
  %87 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %86, align 8
  %88 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @IPACX_RFIFOB, align 4
  %91 = call i32 %87(%struct.IsdnCardState* %88, i32 %89, i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  br label %80

94:                                               ; preds = %80
  %95 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %96 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %95, i32 0, i32 1
  %97 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %96, align 8
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @IPACX_CMDRB, align 4
  %101 = call i32 %97(%struct.IsdnCardState* %98, i32 %99, i32 %100, i32 128)
  %102 = load %struct.BCState*, %struct.BCState** %3, align 8
  %103 = getelementptr inbounds %struct.BCState, %struct.BCState* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.BCState*, %struct.BCState** %3, align 8
  %108 = getelementptr inbounds %struct.BCState, %struct.BCState* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  store i32* %112, i32** %5, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.BCState*, %struct.BCState** %3, align 8
  %116 = getelementptr inbounds %struct.BCState, %struct.BCState* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, %114
  store i64 %120, i64* %118, align 8
  %121 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %122 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %94
  %128 = load %struct.BCState*, %struct.BCState** %3, align 8
  %129 = getelementptr inbounds %struct.BCState, %struct.BCState* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %9, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @sprintf(i8* %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %133)
  %135 = load i8*, i8** %9, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %9, align 8
  %138 = load i8*, i8** %9, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @QuickHex(i8* %138, i32* %139, i32 %140)
  %142 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %143 = load %struct.BCState*, %struct.BCState** %3, align 8
  %144 = getelementptr inbounds %struct.BCState, %struct.BCState* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @debugl1(%struct.IsdnCardState* %142, i8* %145)
  br label %147

147:                                              ; preds = %55, %127, %94
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
