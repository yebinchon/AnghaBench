; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_config.c_closecard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_config.c_closecard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.IsdnCardState* }
%struct.IsdnCardState = type { %struct.TYPE_6__, i32 (%struct.IsdnCardState*, i32, i32*)*, i32 (%struct.IsdnCardState*)*, i32*, i32*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)* }

@cards = common dso_local global %struct.TYPE_7__* null, align 8
@CARD_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @closecard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closecard(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.IsdnCardState*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cards, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %8, align 8
  store %struct.IsdnCardState* %9, %struct.IsdnCardState** %3, align 8
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 7
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_5__*)* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 7
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %20, align 8
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 7
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 1
  %26 = call i32 %21(%struct.TYPE_5__* %25)
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %28 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %27, i32 0, i32 7
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %30, align 8
  %32 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %33 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %32, i32 0, i32 7
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32 %31(%struct.TYPE_5__* %34)
  br label %36

36:                                               ; preds = %16, %1
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %38 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %37, i32 0, i32 6
  %39 = call i32 @skb_queue_purge(i32* %38)
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 5
  %42 = call i32 @skb_queue_purge(i32* %41)
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %44 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %48 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %47, i32 0, i32 4
  store i32* null, i32** %48, align 8
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %36
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %55 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dev_kfree_skb(i32* %56)
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %59 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %53, %36
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %62 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %61, i32 0, i32 2
  %63 = load i32 (%struct.IsdnCardState*)*, i32 (%struct.IsdnCardState*)** %62, align 8
  %64 = icmp ne i32 (%struct.IsdnCardState*)* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %67 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %66, i32 0, i32 2
  %68 = load i32 (%struct.IsdnCardState*)*, i32 (%struct.IsdnCardState*)** %67, align 8
  %69 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %70 = call i32 %68(%struct.IsdnCardState* %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %73 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %72, i32 0, i32 1
  %74 = load i32 (%struct.IsdnCardState*, i32, i32*)*, i32 (%struct.IsdnCardState*, i32, i32*)** %73, align 8
  %75 = icmp ne i32 (%struct.IsdnCardState*, i32, i32*)* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %78 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %77, i32 0, i32 1
  %79 = load i32 (%struct.IsdnCardState*, i32, i32*)*, i32 (%struct.IsdnCardState*, i32, i32*)** %78, align 8
  %80 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %81 = load i32, i32* @CARD_RELEASE, align 4
  %82 = call i32 %79(%struct.IsdnCardState* %80, i32 %81, i32* null)
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %85 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %91 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %90, i32 0, i32 0
  %92 = call i32 @del_timer(%struct.TYPE_6__* %91)
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %95 = call i32 @ll_unload(%struct.IsdnCardState* %94)
  ret void
}

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @ll_unload(%struct.IsdnCardState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
