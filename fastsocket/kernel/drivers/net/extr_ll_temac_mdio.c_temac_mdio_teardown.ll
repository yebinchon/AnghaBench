; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_mdio.c_temac_mdio_teardown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_mdio.c_temac_mdio_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temac_local = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @temac_mdio_teardown(%struct.temac_local* %0) #0 {
  %2 = alloca %struct.temac_local*, align 8
  store %struct.temac_local* %0, %struct.temac_local** %2, align 8
  %3 = load %struct.temac_local*, %struct.temac_local** %2, align 8
  %4 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = call i32 @mdiobus_unregister(%struct.TYPE_3__* %5)
  %7 = load %struct.temac_local*, %struct.temac_local** %2, align 8
  %8 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @kfree(i32 %11)
  %13 = load %struct.temac_local*, %struct.temac_local** %2, align 8
  %14 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @mdiobus_free(%struct.TYPE_3__* %15)
  %17 = load %struct.temac_local*, %struct.temac_local** %2, align 8
  %18 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %17, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %18, align 8
  ret void
}

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
