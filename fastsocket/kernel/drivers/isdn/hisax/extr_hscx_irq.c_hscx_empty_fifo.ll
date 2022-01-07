; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hscx_irq.c_hscx_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hscx_irq.c_hscx_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i8*, %struct.TYPE_4__, %struct.IsdnCardState* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32* }
%struct.IsdnCardState = type { i32 }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"hscx_empty_fifo\00", align 1
@HSCX_BUFMAX = common dso_local global i64 0, align 8
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"hscx_empty_fifo: incoming packet too large\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"hscx_empty_fifo %c cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32)* @hscx_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hscx_empty_fifo(%struct.BCState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.IsdnCardState*, align 8
  %7 = alloca i8*, align 8
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.BCState*, %struct.BCState** %3, align 8
  %9 = getelementptr inbounds %struct.BCState, %struct.BCState* %8, i32 0, i32 2
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  store %struct.IsdnCardState* %10, %struct.IsdnCardState** %6, align 8
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @L1_DEB_HSCX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %26 = call i32 @debugl1(%struct.IsdnCardState* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %17, %2
  %28 = load %struct.BCState*, %struct.BCState** %3, align 8
  %29 = getelementptr inbounds %struct.BCState, %struct.BCState* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i64, i64* @HSCX_BUFMAX, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %27
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %40 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @L1_DEB_WARN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %47 = call i32 @debugl1(%struct.IsdnCardState* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %50 = load %struct.BCState*, %struct.BCState** %3, align 8
  %51 = getelementptr inbounds %struct.BCState, %struct.BCState* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @WriteHSCXCMDR(%struct.IsdnCardState* %49, i64 %54, i32 128)
  %56 = load %struct.BCState*, %struct.BCState** %3, align 8
  %57 = getelementptr inbounds %struct.BCState, %struct.BCState* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %130

60:                                               ; preds = %27
  %61 = load %struct.BCState*, %struct.BCState** %3, align 8
  %62 = getelementptr inbounds %struct.BCState, %struct.BCState* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.BCState*, %struct.BCState** %3, align 8
  %67 = getelementptr inbounds %struct.BCState, %struct.BCState* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  store i32* %71, i32** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.BCState*, %struct.BCState** %3, align 8
  %75 = getelementptr inbounds %struct.BCState, %struct.BCState* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %73
  store i64 %79, i64* %77, align 8
  %80 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %81 = load %struct.BCState*, %struct.BCState** %3, align 8
  %82 = getelementptr inbounds %struct.BCState, %struct.BCState* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @READHSCXFIFO(%struct.IsdnCardState* %80, i64 %85, i32* %86, i32 %87)
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %90 = load %struct.BCState*, %struct.BCState** %3, align 8
  %91 = getelementptr inbounds %struct.BCState, %struct.BCState* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @WriteHSCXCMDR(%struct.IsdnCardState* %89, i64 %94, i32 128)
  %96 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %97 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %60
  %103 = load %struct.BCState*, %struct.BCState** %3, align 8
  %104 = getelementptr inbounds %struct.BCState, %struct.BCState* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %7, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.BCState*, %struct.BCState** %3, align 8
  %108 = getelementptr inbounds %struct.BCState, %struct.BCState* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 66, i32 65
  %115 = trunc i32 %114 to i8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @sprintf(i8* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8 signext %115, i32 %116)
  %118 = load i8*, i8** %7, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %7, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @QuickHex(i8* %121, i32* %122, i32 %123)
  %125 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %126 = load %struct.BCState*, %struct.BCState** %3, align 8
  %127 = getelementptr inbounds %struct.BCState, %struct.BCState* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @debugl1(%struct.IsdnCardState* %125, i8* %128)
  br label %130

130:                                              ; preds = %48, %102, %60
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @WriteHSCXCMDR(%struct.IsdnCardState*, i64, i32) #1

declare dso_local i32 @READHSCXFIFO(%struct.IsdnCardState*, i64, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
