; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i32, i8*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.swStat }
%struct.swStat = type { i64, i8*, i64, i8* }
%struct.net_device = type { i32 }

@LINK_DOWN = common dso_local global i32 0, align 4
@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: Link down\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%s: Link Up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*, i32)* @s2io_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_link(%struct.s2io_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.swStat*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %8 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %12 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.swStat* %15, %struct.swStat** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %18 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %89

21:                                               ; preds = %2
  %22 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @init_tti(%struct.s2io_nic* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @LINK_DOWN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %21
  %29 = load i32, i32* @ERR_DBG, align 4
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DBG_PRINT(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %35 = call i32 @s2io_stop_all_tx_queue(%struct.s2io_nic* %34)
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @netif_carrier_off(%struct.net_device* %36)
  %38 = load %struct.swStat*, %struct.swStat** %6, align 8
  %39 = getelementptr inbounds %struct.swStat, %struct.swStat* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %28
  %43 = load i8*, i8** @jiffies, align 8
  %44 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %45 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %43 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.swStat*, %struct.swStat** %6, align 8
  %52 = getelementptr inbounds %struct.swStat, %struct.swStat* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %42, %28
  %54 = load %struct.swStat*, %struct.swStat** %6, align 8
  %55 = getelementptr inbounds %struct.swStat, %struct.swStat* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %88

58:                                               ; preds = %21
  %59 = load i32, i32* @ERR_DBG, align 4
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DBG_PRINT(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.swStat*, %struct.swStat** %6, align 8
  %65 = getelementptr inbounds %struct.swStat, %struct.swStat* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %58
  %69 = load i8*, i8** @jiffies, align 8
  %70 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %71 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %69 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.swStat*, %struct.swStat** %6, align 8
  %78 = getelementptr inbounds %struct.swStat, %struct.swStat* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %68, %58
  %80 = load %struct.swStat*, %struct.swStat** %6, align 8
  %81 = getelementptr inbounds %struct.swStat, %struct.swStat* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = call i32 @netif_carrier_on(%struct.net_device* %84)
  %86 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %87 = call i32 @s2io_wake_all_tx_queue(%struct.s2io_nic* %86)
  br label %88

88:                                               ; preds = %79, %53
  br label %89

89:                                               ; preds = %88, %2
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %92 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i8*, i8** @jiffies, align 8
  %94 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %95 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  ret void
}

declare dso_local i32 @init_tti(%struct.s2io_nic*, i32) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i32) #1

declare dso_local i32 @s2io_stop_all_tx_queue(%struct.s2io_nic*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @s2io_wake_all_tx_queue(%struct.s2io_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
