; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_config.c_hisax_bc_setstack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_config.c_hisax_bc_setstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.BCState*, %struct.IsdnCardState* }
%struct.IsdnCardState = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.hisax_d_if* }
%struct.hisax_d_if = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.BCState* }
%struct.BCState = type { i64, i32, i32, %struct.PStack*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@hisax_b_l2l1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.PStack*, %struct.BCState*)* @hisax_bc_setstack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisax_bc_setstack(%struct.PStack* %0, %struct.BCState* %1) #0 {
  %3 = alloca %struct.PStack*, align 8
  %4 = alloca %struct.BCState*, align 8
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca %struct.hisax_d_if*, align 8
  store %struct.PStack* %0, %struct.PStack** %3, align 8
  store %struct.BCState* %1, %struct.BCState** %4, align 8
  %7 = load %struct.PStack*, %struct.PStack** %3, align 8
  %8 = getelementptr inbounds %struct.PStack, %struct.PStack* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  store %struct.IsdnCardState* %10, %struct.IsdnCardState** %5, align 8
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.hisax_d_if*, %struct.hisax_d_if** %13, align 8
  store %struct.hisax_d_if* %14, %struct.hisax_d_if** %6, align 8
  %15 = load %struct.PStack*, %struct.PStack** %3, align 8
  %16 = getelementptr inbounds %struct.PStack, %struct.PStack* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.BCState*, %struct.BCState** %4, align 8
  %20 = getelementptr inbounds %struct.BCState, %struct.BCState* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.hisax_d_if*, %struct.hisax_d_if** %6, align 8
  %22 = getelementptr inbounds %struct.hisax_d_if, %struct.hisax_d_if* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %22, align 8
  %24 = load %struct.PStack*, %struct.PStack** %3, align 8
  %25 = getelementptr inbounds %struct.PStack, %struct.PStack* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %23, i64 %27
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load %struct.BCState*, %struct.BCState** %4, align 8
  %31 = getelementptr inbounds %struct.BCState, %struct.BCState* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.BCState*, %struct.BCState** %4, align 8
  %34 = load %struct.hisax_d_if*, %struct.hisax_d_if** %6, align 8
  %35 = getelementptr inbounds %struct.hisax_d_if, %struct.hisax_d_if* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %35, align 8
  %37 = load %struct.PStack*, %struct.PStack** %3, align 8
  %38 = getelementptr inbounds %struct.PStack, %struct.PStack* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %36, i64 %40
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store %struct.BCState* %33, %struct.BCState** %43, align 8
  %44 = load %struct.BCState*, %struct.BCState** %4, align 8
  %45 = load %struct.PStack*, %struct.PStack** %3, align 8
  %46 = getelementptr inbounds %struct.PStack, %struct.PStack* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store %struct.BCState* %44, %struct.BCState** %47, align 8
  %48 = load i32, i32* @hisax_b_l2l1, align 4
  %49 = load %struct.PStack*, %struct.PStack** %3, align 8
  %50 = getelementptr inbounds %struct.PStack, %struct.PStack* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.PStack*, %struct.PStack** %3, align 8
  %53 = call i32 @setstack_manager(%struct.PStack* %52)
  %54 = load %struct.PStack*, %struct.PStack** %3, align 8
  %55 = load %struct.BCState*, %struct.BCState** %4, align 8
  %56 = getelementptr inbounds %struct.BCState, %struct.BCState* %55, i32 0, i32 3
  store %struct.PStack* %54, %struct.PStack** %56, align 8
  %57 = load %struct.PStack*, %struct.PStack** %3, align 8
  %58 = call i32 @setstack_l1_B(%struct.PStack* %57)
  %59 = load %struct.BCState*, %struct.BCState** %4, align 8
  %60 = getelementptr inbounds %struct.BCState, %struct.BCState* %59, i32 0, i32 2
  %61 = call i32 @skb_queue_head_init(i32* %60)
  %62 = load %struct.BCState*, %struct.BCState** %4, align 8
  %63 = getelementptr inbounds %struct.BCState, %struct.BCState* %62, i32 0, i32 1
  %64 = call i32 @skb_queue_head_init(i32* %63)
  ret i32 0
}

declare dso_local i32 @setstack_manager(%struct.PStack*) #1

declare dso_local i32 @setstack_l1_B(%struct.PStack*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
