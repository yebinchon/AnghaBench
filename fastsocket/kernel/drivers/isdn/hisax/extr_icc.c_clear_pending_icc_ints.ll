; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_icc.c_clear_pending_icc_ints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_icc.c_clear_pending_icc_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32, i32)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ICC_STAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ICC STAR %x\00", align 1
@ICC_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ICC MODE %x\00", align 1
@ICC_ADF2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ICC ADF2 %x\00", align 1
@ICC_ISTA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ICC ISTA %x\00", align 1
@ICC_EXIR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ICC EXIR %x\00", align 1
@ICC_CIR0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"ICC CIR0 %x\00", align 1
@D_L1STATECHANGE = common dso_local global i32 0, align 4
@ICC_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_pending_icc_ints(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 0
  %7 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %6, align 8
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %9 = load i32, i32* @ICC_STAR, align 4
  %10 = call i32 %7(%struct.IsdnCardState* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @debugl1(%struct.IsdnCardState* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %15 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %14, i32 0, i32 0
  %16 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %15, align 8
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %18 = load i32, i32* @ICC_MODE, align 4
  %19 = call i32 %16(%struct.IsdnCardState* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @debugl1(%struct.IsdnCardState* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %24 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %23, i32 0, i32 0
  %25 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %24, align 8
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %27 = load i32, i32* @ICC_ADF2, align 4
  %28 = call i32 %25(%struct.IsdnCardState* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @debugl1(%struct.IsdnCardState* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %33 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %32, i32 0, i32 0
  %34 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %33, align 8
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %36 = load i32, i32* @ICC_ISTA, align 4
  %37 = call i32 %34(%struct.IsdnCardState* %35, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @debugl1(%struct.IsdnCardState* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %1
  %45 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %46 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %45, i32 0, i32 0
  %47 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %46, align 8
  %48 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %49 = load i32, i32* @ICC_EXIR, align 4
  %50 = call i32 %47(%struct.IsdnCardState* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @debugl1(%struct.IsdnCardState* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %44, %1
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 0
  %57 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %56, align 8
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %59 = load i32, i32* @ICC_CIR0, align 4
  %60 = call i32 %57(%struct.IsdnCardState* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @debugl1(%struct.IsdnCardState* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = ashr i32 %64, 2
  %66 = and i32 %65, 15
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %68 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %72 = load i32, i32* @D_L1STATECHANGE, align 4
  %73 = call i32 @schedule_event(%struct.IsdnCardState* %71, i32 %72)
  %74 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %75 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %74, i32 0, i32 1
  %76 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %75, align 8
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %78 = load i32, i32* @ICC_MASK, align 4
  %79 = call i32 %76(%struct.IsdnCardState* %77, i32 %78, i32 255)
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32) #1

declare dso_local i32 @schedule_event(%struct.IsdnCardState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
