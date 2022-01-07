; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_init_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { {}*, {}*, {}* }
%struct.TYPE_3__ = type { {}* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"init port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_init_port(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = load i32, i32* @drv, align 4
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @netif_dbg(%struct.efx_nic* %5, i32 %6, i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.efx_nic*)**
  %19 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %18, align 8
  %20 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %21 = call i32 %19(%struct.efx_nic* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %60

25:                                               ; preds = %1
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %29 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.efx_nic*)**
  %33 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %32, align 8
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = call i32 %33(%struct.efx_nic* %34)
  %36 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = bitcast {}** %39 to i32 (%struct.efx_nic*)**
  %41 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %40, align 8
  %42 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %43 = call i32 %41(%struct.efx_nic* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  br label %51

47:                                               ; preds = %25
  %48 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  store i32 0, i32* %2, align 4
  br label %65

51:                                               ; preds = %46
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = bitcast {}** %55 to i32 (%struct.efx_nic*)**
  %57 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %56, align 8
  %58 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %59 = call i32 %57(%struct.efx_nic* %58)
  br label %60

60:                                               ; preds = %51, %24
  %61 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %47
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
