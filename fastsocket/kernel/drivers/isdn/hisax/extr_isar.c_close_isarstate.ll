; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_close_isarstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_close_isarstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }

@BC_FLG_INIT = common dso_local global i32 0, align 4
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"closeisar clear BC_FLG_BUSY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @close_isarstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_isarstate(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %3 = load %struct.BCState*, %struct.BCState** %2, align 8
  %4 = load %struct.BCState*, %struct.BCState** %2, align 8
  %5 = getelementptr inbounds %struct.BCState, %struct.BCState* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @modeisar(%struct.BCState* %3, i32 0, i32 %6)
  %8 = load i32, i32* @BC_FLG_INIT, align 4
  %9 = load %struct.BCState*, %struct.BCState** %2, align 8
  %10 = getelementptr inbounds %struct.BCState, %struct.BCState* %9, i32 0, i32 2
  %11 = call i64 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %1
  %14 = load %struct.BCState*, %struct.BCState** %2, align 8
  %15 = getelementptr inbounds %struct.BCState, %struct.BCState* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree(i32* %18)
  %20 = load %struct.BCState*, %struct.BCState** %2, align 8
  %21 = getelementptr inbounds %struct.BCState, %struct.BCState* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.BCState*, %struct.BCState** %2, align 8
  %25 = getelementptr inbounds %struct.BCState, %struct.BCState* %24, i32 0, i32 5
  %26 = call i32 @skb_queue_purge(i32* %25)
  %27 = load %struct.BCState*, %struct.BCState** %2, align 8
  %28 = getelementptr inbounds %struct.BCState, %struct.BCState* %27, i32 0, i32 4
  %29 = call i32 @skb_queue_purge(i32* %28)
  %30 = load %struct.BCState*, %struct.BCState** %2, align 8
  %31 = getelementptr inbounds %struct.BCState, %struct.BCState* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %13
  %35 = load %struct.BCState*, %struct.BCState** %2, align 8
  %36 = getelementptr inbounds %struct.BCState, %struct.BCState* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @dev_kfree_skb_any(i32* %37)
  %39 = load %struct.BCState*, %struct.BCState** %2, align 8
  %40 = getelementptr inbounds %struct.BCState, %struct.BCState* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @BC_FLG_BUSY, align 4
  %42 = load %struct.BCState*, %struct.BCState** %2, align 8
  %43 = getelementptr inbounds %struct.BCState, %struct.BCState* %42, i32 0, i32 2
  %44 = call i64 @test_and_clear_bit(i32 %41, i32* %43)
  %45 = load %struct.BCState*, %struct.BCState** %2, align 8
  %46 = getelementptr inbounds %struct.BCState, %struct.BCState* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @L1_DEB_HSCX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %34
  %54 = load %struct.BCState*, %struct.BCState** %2, align 8
  %55 = getelementptr inbounds %struct.BCState, %struct.BCState* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i32 @debugl1(%struct.TYPE_6__* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %34
  br label %59

59:                                               ; preds = %58, %13
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.BCState*, %struct.BCState** %2, align 8
  %62 = getelementptr inbounds %struct.BCState, %struct.BCState* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @del_timer(i32* %64)
  ret void
}

declare dso_local i32 @modeisar(%struct.BCState*, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @debugl1(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
