; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_add_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_add_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { %struct.vxge_vpath* }
%struct.vxge_vpath = type { i32, i32 }
%struct.macInfo = type { i32*, i64, i32 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_VPATH_MAC_ADDR_ADD_DUPLICATE = common dso_local global i32 0, align 4
@VXGE_HW_VPATH_MAC_ADDR_REPLACE_DUPLICATE = common dso_local global i32 0, align 4
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"DA config add entry failed for vpath:%d\00", align 1
@FALSE = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_add_mac_addr(%struct.vxgedev* %0, %struct.macInfo* %1) #0 {
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca %struct.macInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vxge_vpath*, align 8
  %7 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store %struct.macInfo* %1, %struct.macInfo** %4, align 8
  %8 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %10 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 1, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @VXGE_HW_VPATH_MAC_ADDR_ADD_DUPLICATE, align 4
  store i32 %17, i32* %7, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @VXGE_HW_VPATH_MAC_ADDR_REPLACE_DUPLICATE, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %22 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %21, i32 0, i32 0
  %23 = load %struct.vxge_vpath*, %struct.vxge_vpath** %22, align 8
  %24 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %25 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %23, i64 %26
  store %struct.vxge_vpath* %27, %struct.vxge_vpath** %6, align 8
  %28 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %29 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %32 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %35 = getelementptr inbounds %struct.macInfo, %struct.macInfo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @vxge_hw_vpath_mac_addr_add(i32 %30, i32* %33, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @VXGE_HW_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %20
  %43 = load i32, i32* @VXGE_ERR, align 4
  %44 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %45 = getelementptr inbounds %struct.vxge_vpath, %struct.vxge_vpath* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vxge_debug_init(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %58

48:                                               ; preds = %20
  %49 = load i64, i64* @FALSE, align 8
  %50 = load %struct.vxge_vpath*, %struct.vxge_vpath** %6, align 8
  %51 = load %struct.macInfo*, %struct.macInfo** %4, align 8
  %52 = call i64 @vxge_mac_list_add(%struct.vxge_vpath* %50, %struct.macInfo* %51)
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EPERM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @vxge_hw_vpath_mac_addr_add(i32, i32*, i32, i32) #1

declare dso_local i32 @vxge_debug_init(i32, i8*, i32) #1

declare dso_local i64 @vxge_mac_list_add(%struct.vxge_vpath*, %struct.macInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
