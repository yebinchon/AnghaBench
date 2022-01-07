; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_link_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_link_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.port_info = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @link_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.port_info* @netdev_priv(%struct.net_device* %6)
  store %struct.port_info* %7, %struct.port_info** %4, align 8
  %8 = load %struct.port_info*, %struct.port_info** %4, align 8
  %9 = getelementptr inbounds %struct.port_info, %struct.port_info* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.port_info*, %struct.port_info** %4, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.port_info*, %struct.port_info** %4, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.port_info*, %struct.port_info** %4, align 8
  %24 = getelementptr inbounds %struct.port_info, %struct.port_info* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @t4_set_rxmode(%struct.TYPE_5__* %15, i32 %16, i32 %19, i32 %22, i32 -1, i32 -1, i32 -1, i32 %27, i32 1)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %1
  %32 = load %struct.port_info*, %struct.port_info** %4, align 8
  %33 = getelementptr inbounds %struct.port_info, %struct.port_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.port_info*, %struct.port_info** %4, align 8
  %37 = getelementptr inbounds %struct.port_info, %struct.port_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.port_info*, %struct.port_info** %4, align 8
  %40 = getelementptr inbounds %struct.port_info, %struct.port_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @t4_change_mac(%struct.TYPE_5__* %34, i32 %35, i32 %38, i32 %41, i32 %44, i32 1, i32 1)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %31
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.port_info*, %struct.port_info** %4, align 8
  %51 = getelementptr inbounds %struct.port_info, %struct.port_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %31
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32, i32* %3, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.port_info*, %struct.port_info** %4, align 8
  %58 = getelementptr inbounds %struct.port_info, %struct.port_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.port_info*, %struct.port_info** %4, align 8
  %62 = getelementptr inbounds %struct.port_info, %struct.port_info* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.port_info*, %struct.port_info** %4, align 8
  %65 = getelementptr inbounds %struct.port_info, %struct.port_info* %64, i32 0, i32 3
  %66 = call i32 @t4_link_start(%struct.TYPE_5__* %59, i32 %60, i32 %63, i32* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %56, %53
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.port_info*, %struct.port_info** %4, align 8
  %72 = getelementptr inbounds %struct.port_info, %struct.port_info* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.port_info*, %struct.port_info** %4, align 8
  %76 = getelementptr inbounds %struct.port_info, %struct.port_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @t4_enable_vi(%struct.TYPE_5__* %73, i32 %74, i32 %77, i32 1, i32 1)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %70, %67
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @t4_set_rxmode(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @t4_change_mac(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @t4_link_start(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @t4_enable_vi(%struct.TYPE_5__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
