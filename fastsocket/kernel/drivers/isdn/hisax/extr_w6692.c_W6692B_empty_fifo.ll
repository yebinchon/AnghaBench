; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_W6692B_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_W6692B_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, i8*, %struct.TYPE_4__, %struct.IsdnCardState* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }
%struct.IsdnCardState = type { i32, i32 (%struct.IsdnCardState*, i32, i32, i32)* }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"W6692B_empty_fifo\00", align 1
@HSCX_BUFMAX = common dso_local global i64 0, align 8
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"W6692B_empty_fifo: incoming packet too large\00", align 1
@W_B_CMDR = common dso_local global i32 0, align 4
@W_B_CMDR_RACK = common dso_local global i32 0, align 4
@W_B_CMDR_RACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"W6692B_empty_fifo %c cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32)* @W6692B_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692B_empty_fifo(%struct.BCState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.IsdnCardState*, align 8
  %7 = alloca i8*, align 8
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.BCState*, %struct.BCState** %3, align 8
  %9 = getelementptr inbounds %struct.BCState, %struct.BCState* %8, i32 0, i32 3
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  store %struct.IsdnCardState* %10, %struct.IsdnCardState** %6, align 8
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @L1_DEB_HSCX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %26 = call i32 @debugl1(%struct.IsdnCardState* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %17, %2
  %28 = load %struct.BCState*, %struct.BCState** %3, align 8
  %29 = getelementptr inbounds %struct.BCState, %struct.BCState* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i64, i64* @HSCX_BUFMAX, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %27
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %40 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @L1_DEB_WARN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %47 = call i32 @debugl1(%struct.IsdnCardState* %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 1
  %51 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %50, align 8
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %53 = load %struct.BCState*, %struct.BCState** %3, align 8
  %54 = getelementptr inbounds %struct.BCState, %struct.BCState* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @W_B_CMDR, align 4
  %57 = load i32, i32* @W_B_CMDR_RACK, align 4
  %58 = load i32, i32* @W_B_CMDR_RACT, align 4
  %59 = or i32 %57, %58
  %60 = call i32 %51(%struct.IsdnCardState* %52, i32 %55, i32 %56, i32 %59)
  %61 = load %struct.BCState*, %struct.BCState** %3, align 8
  %62 = getelementptr inbounds %struct.BCState, %struct.BCState* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %133

65:                                               ; preds = %27
  %66 = load %struct.BCState*, %struct.BCState** %3, align 8
  %67 = getelementptr inbounds %struct.BCState, %struct.BCState* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.BCState*, %struct.BCState** %3, align 8
  %72 = getelementptr inbounds %struct.BCState, %struct.BCState* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  store i32* %76, i32** %5, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.BCState*, %struct.BCState** %3, align 8
  %80 = getelementptr inbounds %struct.BCState, %struct.BCState* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %78
  store i64 %84, i64* %82, align 8
  %85 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %86 = load %struct.BCState*, %struct.BCState** %3, align 8
  %87 = getelementptr inbounds %struct.BCState, %struct.BCState* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @READW6692BFIFO(%struct.IsdnCardState* %85, i32 %88, i32* %89, i32 %90)
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %93 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %92, i32 0, i32 1
  %94 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %93, align 8
  %95 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %96 = load %struct.BCState*, %struct.BCState** %3, align 8
  %97 = getelementptr inbounds %struct.BCState, %struct.BCState* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @W_B_CMDR, align 4
  %100 = load i32, i32* @W_B_CMDR_RACK, align 4
  %101 = load i32, i32* @W_B_CMDR_RACT, align 4
  %102 = or i32 %100, %101
  %103 = call i32 %94(%struct.IsdnCardState* %95, i32 %98, i32 %99, i32 %102)
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %105 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %65
  %111 = load %struct.BCState*, %struct.BCState** %3, align 8
  %112 = getelementptr inbounds %struct.BCState, %struct.BCState* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %7, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.BCState*, %struct.BCState** %3, align 8
  %116 = getelementptr inbounds %struct.BCState, %struct.BCState* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 49
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @sprintf(i8* %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load i8*, i8** %7, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %7, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @QuickHex(i8* %124, i32* %125, i32 %126)
  %128 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %129 = load %struct.BCState*, %struct.BCState** %3, align 8
  %130 = getelementptr inbounds %struct.BCState, %struct.BCState* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @debugl1(%struct.IsdnCardState* %128, i8* %131)
  br label %133

133:                                              ; preds = %48, %110, %65
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @READW6692BFIFO(%struct.IsdnCardState*, i32, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
