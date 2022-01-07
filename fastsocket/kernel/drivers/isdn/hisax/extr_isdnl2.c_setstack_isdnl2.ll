; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_setstack_isdnl2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_setstack_isdnl2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, %struct.PStack*, i64, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@isdnl2_l1l2 = common dso_local global i32 0, align 4
@isdnl2_l3l2 = common dso_local global i32 0, align 4
@l2fsm = common dso_local global i32 0, align 4
@FLG_LAPB = common dso_local global i32 0, align 4
@ST_L2_4 = common dso_local global i32 0, align 4
@ST_L2_1 = common dso_local global i32 0, align 4
@l2m_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setstack_isdnl2(%struct.PStack* %0, i8* %1) #0 {
  %3 = alloca %struct.PStack*, align 8
  %4 = alloca i8*, align 8
  store %struct.PStack* %0, %struct.PStack** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.PStack*, %struct.PStack** %3, align 8
  %6 = getelementptr inbounds %struct.PStack, %struct.PStack* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 8
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load i32, i32* @isdnl2_l1l2, align 4
  %10 = load %struct.PStack*, %struct.PStack** %3, align 8
  %11 = getelementptr inbounds %struct.PStack, %struct.PStack* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @isdnl2_l3l2, align 4
  %14 = load %struct.PStack*, %struct.PStack** %3, align 8
  %15 = getelementptr inbounds %struct.PStack, %struct.PStack* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.PStack*, %struct.PStack** %3, align 8
  %18 = getelementptr inbounds %struct.PStack, %struct.PStack* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 7
  %20 = call i32 @skb_queue_head_init(i32* %19)
  %21 = load %struct.PStack*, %struct.PStack** %3, align 8
  %22 = getelementptr inbounds %struct.PStack, %struct.PStack* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 6
  %24 = call i32 @skb_queue_head_init(i32* %23)
  %25 = load %struct.PStack*, %struct.PStack** %3, align 8
  %26 = getelementptr inbounds %struct.PStack, %struct.PStack* %25, i32 0, i32 0
  %27 = call i32 @InitWin(%struct.TYPE_7__* %26)
  %28 = load %struct.PStack*, %struct.PStack** %3, align 8
  %29 = getelementptr inbounds %struct.PStack, %struct.PStack* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.PStack*, %struct.PStack** %3, align 8
  %32 = getelementptr inbounds %struct.PStack, %struct.PStack* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  store i32* @l2fsm, i32** %34, align 8
  %35 = load i32, i32* @FLG_LAPB, align 4
  %36 = load %struct.PStack*, %struct.PStack** %3, align 8
  %37 = getelementptr inbounds %struct.PStack, %struct.PStack* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  %39 = call i64 @test_bit(i32 %35, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load i32, i32* @ST_L2_4, align 4
  %43 = load %struct.PStack*, %struct.PStack** %3, align 8
  %44 = getelementptr inbounds %struct.PStack, %struct.PStack* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  store i32 %42, i32* %46, align 8
  br label %53

47:                                               ; preds = %2
  %48 = load i32, i32* @ST_L2_1, align 4
  %49 = load %struct.PStack*, %struct.PStack** %3, align 8
  %50 = getelementptr inbounds %struct.PStack, %struct.PStack* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  store i32 %48, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.PStack*, %struct.PStack** %3, align 8
  %55 = getelementptr inbounds %struct.PStack, %struct.PStack* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.PStack*, %struct.PStack** %3, align 8
  %59 = load %struct.PStack*, %struct.PStack** %3, align 8
  %60 = getelementptr inbounds %struct.PStack, %struct.PStack* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store %struct.PStack* %58, %struct.PStack** %62, align 8
  %63 = load %struct.PStack*, %struct.PStack** %3, align 8
  %64 = getelementptr inbounds %struct.PStack, %struct.PStack* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @l2m_debug, align 4
  %68 = load %struct.PStack*, %struct.PStack** %3, align 8
  %69 = getelementptr inbounds %struct.PStack, %struct.PStack* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  %72 = load %struct.PStack*, %struct.PStack** %3, align 8
  %73 = getelementptr inbounds %struct.PStack, %struct.PStack* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @strcpy(i32 %75, i8* %76)
  %78 = load %struct.PStack*, %struct.PStack** %3, align 8
  %79 = getelementptr inbounds %struct.PStack, %struct.PStack* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load %struct.PStack*, %struct.PStack** %3, align 8
  %82 = getelementptr inbounds %struct.PStack, %struct.PStack* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = call i32 @FsmInitTimer(%struct.TYPE_8__* %80, i32* %83)
  %85 = load %struct.PStack*, %struct.PStack** %3, align 8
  %86 = getelementptr inbounds %struct.PStack, %struct.PStack* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load %struct.PStack*, %struct.PStack** %3, align 8
  %89 = getelementptr inbounds %struct.PStack, %struct.PStack* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = call i32 @FsmInitTimer(%struct.TYPE_8__* %87, i32* %90)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @InitWin(%struct.TYPE_7__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @FsmInitTimer(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
