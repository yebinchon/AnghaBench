; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_search_dummy_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_search_dummy_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.l3_process*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.PStack = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.l3_process* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l3_process* (%struct.PStack*, i32)* @l3dss1_search_dummy_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l3_process* @l3dss1_search_dummy_proc(%struct.PStack* %0, i32 %1) #0 {
  %3 = alloca %struct.l3_process*, align 8
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l3_process*, align 8
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.PStack*, %struct.PStack** %4, align 8
  %8 = getelementptr inbounds %struct.PStack, %struct.PStack* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.l3_process*, %struct.l3_process** %9, align 8
  store %struct.l3_process* %10, %struct.l3_process** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.l3_process* null, %struct.l3_process** %3, align 8
  br label %38

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %33, %14
  %16 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %17 = icmp ne %struct.l3_process* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %20 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %25 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  store %struct.l3_process* %32, %struct.l3_process** %3, align 8
  br label %38

33:                                               ; preds = %23, %18
  %34 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %35 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %34, i32 0, i32 1
  %36 = load %struct.l3_process*, %struct.l3_process** %35, align 8
  store %struct.l3_process* %36, %struct.l3_process** %6, align 8
  br label %15

37:                                               ; preds = %15
  store %struct.l3_process* null, %struct.l3_process** %3, align 8
  br label %38

38:                                               ; preds = %37, %31, %13
  %39 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  ret %struct.l3_process* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
