; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_deliver_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_deliver_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.IsdnCardState* }
%struct.IsdnCardState = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*)* }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }

@IE_DISPLAY = common dso_local global i32 0, align 4
@ISDN_STAT_DISPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i32*)* @l3dss1_deliver_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_deliver_display(%struct.l3_process* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.IsdnCardState*, align 8
  %10 = alloca i8*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @IE_DISPLAY, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %69

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  store i32 %20, i32* %7, align 4
  %21 = icmp sgt i32 %20, 80
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %69

23:                                               ; preds = %17
  %24 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %25 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %69

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  br label %33

33:                                               ; preds = %37, %29
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  %40 = load i32, i32* %38, align 4
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %10, align 8
  store i8 %41, i8* %42, align 1
  br label %33

44:                                               ; preds = %33
  %45 = load i8*, i8** %10, align 8
  store i8 0, i8* %45, align 1
  %46 = load i32, i32* @ISDN_STAT_DISPLAY, align 4
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %49 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %52, align 8
  store %struct.IsdnCardState* %53, %struct.IsdnCardState** %9, align 8
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %55 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %59 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  %65 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %66, align 8
  %68 = call i32 %67(%struct.TYPE_13__* %8)
  br label %69

69:                                               ; preds = %44, %28, %22, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
