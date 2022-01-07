; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_setstack_elsa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_setstack_elsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, %struct.BCState*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.BCState = type { i32, %struct.PStack*, %struct.TYPE_12__*, i32, %struct.TYPE_9__, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.BCState*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@hscx_l2l1 = common dso_local global i32 0, align 4
@BC_FLG_INIT = common dso_local global i32 0, align 4
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@modem_l2l1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.PStack*, %struct.BCState*)* @setstack_elsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setstack_elsa(%struct.PStack* %0, %struct.BCState* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca %struct.BCState*, align 8
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store %struct.BCState* %1, %struct.BCState** %5, align 8
  %6 = load %struct.PStack*, %struct.PStack** %4, align 8
  %7 = getelementptr inbounds %struct.PStack, %struct.PStack* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.BCState*, %struct.BCState** %5, align 8
  %11 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 8
  %12 = load %struct.PStack*, %struct.PStack** %4, align 8
  %13 = getelementptr inbounds %struct.PStack, %struct.PStack* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %82 [
    i32 130, label %16
    i32 128, label %16
    i32 129, label %30
  ]

16:                                               ; preds = %2, %2
  %17 = load %struct.PStack*, %struct.PStack** %4, align 8
  %18 = getelementptr inbounds %struct.PStack, %struct.PStack* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.BCState*, %struct.BCState** %5, align 8
  %22 = call i32 @open_hscxstate(i32 %20, %struct.BCState* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %94

25:                                               ; preds = %16
  %26 = load i32, i32* @hscx_l2l1, align 4
  %27 = load %struct.PStack*, %struct.PStack** %4, align 8
  %28 = getelementptr inbounds %struct.PStack, %struct.PStack* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  br label %82

30:                                               ; preds = %2
  %31 = load %struct.BCState*, %struct.BCState** %5, align 8
  %32 = getelementptr inbounds %struct.BCState, %struct.BCState* %31, i32 0, i32 0
  store i32 129, i32* %32, align 8
  %33 = load i32, i32* @BC_FLG_INIT, align 4
  %34 = load %struct.BCState*, %struct.BCState** %5, align 8
  %35 = getelementptr inbounds %struct.BCState, %struct.BCState* %34, i32 0, i32 6
  %36 = call i32 @test_and_set_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %30
  %39 = load %struct.BCState*, %struct.BCState** %5, align 8
  %40 = getelementptr inbounds %struct.BCState, %struct.BCState* %39, i32 0, i32 2
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.BCState*, %struct.BCState** %5, align 8
  %47 = getelementptr inbounds %struct.BCState, %struct.BCState* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.BCState*, %struct.BCState** %5, align 8
  %51 = getelementptr inbounds %struct.BCState, %struct.BCState* %50, i32 0, i32 9
  %52 = call i32 @skb_queue_head_init(i32* %51)
  %53 = load %struct.BCState*, %struct.BCState** %5, align 8
  %54 = getelementptr inbounds %struct.BCState, %struct.BCState* %53, i32 0, i32 8
  %55 = call i32 @skb_queue_head_init(i32* %54)
  br label %56

56:                                               ; preds = %38, %30
  %57 = load %struct.BCState*, %struct.BCState** %5, align 8
  %58 = getelementptr inbounds %struct.BCState, %struct.BCState* %57, i32 0, i32 7
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* @BC_FLG_BUSY, align 4
  %60 = load %struct.BCState*, %struct.BCState** %5, align 8
  %61 = getelementptr inbounds %struct.BCState, %struct.BCState* %60, i32 0, i32 6
  %62 = call i32 @test_and_clear_bit(i32 %59, i32* %61)
  %63 = load %struct.BCState*, %struct.BCState** %5, align 8
  %64 = getelementptr inbounds %struct.BCState, %struct.BCState* %63, i32 0, i32 5
  store i32 0, i32* %64, align 4
  %65 = load %struct.BCState*, %struct.BCState** %5, align 8
  %66 = getelementptr inbounds %struct.BCState, %struct.BCState* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = load %struct.BCState*, %struct.BCState** %5, align 8
  %70 = getelementptr inbounds %struct.BCState, %struct.BCState* %69, i32 0, i32 3
  store i32 0, i32* %70, align 8
  %71 = load %struct.BCState*, %struct.BCState** %5, align 8
  %72 = load %struct.BCState*, %struct.BCState** %5, align 8
  %73 = getelementptr inbounds %struct.BCState, %struct.BCState* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store %struct.BCState* %71, %struct.BCState** %77, align 8
  %78 = load i32, i32* @modem_l2l1, align 4
  %79 = load %struct.PStack*, %struct.PStack** %4, align 8
  %80 = getelementptr inbounds %struct.PStack, %struct.PStack* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  br label %82

82:                                               ; preds = %2, %56, %25
  %83 = load %struct.BCState*, %struct.BCState** %5, align 8
  %84 = load %struct.PStack*, %struct.PStack** %4, align 8
  %85 = getelementptr inbounds %struct.PStack, %struct.PStack* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store %struct.BCState* %83, %struct.BCState** %86, align 8
  %87 = load %struct.PStack*, %struct.PStack** %4, align 8
  %88 = call i32 @setstack_manager(%struct.PStack* %87)
  %89 = load %struct.PStack*, %struct.PStack** %4, align 8
  %90 = load %struct.BCState*, %struct.BCState** %5, align 8
  %91 = getelementptr inbounds %struct.BCState, %struct.BCState* %90, i32 0, i32 1
  store %struct.PStack* %89, %struct.PStack** %91, align 8
  %92 = load %struct.PStack*, %struct.PStack** %4, align 8
  %93 = call i32 @setstack_l1_B(%struct.PStack* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %82, %24
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @open_hscxstate(i32, %struct.BCState*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @setstack_manager(%struct.PStack*) #1

declare dso_local i32 @setstack_l1_B(%struct.PStack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
