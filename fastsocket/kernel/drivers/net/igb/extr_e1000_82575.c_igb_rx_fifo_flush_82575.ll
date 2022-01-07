; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_rx_fifo_flush_82575.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_rx_fifo_flush_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_82575 = common dso_local global i64 0, align 8
@E1000_MANC = common dso_local global i32 0, align 4
@E1000_MANC_RCV_TCO_EN = common dso_local global i32 0, align 4
@E1000_RXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Queue disable timed out after 10ms\0A\00", align 1
@E1000_RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_LEF = common dso_local global i32 0, align 4
@E1000_RLPML = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@E1000_RCTL_LPE = common dso_local global i32 0, align 4
@E1000_ROC = common dso_local global i32 0, align 4
@E1000_RNBC = common dso_local global i32 0, align 4
@E1000_MPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_rx_fifo_flush_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_82575, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @E1000_MANC, align 4
  %19 = call i32 @rd32(i32 %18)
  %20 = load i32, i32* @E1000_MANC_RCV_TCO_EN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %1
  br label %146

24:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @E1000_RXDCTL(i32 %29)
  %31 = call i32 @rd32(i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @E1000_RXDCTL(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @E1000_RXDCTL_QUEUE_ENABLE, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @wr32(i32 %36, i32 %43)
  br label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %25

48:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 10
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = call i32 @msleep(i32 1)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %63, %52
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @E1000_RXDCTL(i32 %58)
  %60 = call i32 @rd32(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %54

66:                                               ; preds = %54
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @E1000_RXDCTL_QUEUE_ENABLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %76

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %49

76:                                               ; preds = %71, %49
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 10
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @hw_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32, i32* @E1000_RFCTL, align 4
  %83 = call i32 @rd32(i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @E1000_RFCTL, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @E1000_RFCTL_LEF, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = call i32 @wr32(i32 %84, i32 %88)
  %90 = load i32, i32* @E1000_RLPML, align 4
  %91 = call i32 @rd32(i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @E1000_RLPML, align 4
  %93 = call i32 @wr32(i32 %92, i32 0)
  %94 = load i32, i32* @E1000_RCTL, align 4
  %95 = call i32 @rd32(i32 %94)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @E1000_RCTL_EN, align 4
  %98 = load i32, i32* @E1000_RCTL_SBP, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = and i32 %96, %100
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @E1000_RCTL_LPE, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @E1000_RCTL, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @wr32(i32 %105, i32 %106)
  %108 = load i32, i32* @E1000_RCTL, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @E1000_RCTL_EN, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @wr32(i32 %108, i32 %111)
  %113 = call i32 (...) @wrfl()
  %114 = call i32 @msleep(i32 2)
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %126, %81
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 4
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @E1000_RXDCTL(i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @wr32(i32 %120, i32 %124)
  br label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %115

129:                                              ; preds = %115
  %130 = load i32, i32* @E1000_RCTL, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @wr32(i32 %130, i32 %131)
  %133 = call i32 (...) @wrfl()
  %134 = load i32, i32* @E1000_RLPML, align 4
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @wr32(i32 %134, i32 %135)
  %137 = load i32, i32* @E1000_RFCTL, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @wr32(i32 %137, i32 %138)
  %140 = load i32, i32* @E1000_ROC, align 4
  %141 = call i32 @rd32(i32 %140)
  %142 = load i32, i32* @E1000_RNBC, align 4
  %143 = call i32 @rd32(i32 %142)
  %144 = load i32, i32* @E1000_MPC, align 4
  %145 = call i32 @rd32(i32 %144)
  br label %146

146:                                              ; preds = %129, %23
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @E1000_RXDCTL(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wrfl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
