; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_update_tx_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_update_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethoc = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethoc_bd = type { i32 }

@TX_BD_LC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"TX: late collision\0A\00", align 1
@TX_BD_RL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"TX: retransmit limit\0A\00", align 1
@TX_BD_UR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"TX: underrun\0A\00", align 1
@TX_BD_CS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"TX: carrier sense lost\0A\00", align 1
@TX_BD_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethoc*, %struct.ethoc_bd*)* @ethoc_update_tx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_update_tx_stats(%struct.ethoc* %0, %struct.ethoc_bd* %1) #0 {
  %3 = alloca %struct.ethoc*, align 8
  %4 = alloca %struct.ethoc_bd*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.ethoc* %0, %struct.ethoc** %3, align 8
  store %struct.ethoc_bd* %1, %struct.ethoc_bd** %4, align 8
  %6 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %7 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %10 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TX_BD_LC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %20 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %15, %2
  %25 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %26 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TX_BD_RL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %36 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %31, %24
  %41 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %42 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TX_BD_UR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %52 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %47, %40
  %57 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %58 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TX_BD_CS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %68 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %63, %56
  %73 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %74 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TX_BD_STATS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %81 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %87 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 4
  %90 = and i32 %89, 15
  %91 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %92 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %90
  store i32 %95, i32* %93, align 8
  %96 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %97 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 16
  %100 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %101 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %99
  store i32 %104, i32* %102, align 4
  %105 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %106 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  ret i32 0
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
