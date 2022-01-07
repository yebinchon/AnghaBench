; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_getif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_getif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoeif = type { %struct.net_device* }
%struct.aoetgt = type { %struct.aoeif* }
%struct.net_device = type { i32 }

@NAOEIFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aoeif* (%struct.aoetgt*, %struct.net_device*)* @getif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aoeif* @getif(%struct.aoetgt* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.aoeif*, align 8
  %4 = alloca %struct.aoetgt*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.aoeif*, align 8
  %7 = alloca %struct.aoeif*, align 8
  store %struct.aoetgt* %0, %struct.aoetgt** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.aoetgt*, %struct.aoetgt** %4, align 8
  %9 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %8, i32 0, i32 0
  %10 = load %struct.aoeif*, %struct.aoeif** %9, align 8
  store %struct.aoeif* %10, %struct.aoeif** %6, align 8
  %11 = load %struct.aoeif*, %struct.aoeif** %6, align 8
  %12 = load i32, i32* @NAOEIFS, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %11, i64 %13
  store %struct.aoeif* %14, %struct.aoeif** %7, align 8
  br label %15

15:                                               ; preds = %28, %2
  %16 = load %struct.aoeif*, %struct.aoeif** %6, align 8
  %17 = load %struct.aoeif*, %struct.aoeif** %7, align 8
  %18 = icmp ult %struct.aoeif* %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.aoeif*, %struct.aoeif** %6, align 8
  %21 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = icmp eq %struct.net_device* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.aoeif*, %struct.aoeif** %6, align 8
  store %struct.aoeif* %26, %struct.aoeif** %3, align 8
  br label %32

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.aoeif*, %struct.aoeif** %6, align 8
  %30 = getelementptr inbounds %struct.aoeif, %struct.aoeif* %29, i32 1
  store %struct.aoeif* %30, %struct.aoeif** %6, align 8
  br label %15

31:                                               ; preds = %15
  store %struct.aoeif* null, %struct.aoeif** %3, align 8
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.aoeif*, %struct.aoeif** %3, align 8
  ret %struct.aoeif* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
