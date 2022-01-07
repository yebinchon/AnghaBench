; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_set_default_fc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_mac.c_igb_set_default_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@e1000_i350 = common dso_local global i64 0, align 8
@NVM_INIT_CONTROL2_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@NVM_WORD0F_PAUSE_MASK = common dso_local global i32 0, align 4
@e1000_fc_none = common dso_local global i32 0, align 4
@NVM_WORD0F_ASM_DIR = common dso_local global i32 0, align 4
@e1000_fc_tx_pause = common dso_local global i32 0, align 4
@e1000_fc_full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_set_default_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_set_default_fc(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_i350, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @NVM_82580_LAN_FUNC_OFFSET(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %21, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = bitcast %struct.e1000_hw* %23 to %struct.e1000_hw.0*
  %25 = load i32, i32* @NVM_INIT_CONTROL2_REG, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i64 %22(%struct.e1000_hw.0* %24, i32 %27, i32 1, i32* %5)
  store i64 %28, i64* %3, align 8
  br label %39

29:                                               ; preds = %1
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %33, align 8
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = bitcast %struct.e1000_hw* %35 to %struct.e1000_hw.0*
  %37 = load i32, i32* @NVM_INIT_CONTROL2_REG, align 4
  %38 = call i64 %34(%struct.e1000_hw.0* %36, i32 %37, i32 1, i32* %5)
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %29, %12
  %40 = load i64, i64* %3, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @hw_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %72

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NVM_WORD0F_PAUSE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @e1000_fc_none, align 4
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  br label %71

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @NVM_WORD0F_PAUSE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @NVM_WORD0F_ASM_DIR, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* @e1000_fc_tx_pause, align 4
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  br label %70

65:                                               ; preds = %54
  %66 = load i32, i32* @e1000_fc_full, align 4
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %49
  br label %72

72:                                               ; preds = %71, %42
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

declare dso_local i32 @NVM_82580_LAN_FUNC_OFFSET(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
