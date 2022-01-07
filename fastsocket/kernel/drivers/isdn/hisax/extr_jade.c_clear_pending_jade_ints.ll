; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_jade.c_clear_pending_jade_ints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_jade.c_clear_pending_jade_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)* }

@jade_HDLC_IMR = common dso_local global i32 0, align 4
@jade_HDLC_ISR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"jade B ISTA %x\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"jade A ISTA %x\00", align 1
@jade_HDLC_STAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"jade B STAR %x\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"jade A STAR %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_pending_jade_ints(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 1
  %7 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %6, align 8
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %9 = load i32, i32* @jade_HDLC_IMR, align 4
  %10 = call i32 %7(%struct.IsdnCardState* %8, i32 0, i32 %9, i32 0)
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 1
  %13 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %12, align 8
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %15 = load i32, i32* @jade_HDLC_IMR, align 4
  %16 = call i32 %13(%struct.IsdnCardState* %14, i32 1, i32 %15, i32 0)
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 0
  %19 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %18, align 8
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %21 = load i32, i32* @jade_HDLC_ISR, align 4
  %22 = call i32 %19(%struct.IsdnCardState* %20, i32 1, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %28 = call i32 @debugl1(%struct.IsdnCardState* %26, i8* %27)
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 0
  %31 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %30, align 8
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %33 = load i32, i32* @jade_HDLC_ISR, align 4
  %34 = call i32 %31(%struct.IsdnCardState* %32, i32 0, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %40 = call i32 @debugl1(%struct.IsdnCardState* %38, i8* %39)
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %42 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %41, i32 0, i32 0
  %43 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %42, align 8
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %45 = load i32, i32* @jade_HDLC_STAR, align 4
  %46 = call i32 %43(%struct.IsdnCardState* %44, i32 1, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %52 = call i32 @debugl1(%struct.IsdnCardState* %50, i8* %51)
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %54 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %53, i32 0, i32 0
  %55 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %54, align 8
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %57 = load i32, i32* @jade_HDLC_STAR, align 4
  %58 = call i32 %55(%struct.IsdnCardState* %56, i32 0, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %64 = call i32 @debugl1(%struct.IsdnCardState* %62, i8* %63)
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %66 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %65, i32 0, i32 1
  %67 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %66, align 8
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %69 = load i32, i32* @jade_HDLC_IMR, align 4
  %70 = call i32 %67(%struct.IsdnCardState* %68, i32 0, i32 %69, i32 248)
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 1
  %73 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %72, align 8
  %74 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %75 = load i32, i32* @jade_HDLC_IMR, align 4
  %76 = call i32 %73(%struct.IsdnCardState* %74, i32 1, i32 %75, i32 248)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
