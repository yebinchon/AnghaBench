; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___get_duplex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___get_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, %struct.slave* }
%struct.slave = type { i64, i32 }

@BOND_LINK_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Port %d Received status full duplex update from adapter\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Port %d Received status NOT full duplex update from adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port*)* @__get_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_duplex(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.slave*, align 8
  %4 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %2, align 8
  %5 = load %struct.port*, %struct.port** %2, align 8
  %6 = getelementptr inbounds %struct.port, %struct.port* %5, i32 0, i32 1
  %7 = load %struct.slave*, %struct.slave** %6, align 8
  store %struct.slave* %7, %struct.slave** %3, align 8
  %8 = load %struct.slave*, %struct.slave** %3, align 8
  %9 = getelementptr inbounds %struct.slave, %struct.slave* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BOND_LINK_UP, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.slave*, %struct.slave** %3, align 8
  %16 = getelementptr inbounds %struct.slave, %struct.slave* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %23
  ]

18:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  %19 = load %struct.port*, %struct.port** %2, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %29

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %14, %23
  store i32 0, i32* %4, align 4
  %25 = load %struct.port*, %struct.port** %2, align 8
  %26 = getelementptr inbounds %struct.port, %struct.port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %18
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
