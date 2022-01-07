; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_write_rss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_write_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sge_eth_rxq* }
%struct.sge_eth_rxq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_info*, i64*)* @write_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_rss(%struct.port_info* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sge_eth_rxq*, align 8
  store %struct.port_info* %0, %struct.port_info** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.port_info*, %struct.port_info** %4, align 8
  %11 = getelementptr inbounds %struct.port_info, %struct.port_info* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %14, align 8
  %16 = load %struct.port_info*, %struct.port_info** %4, align 8
  %17 = getelementptr inbounds %struct.port_info, %struct.port_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %15, i64 %18
  store %struct.sge_eth_rxq* %19, %struct.sge_eth_rxq** %9, align 8
  %20 = load %struct.port_info*, %struct.port_info** %4, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i64* @kmalloc(i32 %25, i32 %26)
  store i64* %27, i64** %6, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %80

33:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.port_info*, %struct.port_info** %4, align 8
  %37 = getelementptr inbounds %struct.port_info, %struct.port_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %9, align 8
  %42 = load i64*, i64** %5, align 8
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %41, i64 %43
  %45 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 %47, i64* %51, align 8
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %5, align 8
  br label %34

57:                                               ; preds = %34
  %58 = load %struct.port_info*, %struct.port_info** %4, align 8
  %59 = getelementptr inbounds %struct.port_info, %struct.port_info* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.port_info*, %struct.port_info** %4, align 8
  %62 = getelementptr inbounds %struct.port_info, %struct.port_info* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.port_info*, %struct.port_info** %4, align 8
  %67 = getelementptr inbounds %struct.port_info, %struct.port_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.port_info*, %struct.port_info** %4, align 8
  %70 = getelementptr inbounds %struct.port_info, %struct.port_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i64*, i64** %6, align 8
  %73 = load %struct.port_info*, %struct.port_info** %4, align 8
  %74 = getelementptr inbounds %struct.port_info, %struct.port_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @t4_config_rss_range(%struct.TYPE_6__* %60, i32 %65, i32 %68, i32 0, i32 %71, i64* %72, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i64*, i64** %6, align 8
  %78 = call i32 @kfree(i64* %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %57, %30
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @t4_config_rss_range(%struct.TYPE_6__*, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
