; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_dch_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_dch_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i64, i8*, i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32*, i32)*, i32* }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@L1_DEB_ISAC_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"dch_empty_fifo()\00", align 1
@MAX_DFRAME_LEN_L1 = common dso_local global i64 0, align 8
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"dch_empty_fifo() incoming message too large\00", align 1
@IPACX_CMDRD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"dch_empty_fifo() cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32)* @dch_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dch_empty_fifo(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %8 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @L1_DEB_ISAC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %15 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %22 = call i32 @debugl1(%struct.IsdnCardState* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %13, %2
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %25 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i64, i64* @MAX_DFRAME_LEN_L1, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %23
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %34 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @L1_DEB_WARN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %41 = call i32 @debugl1(%struct.IsdnCardState* %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %44 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %43, i32 0, i32 3
  %45 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %44, align 8
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %47 = load i32, i32* @IPACX_CMDRD, align 4
  %48 = call i32 %45(%struct.IsdnCardState* %46, i32 %47, i32 128)
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %103

51:                                               ; preds = %23
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %53 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32* %58, i32** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %62 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %66 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %65, i32 0, i32 4
  %67 = load i32 (%struct.IsdnCardState*, i32*, i32)*, i32 (%struct.IsdnCardState*, i32*, i32)** %66, align 8
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 %67(%struct.IsdnCardState* %68, i32* %69, i32 %70)
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %73 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %72, i32 0, i32 3
  %74 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %73, align 8
  %75 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %76 = load i32, i32* @IPACX_CMDRD, align 4
  %77 = call i32 %74(%struct.IsdnCardState* %75, i32 %76, i32 128)
  %78 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %79 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %51
  %85 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %86 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @sprintf(i8* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %6, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %6, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @QuickHex(i8* %94, i32* %95, i32 %96)
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %99 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %100 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @debugl1(%struct.IsdnCardState* %98, i8* %101)
  br label %103

103:                                              ; preds = %42, %84, %51
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
