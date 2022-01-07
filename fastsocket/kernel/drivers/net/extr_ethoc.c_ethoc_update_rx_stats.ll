; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_update_rx_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_update_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethoc = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethoc_bd = type { i32 }

@RX_BD_TL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"RX: frame too long\0A\00", align 1
@RX_BD_SF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"RX: frame too short\0A\00", align 1
@RX_BD_DN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"RX: dribble nibble\0A\00", align 1
@RX_BD_CRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"RX: wrong CRC\0A\00", align 1
@RX_BD_OR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"RX: overrun\0A\00", align 1
@RX_BD_MISS = common dso_local global i32 0, align 4
@RX_BD_LC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"RX: late collision\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethoc*, %struct.ethoc_bd*)* @ethoc_update_rx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_update_rx_stats(%struct.ethoc* %0, %struct.ethoc_bd* %1) #0 {
  %3 = alloca %struct.ethoc*, align 8
  %4 = alloca %struct.ethoc_bd*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ethoc* %0, %struct.ethoc** %3, align 8
  store %struct.ethoc_bd* %1, %struct.ethoc_bd** %4, align 8
  %7 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %8 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %11 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RX_BD_TL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %21 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %16, %2
  %28 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %29 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RX_BD_SF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %39 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %34, %27
  %46 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %47 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RX_BD_DN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %57 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %52, %45
  %62 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %63 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RX_BD_CRC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %73 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %68, %61
  %80 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %81 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @RX_BD_OR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load %struct.net_device*, %struct.net_device** %5, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %91 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* %6, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %86, %79
  %98 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %99 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RX_BD_MISS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %106 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %104, %97
  %111 = load %struct.ethoc_bd*, %struct.ethoc_bd** %4, align 8
  %112 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RX_BD_LC, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = load %struct.net_device*, %struct.net_device** %5, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %121 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %122 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* %6, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %117, %110
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
