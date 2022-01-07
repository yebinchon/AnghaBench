; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_icc.c_icc_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_icc.c_icc_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i64, i8*, i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32*, i32)*, i32* }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@L1_DEB_ISAC_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"icc_empty_fifo\00", align 1
@MAX_DFRAME_LEN_L1 = common dso_local global i64 0, align 8
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"icc_empty_fifo overrun %d\00", align 1
@ICC_CMDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"icc_empty_fifo cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32)* @icc_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icc_empty_fifo(%struct.IsdnCardState* %0, i32 %1) #0 {
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
  %22 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
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
  br i1 %31, label %32, label %57

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
  %47 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %39, %32
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 3
  %51 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %50, align 8
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %53 = load i32, i32* @ICC_CMDR, align 4
  %54 = call i32 %51(%struct.IsdnCardState* %52, i32 %53, i32 128)
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %109

57:                                               ; preds = %23
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %59 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %62 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32* %64, i32** %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %68 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 4
  %73 = load i32 (%struct.IsdnCardState*, i32*, i32)*, i32 (%struct.IsdnCardState*, i32*, i32)** %72, align 8
  %74 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 %73(%struct.IsdnCardState* %74, i32* %75, i32 %76)
  %78 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %79 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %78, i32 0, i32 3
  %80 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %79, align 8
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %82 = load i32, i32* @ICC_CMDR, align 4
  %83 = call i32 %80(%struct.IsdnCardState* %81, i32 %82, i32 128)
  %84 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %85 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %57
  %91 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %92 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %6, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @sprintf(i8* %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i8*, i8** %6, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %6, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @QuickHex(i8* %100, i32* %101, i32 %102)
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %105 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %106 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %104, i8* %107)
  br label %109

109:                                              ; preds = %48, %90, %57
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
