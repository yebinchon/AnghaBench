; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_san_mac_addr_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_san_mac_addr_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SAN_MAC_ADDR_PORT1_OFFSET = common dso_local global i64 0, align 8
@IXGBE_SAN_MAC_ADDR_PORT0_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_san_mac_addr_generic(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = call i32 @ixgbe_get_san_mac_addr_offset(%struct.ixgbe_hw* %8, i32* %6)
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 65535
  br i1 %14, label %15, label %28

15:                                               ; preds = %12, %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %24, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 255, i32* %23, align 4
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %16

27:                                               ; preds = %16
  br label %89

28:                                               ; preds = %12
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.1*
  %36 = call i32 %33(%struct.ixgbe_hw.1* %35)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %28
  %43 = load i64, i64* @IXGBE_SAN_MAC_ADDR_PORT1_OFFSET, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %54

48:                                               ; preds = %28
  %49 = load i64, i64* @IXGBE_SAN_MAC_ADDR_PORT0_OFFSET, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi i32 [ %47, %42 ], [ %53, %48 ]
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %85, %54
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %88

59:                                               ; preds = %56
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %63, align 8
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = bitcast %struct.ixgbe_hw* %65 to %struct.ixgbe_hw.0*
  %67 = load i32, i32* %6, align 4
  %68 = call i32 %64(%struct.ixgbe_hw.0* %66, i32 %67, i32* %5)
  %69 = load i32, i32* %5, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* %5, align 4
  %76 = ashr i32 %75, 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 2
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %59
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %56

88:                                               ; preds = %56
  br label %89

89:                                               ; preds = %88, %27
  ret i32 0
}

declare dso_local i32 @ixgbe_get_san_mac_addr_offset(%struct.ixgbe_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
