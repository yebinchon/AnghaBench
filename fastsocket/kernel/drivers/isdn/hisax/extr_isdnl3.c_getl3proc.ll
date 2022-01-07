; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_getl3proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_getl3proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.l3_process* }
%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.l3_process* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l3_process* @getl3proc(%struct.PStack* %0, i32 %1) #0 {
  %3 = alloca %struct.l3_process*, align 8
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l3_process*, align 8
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.PStack*, %struct.PStack** %4, align 8
  %8 = getelementptr inbounds %struct.PStack, %struct.PStack* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  store %struct.l3_process* %10, %struct.l3_process** %6, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %13 = icmp ne %struct.l3_process* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %16 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  store %struct.l3_process* %21, %struct.l3_process** %3, align 8
  br label %28

22:                                               ; preds = %14
  %23 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %24 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %23, i32 0, i32 1
  %25 = load %struct.l3_process*, %struct.l3_process** %24, align 8
  store %struct.l3_process* %25, %struct.l3_process** %6, align 8
  br label %26

26:                                               ; preds = %22
  br label %11

27:                                               ; preds = %11
  store %struct.l3_process* null, %struct.l3_process** %3, align 8
  br label %28

28:                                               ; preds = %27, %20
  %29 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  ret %struct.l3_process* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
