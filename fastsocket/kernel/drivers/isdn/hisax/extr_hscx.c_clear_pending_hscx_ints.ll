; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hscx.c_clear_pending_hscx_ints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hscx.c_clear_pending_hscx_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)* }

@HSCX_ISTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"HSCX B ISTA %x\00", align 1
@HSCX_EXIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"HSCX B EXIR %x\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"HSCX A EXIR %x\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"HSCX A ISTA %x\00", align 1
@HSCX_STAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"HSCX B STAR %x\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"HSCX A STAR %x\00", align 1
@HSCX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_pending_hscx_ints(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 0
  %7 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %6, align 8
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %9 = load i32, i32* @HSCX_ISTA, align 4
  %10 = call i32 %7(%struct.IsdnCardState* %8, i32 1, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @debugl1(%struct.IsdnCardState* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 0
  %20 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %19, align 8
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %22 = load i32, i32* @HSCX_EXIR, align 4
  %23 = call i32 %20(%struct.IsdnCardState* %21, i32 1, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @debugl1(%struct.IsdnCardState* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %17, %1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %33 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %32, i32 0, i32 0
  %34 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %33, align 8
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %36 = load i32, i32* @HSCX_EXIR, align 4
  %37 = call i32 %34(%struct.IsdnCardState* %35, i32 0, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @debugl1(%struct.IsdnCardState* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %31, %27
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 0
  %44 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %43, align 8
  %45 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %46 = load i32, i32* @HSCX_ISTA, align 4
  %47 = call i32 %44(%struct.IsdnCardState* %45, i32 0, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @debugl1(%struct.IsdnCardState* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %52 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %51, i32 0, i32 0
  %53 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %52, align 8
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %55 = load i32, i32* @HSCX_STAR, align 4
  %56 = call i32 %53(%struct.IsdnCardState* %54, i32 1, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @debugl1(%struct.IsdnCardState* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %61 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %60, i32 0, i32 0
  %62 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %61, align 8
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %64 = load i32, i32* @HSCX_STAR, align 4
  %65 = call i32 %62(%struct.IsdnCardState* %63, i32 0, i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @debugl1(%struct.IsdnCardState* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %70 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %69, i32 0, i32 1
  %71 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %70, align 8
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %73 = load i32, i32* @HSCX_MASK, align 4
  %74 = call i32 %71(%struct.IsdnCardState* %72, i32 0, i32 %73, i32 255)
  %75 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %76 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %75, i32 0, i32 1
  %77 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %76, align 8
  %78 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %79 = load i32, i32* @HSCX_MASK, align 4
  %80 = call i32 %77(%struct.IsdnCardState* %78, i32 1, i32 %79, i32 255)
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
