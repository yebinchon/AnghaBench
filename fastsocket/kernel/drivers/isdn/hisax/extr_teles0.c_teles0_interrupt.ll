; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teles0.c_teles0_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_teles0.c_teles0_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HSCX_ISTA = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"HSCX IntStat after IntRoutine\00", align 1
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ISAC IntStat after IntRoutine\00", align 1
@HSCX_MASK = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @teles0_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teles0_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %10, %struct.IsdnCardState** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 1
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @spin_lock_irqsave(i32* %12, i32 %13)
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %16 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HSCX_ISTA, align 4
  %21 = call i64 @readhscx(i32 %19, i32 1, i32 %20)
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %69, %2
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @hscx_int_main(%struct.IsdnCardState* %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %31 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ISAC_ISTA, align 4
  %36 = call i64 @readisac(i32 %34, i32 %35)
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %93, %29
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @isac_interrupt(%struct.IsdnCardState* %41, i64 %42)
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %48 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @HSCX_ISTA, align 4
  %53 = call i64 @readhscx(i32 %51, i32 1, i32 %52)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %44
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 5
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %61 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @L1_DEB_HSCX, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %68 = call i32 @debugl1(%struct.IsdnCardState* %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %59
  br label %22

70:                                               ; preds = %56, %44
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ISAC_ISTA, align 4
  %77 = call i64 @readisac(i32 %75, i32 %76)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %70
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 5
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %85 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @L1_DEB_ISAC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %92 = call i32 @debugl1(%struct.IsdnCardState* %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %83
  br label %37

94:                                               ; preds = %80, %70
  %95 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %96 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @HSCX_MASK, align 4
  %101 = call i32 @writehscx(i32 %99, i32 0, i32 %100, i32 255)
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %103 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @HSCX_MASK, align 4
  %108 = call i32 @writehscx(i32 %106, i32 1, i32 %107, i32 255)
  %109 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %110 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ISAC_MASK, align 4
  %115 = call i32 @writeisac(i32 %113, i32 %114, i32 255)
  %116 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %117 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ISAC_MASK, align 4
  %122 = call i32 @writeisac(i32 %120, i32 %121, i32 0)
  %123 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %124 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @HSCX_MASK, align 4
  %129 = call i32 @writehscx(i32 %127, i32 0, i32 %128, i32 0)
  %130 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %131 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @HSCX_MASK, align 4
  %136 = call i32 @writehscx(i32 %134, i32 1, i32 %135, i32 0)
  %137 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %138 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %137, i32 0, i32 1
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @spin_unlock_irqrestore(i32* %138, i32 %139)
  %141 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %141
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i64 @readhscx(i32, i32, i32) #1

declare dso_local i32 @hscx_int_main(%struct.IsdnCardState*, i64) #1

declare dso_local i64 @readisac(i32, i32) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @writehscx(i32, i32, i32, i32) #1

declare dso_local i32 @writeisac(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
