; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_l3ml3p.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_l3ml3p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.PStack.0*, i32, %struct.l3_process*)*, %struct.l3_process* }
%struct.PStack.0 = type opaque
%struct.l3_process = type { %struct.l3_process* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, i32)* @l3ml3p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ml3p(%struct.PStack* %0, i32 %1) #0 {
  %3 = alloca %struct.PStack*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l3_process*, align 8
  %6 = alloca %struct.l3_process*, align 8
  store %struct.PStack* %0, %struct.PStack** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.PStack*, %struct.PStack** %3, align 8
  %8 = getelementptr inbounds %struct.PStack, %struct.PStack* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  store %struct.l3_process* %10, %struct.l3_process** %5, align 8
  br label %11

11:                                               ; preds = %14, %2
  %12 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %13 = icmp ne %struct.l3_process* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %16 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %15, i32 0, i32 0
  %17 = load %struct.l3_process*, %struct.l3_process** %16, align 8
  store %struct.l3_process* %17, %struct.l3_process** %6, align 8
  %18 = load %struct.PStack*, %struct.PStack** %3, align 8
  %19 = getelementptr inbounds %struct.PStack, %struct.PStack* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.PStack.0*, i32, %struct.l3_process*)*, i32 (%struct.PStack.0*, i32, %struct.l3_process*)** %20, align 8
  %22 = load %struct.PStack*, %struct.PStack** %3, align 8
  %23 = bitcast %struct.PStack* %22 to %struct.PStack.0*
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.l3_process*, %struct.l3_process** %5, align 8
  %26 = call i32 %21(%struct.PStack.0* %23, i32 %24, %struct.l3_process* %25)
  %27 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  store %struct.l3_process* %27, %struct.l3_process** %5, align 8
  br label %11

28:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
