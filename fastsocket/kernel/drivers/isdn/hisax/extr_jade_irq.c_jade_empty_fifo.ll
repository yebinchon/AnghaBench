; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_jade_irq.c_jade_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_jade_irq.c_jade_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i8*, %struct.TYPE_4__, %struct.IsdnCardState* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32* }
%struct.IsdnCardState = type { i32 }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"jade_empty_fifo\00", align 1
@HSCX_BUFMAX = common dso_local global i64 0, align 8
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"jade_empty_fifo: incoming packet too large\00", align 1
@jade_HDLC_RCMD = common dso_local global i32 0, align 4
@jadeRCMD_RMC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"jade_empty_fifo %c cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32)* @jade_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jade_empty_fifo(%struct.BCState* %0, i32 %1) #0 {
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
  br i1 %37, label %38, label %62

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
  %55 = load i32, i32* @jade_HDLC_RCMD, align 4
  %56 = load i32, i32* @jadeRCMD_RMC, align 4
  %57 = call i32 @WriteJADECMDR(%struct.IsdnCardState* %49, i64 %54, i32 %55, i32 %56)
  %58 = load %struct.BCState*, %struct.BCState** %3, align 8
  %59 = getelementptr inbounds %struct.BCState, %struct.BCState* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %134

62:                                               ; preds = %27
  %63 = load %struct.BCState*, %struct.BCState** %3, align 8
  %64 = getelementptr inbounds %struct.BCState, %struct.BCState* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.BCState*, %struct.BCState** %3, align 8
  %69 = getelementptr inbounds %struct.BCState, %struct.BCState* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  store i32* %73, i32** %5, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.BCState*, %struct.BCState** %3, align 8
  %77 = getelementptr inbounds %struct.BCState, %struct.BCState* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %75
  store i64 %81, i64* %79, align 8
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %83 = load %struct.BCState*, %struct.BCState** %3, align 8
  %84 = getelementptr inbounds %struct.BCState, %struct.BCState* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @READJADEFIFO(%struct.IsdnCardState* %82, i64 %87, i32* %88, i32 %89)
  %91 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %92 = load %struct.BCState*, %struct.BCState** %3, align 8
  %93 = getelementptr inbounds %struct.BCState, %struct.BCState* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @jade_HDLC_RCMD, align 4
  %98 = load i32, i32* @jadeRCMD_RMC, align 4
  %99 = call i32 @WriteJADECMDR(%struct.IsdnCardState* %91, i64 %96, i32 %97, i32 %98)
  %100 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %101 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %62
  %107 = load %struct.BCState*, %struct.BCState** %3, align 8
  %108 = getelementptr inbounds %struct.BCState, %struct.BCState* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %7, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load %struct.BCState*, %struct.BCState** %3, align 8
  %112 = getelementptr inbounds %struct.BCState, %struct.BCState* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 66, i32 65
  %119 = trunc i32 %118 to i8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @sprintf(i8* %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8 signext %119, i32 %120)
  %122 = load i8*, i8** %7, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %7, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @QuickHex(i8* %125, i32* %126, i32 %127)
  %129 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %130 = load %struct.BCState*, %struct.BCState** %3, align 8
  %131 = getelementptr inbounds %struct.BCState, %struct.BCState* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @debugl1(%struct.IsdnCardState* %129, i8* %132)
  br label %134

134:                                              ; preds = %48, %106, %62
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @WriteJADECMDR(%struct.IsdnCardState*, i64, i32, i32) #1

declare dso_local i32 @READJADEFIFO(%struct.IsdnCardState*, i64, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @QuickHex(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
