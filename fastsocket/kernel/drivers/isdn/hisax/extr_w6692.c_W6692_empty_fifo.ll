; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_W6692_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_w6692.c_W6692_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i64, i8*, i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32*, i32)*, i32* }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@L1_DEB_ISAC_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"W6692_empty_fifo\00", align 1
@MAX_DFRAME_LEN_L1 = common dso_local global i64 0, align 8
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"W6692_empty_fifo overrun %d\00", align 1
@W_D_CMDR = common dso_local global i32 0, align 4
@W_D_CMDR_RACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"W6692_empty_fifo cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32)* @W6692_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W6692_empty_fifo(%struct.IsdnCardState* %0, i32 %1) #0 {
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
  %22 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
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
  br i1 %31, label %32, label %58

32:                                               ; preds = %23
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %34 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @L1_DEB_WARN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %42 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %39, %32
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 3
  %51 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %50, align 8
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %53 = load i32, i32* @W_D_CMDR, align 4
  %54 = load i32, i32* @W_D_CMDR_RACK, align 4
  %55 = call i32 %51(%struct.IsdnCardState* %52, i32 %53, i32 %54)
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %57 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %111

58:                                               ; preds = %23
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %60 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %63 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32* %65, i32** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %69 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %73 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %72, i32 0, i32 4
  %74 = load i32 (%struct.IsdnCardState*, i32*, i32)*, i32 (%struct.IsdnCardState*, i32*, i32)** %73, align 8
  %75 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 %74(%struct.IsdnCardState* %75, i32* %76, i32 %77)
  %79 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %80 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %79, i32 0, i32 3
  %81 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %80, align 8
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %83 = load i32, i32* @W_D_CMDR, align 4
  %84 = load i32, i32* @W_D_CMDR_RACK, align 4
  %85 = call i32 %81(%struct.IsdnCardState* %82, i32 %83, i32 %84)
  %86 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %87 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %58
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %6, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @sprintf(i8* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i8*, i8** %6, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %6, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @QuickHex(i8* %102, i32* %103, i32 %104)
  %106 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %107 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %108 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %106, i8* %109)
  br label %111

111:                                              ; preds = %48, %92, %58
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
