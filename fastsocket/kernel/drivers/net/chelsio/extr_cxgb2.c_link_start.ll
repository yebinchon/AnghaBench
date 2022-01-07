; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_link_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_link_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, i32, %struct.TYPE_4__*, %struct.cmac* }
%struct.TYPE_4__ = type { i32 }
%struct.cmac = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.cmac*, i32)*, i32 (%struct.cmac*, i32)*, i32 (%struct.cmac*)* }

@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_info*)* @link_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_start(%struct.port_info* %0) #0 {
  %2 = alloca %struct.port_info*, align 8
  %3 = alloca %struct.cmac*, align 8
  store %struct.port_info* %0, %struct.port_info** %2, align 8
  %4 = load %struct.port_info*, %struct.port_info** %2, align 8
  %5 = getelementptr inbounds %struct.port_info, %struct.port_info* %4, i32 0, i32 3
  %6 = load %struct.cmac*, %struct.cmac** %5, align 8
  store %struct.cmac* %6, %struct.cmac** %3, align 8
  %7 = load %struct.cmac*, %struct.cmac** %3, align 8
  %8 = getelementptr inbounds %struct.cmac, %struct.cmac* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32 (%struct.cmac*)*, i32 (%struct.cmac*)** %10, align 8
  %12 = load %struct.cmac*, %struct.cmac** %3, align 8
  %13 = call i32 %11(%struct.cmac* %12)
  %14 = load %struct.cmac*, %struct.cmac** %3, align 8
  %15 = getelementptr inbounds %struct.cmac, %struct.cmac* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32 (%struct.cmac*, i32)*, i32 (%struct.cmac*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.cmac*, i32)* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load %struct.cmac*, %struct.cmac** %3, align 8
  %22 = getelementptr inbounds %struct.cmac, %struct.cmac* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32 (%struct.cmac*, i32)*, i32 (%struct.cmac*, i32)** %24, align 8
  %26 = load %struct.cmac*, %struct.cmac** %3, align 8
  %27 = load %struct.port_info*, %struct.port_info** %2, align 8
  %28 = getelementptr inbounds %struct.port_info, %struct.port_info* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %25(%struct.cmac* %26, i32 %31)
  br label %33

33:                                               ; preds = %20, %1
  %34 = load %struct.port_info*, %struct.port_info** %2, align 8
  %35 = getelementptr inbounds %struct.port_info, %struct.port_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @t1_set_rxmode(%struct.TYPE_4__* %36)
  %38 = load %struct.port_info*, %struct.port_info** %2, align 8
  %39 = getelementptr inbounds %struct.port_info, %struct.port_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cmac*, %struct.cmac** %3, align 8
  %42 = load %struct.port_info*, %struct.port_info** %2, align 8
  %43 = getelementptr inbounds %struct.port_info, %struct.port_info* %42, i32 0, i32 0
  %44 = call i32 @t1_link_start(i32 %40, %struct.cmac* %41, i32* %43)
  %45 = load %struct.cmac*, %struct.cmac** %3, align 8
  %46 = getelementptr inbounds %struct.cmac, %struct.cmac* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.cmac*, i32)*, i32 (%struct.cmac*, i32)** %48, align 8
  %50 = load %struct.cmac*, %struct.cmac** %3, align 8
  %51 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %52 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %53 = or i32 %51, %52
  %54 = call i32 %49(%struct.cmac* %50, i32 %53)
  ret void
}

declare dso_local i32 @t1_set_rxmode(%struct.TYPE_4__*) #1

declare dso_local i32 @t1_link_start(i32, %struct.cmac*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
