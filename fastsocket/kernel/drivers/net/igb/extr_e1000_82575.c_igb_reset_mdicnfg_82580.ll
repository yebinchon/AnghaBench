; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_reset_mdicnfg_82580.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_reset_mdicnfg_82580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.e1000_hw.0*, i64, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_6__ = type { i64 }

@e1000_82580 = common dso_local global i64 0, align 8
@NVM_INIT_CONTROL3_PORT_A = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@E1000_MDICNFG = common dso_local global i32 0, align 4
@NVM_WORD24_EXT_MDIO = common dso_local global i32 0, align 4
@E1000_MDICNFG_EXT_MDIO = common dso_local global i32 0, align 4
@NVM_WORD24_COM_MDIO = common dso_local global i32 0, align 4
@E1000_MDICNFG_COM_MDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_reset_mdicnfg_82580 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_reset_mdicnfg_82580(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_82580, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = call i32 @igb_sgmii_active_82575(%struct.e1000_hw* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %62

18:                                               ; preds = %13
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64 (%struct.e1000_hw.0*, i64, i32, i32*)*, i64 (%struct.e1000_hw.0*, i64, i32, i32*)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.0*
  %26 = load i64, i64* @NVM_INIT_CONTROL3_PORT_A, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @NVM_82580_LAN_FUNC_OFFSET(i32 %30)
  %32 = add nsw i64 %26, %31
  %33 = call i64 %23(%struct.e1000_hw.0* %25, i64 %32, i32 1, i32* %5)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %18
  %37 = call i32 @hw_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %62

38:                                               ; preds = %18
  %39 = load i32, i32* @E1000_MDICNFG, align 4
  %40 = call i32 @rd32(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NVM_WORD24_EXT_MDIO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @E1000_MDICNFG_EXT_MDIO, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @NVM_WORD24_COM_MDIO, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @E1000_MDICNFG_COM_MDIO, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* @E1000_MDICNFG, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @wr32(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %36, %17, %12
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @igb_sgmii_active_82575(%struct.e1000_hw*) #1

declare dso_local i64 @NVM_82580_LAN_FUNC_OFFSET(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
