; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_cam_route_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_cam_route_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32 }

@STS = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to init mac address.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to init routing table.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_cam_route_initialize(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  %6 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %7 = load i32, i32* @STS, align 4
  %8 = call i32 @ql_read32(%struct.ql_adapter* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ql_set_mac_addr(%struct.ql_adapter* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %21 = load i32, i32* @ifup, align 4
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netif_err(%struct.ql_adapter* %20, i32 %21, i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %1
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %29 = call i32 @ql_route_initialize(%struct.ql_adapter* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %34 = load i32, i32* @ifup, align 4
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_err(%struct.ql_adapter* %33, i32 %34, i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_set_mac_addr(%struct.ql_adapter*, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_route_initialize(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
