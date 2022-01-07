; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_setstack_l3bc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_setstack_l3bc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i64, %struct.PStack*, i32, i32* }
%struct.Channel = type { i32 }

@l3fsm = common dso_local global i32 0, align 4
@ST_L3_LC_REL = common dso_local global i32 0, align 4
@l3m_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"L3BC \00", align 1
@isdnl3_trans = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setstack_l3bc(%struct.PStack* %0, %struct.Channel* %1) #0 {
  %3 = alloca %struct.PStack*, align 8
  %4 = alloca %struct.Channel*, align 8
  store %struct.PStack* %0, %struct.PStack** %3, align 8
  store %struct.Channel* %1, %struct.Channel** %4, align 8
  %5 = load %struct.PStack*, %struct.PStack** %3, align 8
  %6 = getelementptr inbounds %struct.PStack, %struct.PStack* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i32* null, i32** %7, align 8
  %8 = load %struct.PStack*, %struct.PStack** %3, align 8
  %9 = getelementptr inbounds %struct.PStack, %struct.PStack* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.PStack*, %struct.PStack** %3, align 8
  %12 = getelementptr inbounds %struct.PStack, %struct.PStack* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = call i32 @skb_queue_head_init(i32* %13)
  %15 = load %struct.PStack*, %struct.PStack** %3, align 8
  %16 = getelementptr inbounds %struct.PStack, %struct.PStack* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  store i32* @l3fsm, i32** %18, align 8
  %19 = load i32, i32* @ST_L3_LC_REL, align 4
  %20 = load %struct.PStack*, %struct.PStack** %3, align 8
  %21 = getelementptr inbounds %struct.PStack, %struct.PStack* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %19, i32* %23, align 8
  %24 = load %struct.PStack*, %struct.PStack** %3, align 8
  %25 = getelementptr inbounds %struct.PStack, %struct.PStack* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.PStack*, %struct.PStack** %3, align 8
  %29 = load %struct.PStack*, %struct.PStack** %3, align 8
  %30 = getelementptr inbounds %struct.PStack, %struct.PStack* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store %struct.PStack* %28, %struct.PStack** %32, align 8
  %33 = load %struct.PStack*, %struct.PStack** %3, align 8
  %34 = getelementptr inbounds %struct.PStack, %struct.PStack* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @l3m_debug, align 4
  %38 = load %struct.PStack*, %struct.PStack** %3, align 8
  %39 = getelementptr inbounds %struct.PStack, %struct.PStack* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.PStack*, %struct.PStack** %3, align 8
  %43 = getelementptr inbounds %struct.PStack, %struct.PStack* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @strcpy(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @isdnl3_trans, align 4
  %48 = load %struct.PStack*, %struct.PStack** %3, align 8
  %49 = getelementptr inbounds %struct.PStack, %struct.PStack* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  ret void
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
