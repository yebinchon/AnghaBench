; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, %struct.isac*, i32, i32* }

@l1fsm = common dso_local global i32 0, align 4
@ST_L1_RESET = common dso_local global i32 0, align 4
@l1m_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isac_init(%struct.isac* %0) #0 {
  %2 = alloca %struct.isac*, align 8
  store %struct.isac* %0, %struct.isac** %2, align 8
  %3 = load %struct.isac*, %struct.isac** %2, align 8
  %4 = getelementptr inbounds %struct.isac, %struct.isac* %3, i32 0, i32 2
  store i32* null, i32** %4, align 8
  %5 = load %struct.isac*, %struct.isac** %2, align 8
  %6 = getelementptr inbounds %struct.isac, %struct.isac* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  store i32* @l1fsm, i32** %7, align 8
  %8 = load i32, i32* @ST_L1_RESET, align 4
  %9 = load %struct.isac*, %struct.isac** %2, align 8
  %10 = getelementptr inbounds %struct.isac, %struct.isac* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i32 %8, i32* %11, align 8
  %12 = load %struct.isac*, %struct.isac** %2, align 8
  %13 = getelementptr inbounds %struct.isac, %struct.isac* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.isac*, %struct.isac** %2, align 8
  %16 = load %struct.isac*, %struct.isac** %2, align 8
  %17 = getelementptr inbounds %struct.isac, %struct.isac* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store %struct.isac* %15, %struct.isac** %18, align 8
  %19 = load i32, i32* @l1m_debug, align 4
  %20 = load %struct.isac*, %struct.isac** %2, align 8
  %21 = getelementptr inbounds %struct.isac, %struct.isac* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.isac*, %struct.isac** %2, align 8
  %24 = getelementptr inbounds %struct.isac, %struct.isac* %23, i32 0, i32 1
  %25 = load %struct.isac*, %struct.isac** %2, align 8
  %26 = getelementptr inbounds %struct.isac, %struct.isac* %25, i32 0, i32 0
  %27 = call i32 @FsmInitTimer(%struct.TYPE_2__* %24, i32* %26)
  ret void
}

declare dso_local i32 @FsmInitTimer(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
