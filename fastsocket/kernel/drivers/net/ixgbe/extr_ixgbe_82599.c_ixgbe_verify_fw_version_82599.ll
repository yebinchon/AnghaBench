; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_verify_fw_version_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_verify_fw_version_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i64, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@IXGBE_ERR_EEPROM_VERSION = common dso_local global i64 0, align 8
@ixgbe_media_type_fiber = common dso_local global i64 0, align 8
@IXGBE_FW_PTR = common dso_local global i64 0, align 8
@IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR = common dso_local global i64 0, align 8
@IXGBE_FW_PATCH_VERSION_4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_verify_fw_version_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_verify_fw_version_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load i64, i64* @IXGBE_ERR_EEPROM_VERSION, align 8
  store i64 %7, i64* %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ixgbe_media_type_fiber, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %19, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %22 = bitcast %struct.ixgbe_hw* %21 to %struct.ixgbe_hw.0*
  %23 = load i64, i64* @IXGBE_FW_PTR, align 8
  %24 = call i32 %20(%struct.ixgbe_hw.0* %22, i64 %23, i32* %4)
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 65535
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %15
  br label %67

31:                                               ; preds = %27
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %35, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = bitcast %struct.ixgbe_hw* %37 to %struct.ixgbe_hw.0*
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 %36(%struct.ixgbe_hw.0* %38, i64 %42, i32* %5)
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 65535
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %31
  br label %67

50:                                               ; preds = %46
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32 (%struct.ixgbe_hw.0*, i64, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32*)** %54, align 8
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %57 = bitcast %struct.ixgbe_hw* %56 to %struct.ixgbe_hw.0*
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @IXGBE_FW_PATCH_VERSION_4, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 %55(%struct.ixgbe_hw.0* %57, i64 %61, i32* %6)
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 5
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store i64 0, i64* %3, align 8
  br label %66

66:                                               ; preds = %65, %50
  br label %67

67:                                               ; preds = %66, %49, %30, %14
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
