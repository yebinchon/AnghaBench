; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_mac_list_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_mac_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxge_vpath = type { i64, i32, i32 }
%struct.macInfo = type { i32*, i32 }
%struct.vxge_mac_addrs = type { i32, i32, i32 }

@VXGE_MAX_LEARN_MAC_ADDR_CNT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: memory allocation failed\00", align 1
@VXGE_DRIVER_NAME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_mac_list_add(%struct.vxge_vpath* %0, %struct.macInfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vxge_vpath*, align 8
  %5 = alloca %struct.macInfo*, align 8
  %6 = alloca %struct.vxge_mac_addrs*, align 8
  %7 = alloca i32*, align 8
  store %struct.vxge_vpath* %0, %struct.vxge_vpath** %4, align 8
  store %struct.macInfo* %1, %struct.macInfo** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.vxge_vpath*, %struct.vxge_vpath** %4, align 8
  %9 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VXGE_MAX_LEARN_MAC_ADDR_CNT, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.vxge_mac_addrs* @kzalloc(i32 12, i32 %16)
  store %struct.vxge_mac_addrs* %17, %struct.vxge_mac_addrs** %6, align 8
  %18 = load %struct.vxge_mac_addrs*, %struct.vxge_mac_addrs** %6, align 8
  %19 = icmp ne %struct.vxge_mac_addrs* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @VXGE_ERR, align 4
  %22 = load i32, i32* @VXGE_DRIVER_NAME, align 4
  %23 = call i32 @vxge_debug_mem(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %15
  %26 = load %struct.vxge_mac_addrs*, %struct.vxge_mac_addrs** %6, align 8
  %27 = getelementptr inbounds %struct.vxge_mac_addrs, %struct.vxge_mac_addrs* %26, i32 0, i32 2
  %28 = load %struct.vxge_vpath*, %struct.vxge_vpath** %4, align 8
  %29 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %28, i32 0, i32 2
  %30 = call i32 @list_add(i32* %27, i32* %29)
  %31 = load %struct.vxge_mac_addrs*, %struct.vxge_mac_addrs** %6, align 8
  %32 = getelementptr inbounds %struct.vxge_mac_addrs, %struct.vxge_mac_addrs* %31, i32 0, i32 1
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.macInfo*, %struct.macInfo** %5, align 8
  %35 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32* %33, i32* %36, i32 %37)
  %39 = load %struct.macInfo*, %struct.macInfo** %5, align 8
  %40 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vxge_mac_addrs*, %struct.vxge_mac_addrs** %6, align 8
  %43 = getelementptr inbounds %struct.vxge_mac_addrs, %struct.vxge_mac_addrs* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.vxge_vpath*, %struct.vxge_vpath** %4, align 8
  %45 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.macInfo*, %struct.macInfo** %5, align 8
  %49 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 1, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %25
  %56 = load %struct.vxge_vpath*, %struct.vxge_vpath** %4, align 8
  %57 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %25
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %20, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.vxge_mac_addrs* @kzalloc(i32, i32) #1

declare dso_local i32 @vxge_debug_mem(i32, i8*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
