; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_assign_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_assign_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, %struct.igb_adapter* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.igb_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@IGB_N0_QUEUE = common dso_local global i32 0, align 4
@E1000_EICR_RX_QUEUE0 = common dso_local global i32 0, align 4
@E1000_EICR_TX_QUEUE0 = common dso_local global i32 0, align 4
@E1000_EIMS_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_q_vector*, i32)* @igb_assign_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_assign_vector(%struct.igb_q_vector* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_q_vector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %11 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %10, i32 0, i32 4
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %11, align 8
  store %struct.igb_adapter* %12, %struct.igb_adapter** %5, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 2
  store %struct.e1000_hw* %14, %struct.e1000_hw** %6, align 8
  %15 = load i32, i32* @IGB_N0_QUEUE, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @IGB_N0_QUEUE, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %18 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %24 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %22, %2
  %30 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %31 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %37 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %149 [
    i32 134, label %47
    i32 133, label %85
    i32 132, label %117
    i32 129, label %117
    i32 128, label %117
    i32 131, label %117
    i32 130, label %117
  ]

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @IGB_N0_QUEUE, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @E1000_EICR_RX_QUEUE0, align 4
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %52, %53
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @IGB_N0_QUEUE, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* @E1000_EICR_TX_QUEUE0, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %59, %55
  %66 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %67 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @E1000_EIMS_OTHER, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %70, %65
  %78 = call i32 @E1000_MSIXBM(i32 0)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @array_wr32(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %84 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %151

85:                                               ; preds = %42
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @IGB_N0_QUEUE, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, 7
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 8
  %96 = shl i32 %95, 1
  %97 = call i32 @igb_write_ivar(%struct.e1000_hw* %90, i32 %91, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %89, %85
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @IGB_N0_QUEUE, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, 7
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 8
  %109 = shl i32 %108, 1
  %110 = add nsw i32 %109, 8
  %111 = call i32 @igb_write_ivar(%struct.e1000_hw* %103, i32 %104, i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %102, %98
  %113 = load i32, i32* %4, align 4
  %114 = shl i32 1, %113
  %115 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %116 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %151

117:                                              ; preds = %42, %42, %42, %42, %42
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @IGB_N0_QUEUE, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %7, align 4
  %125 = ashr i32 %124, 1
  %126 = load i32, i32* %7, align 4
  %127 = and i32 %126, 1
  %128 = shl i32 %127, 4
  %129 = call i32 @igb_write_ivar(%struct.e1000_hw* %122, i32 %123, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %121, %117
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @IGB_N0_QUEUE, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %8, align 4
  %138 = ashr i32 %137, 1
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, 1
  %141 = shl i32 %140, 4
  %142 = add nsw i32 %141, 8
  %143 = call i32 @igb_write_ivar(%struct.e1000_hw* %135, i32 %136, i32 %138, i32 %142)
  br label %144

144:                                              ; preds = %134, %130
  %145 = load i32, i32* %4, align 4
  %146 = shl i32 1, %145
  %147 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %148 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  br label %151

149:                                              ; preds = %42
  %150 = call i32 (...) @BUG()
  br label %151

151:                                              ; preds = %149, %144, %112, %77
  %152 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %153 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %156 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.igb_q_vector*, %struct.igb_q_vector** %3, align 8
  %160 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %159, i32 0, i32 1
  store i32 1, i32* %160, align 4
  ret void
}

declare dso_local i32 @array_wr32(i32, i32, i32) #1

declare dso_local i32 @E1000_MSIXBM(i32) #1

declare dso_local i32 @igb_write_ivar(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
