; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_isar_pump_status_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_isar_pump_status_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, %struct.TYPE_6__, %struct.IsdnCardState* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.IsdnCardState = type { i32 }
%struct.isar_reg = type { i32* }

@ISAR_RATE_REQ = common dso_local global i32 0, align 4
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"wrong pstrsp ril=%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@dmril = common dso_local global i8** null, align 8
@dmrim = common dso_local global i8** null, align 8
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"pump strsp %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, %struct.isar_reg*)* @isar_pump_status_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isar_pump_status_rsp(%struct.BCState* %0, %struct.isar_reg* %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca %struct.isar_reg*, align 8
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store %struct.isar_reg* %1, %struct.isar_reg** %4, align 8
  %8 = load %struct.BCState*, %struct.BCState** %3, align 8
  %9 = getelementptr inbounds %struct.BCState, %struct.BCState* %8, i32 0, i32 2
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  store %struct.IsdnCardState* %10, %struct.IsdnCardState** %5, align 8
  %11 = load %struct.isar_reg*, %struct.isar_reg** %4, align 8
  %12 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @ISAR_RATE_REQ, align 4
  %17 = load %struct.BCState*, %struct.BCState** %3, align 8
  %18 = getelementptr inbounds %struct.BCState, %struct.BCState* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @test_and_clear_bit(i32 %16, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %94

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 14
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %31 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @L1_DEB_WARN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @debugl1(%struct.IsdnCardState* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %29
  store i32 15, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.isar_reg*, %struct.isar_reg** %4, align 8
  %43 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %57 [
    i32 0, label %47
    i32 32, label %48
    i32 64, label %49
    i32 65, label %50
    i32 81, label %51
    i32 97, label %52
    i32 113, label %53
    i32 130, label %54
    i32 146, label %55
    i32 162, label %56
  ]

47:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %58

48:                                               ; preds = %41
  store i32 2, i32* %7, align 4
  br label %58

49:                                               ; preds = %41
  store i32 3, i32* %7, align 4
  br label %58

50:                                               ; preds = %41
  store i32 4, i32* %7, align 4
  br label %58

51:                                               ; preds = %41
  store i32 5, i32* %7, align 4
  br label %58

52:                                               ; preds = %41
  store i32 6, i32* %7, align 4
  br label %58

53:                                               ; preds = %41
  store i32 7, i32* %7, align 4
  br label %58

54:                                               ; preds = %41
  store i32 8, i32* %7, align 4
  br label %58

55:                                               ; preds = %41
  store i32 9, i32* %7, align 4
  br label %58

56:                                               ; preds = %41
  store i32 10, i32* %7, align 4
  br label %58

57:                                               ; preds = %41
  store i32 1, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47
  %59 = load %struct.BCState*, %struct.BCState** %3, align 8
  %60 = getelementptr inbounds %struct.BCState, %struct.BCState* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i8**, i8*** @dmril, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** @dmrim, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @sprintf(i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8* %73)
  %75 = load %struct.BCState*, %struct.BCState** %3, align 8
  %76 = getelementptr inbounds %struct.BCState, %struct.BCState* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.BCState*, %struct.BCState** %3, align 8
  %81 = getelementptr inbounds %struct.BCState, %struct.BCState* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %83 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @L1_DEB_HSCX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %58
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %90 = load %struct.BCState*, %struct.BCState** %3, align 8
  %91 = getelementptr inbounds %struct.BCState, %struct.BCState* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @debugl1(%struct.IsdnCardState* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %25, %88, %58
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
