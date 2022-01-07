; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c___tg3_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c___tg3_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@MAC_ADDR_0_HIGH = common dso_local global i64 0, align 8
@MAC_ADDR_0_LOW = common dso_local global i64 0, align 8
@ASIC_REV_5703 = common dso_local global i64 0, align 8
@ASIC_REV_5704 = common dso_local global i64 0, align 8
@MAC_EXTADDR_0_HIGH = common dso_local global i64 0, align 8
@MAC_EXTADDR_0_LOW = common dso_local global i64 0, align 8
@TX_BACKOFF_SEED_MASK = common dso_local global i32 0, align 4
@MAC_TX_BACKOFF_SEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @__tg3_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tg3_set_mac_addr(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tg3*, %struct.tg3** %3, align 8
  %9 = getelementptr inbounds %struct.tg3, %struct.tg3* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 8
  %16 = load %struct.tg3*, %struct.tg3** %3, align 8
  %17 = getelementptr inbounds %struct.tg3, %struct.tg3* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %15, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.tg3*, %struct.tg3** %3, align 8
  %25 = getelementptr inbounds %struct.tg3, %struct.tg3* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 24
  %32 = load %struct.tg3*, %struct.tg3** %3, align 8
  %33 = getelementptr inbounds %struct.tg3, %struct.tg3* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = or i32 %31, %39
  %41 = load %struct.tg3*, %struct.tg3** %3, align 8
  %42 = getelementptr inbounds %struct.tg3, %struct.tg3* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %40, %48
  %50 = load %struct.tg3*, %struct.tg3** %3, align 8
  %51 = getelementptr inbounds %struct.tg3, %struct.tg3* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 0
  %58 = or i32 %49, %57
  store i32 %58, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %84, %2
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %84

69:                                               ; preds = %65, %62
  %70 = load i64, i64* @MAC_ADDR_0_HIGH, align 8
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, 8
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @tw32(i64 %74, i32 %75)
  %77 = load i64, i64* @MAC_ADDR_0_LOW, align 8
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 8
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %77, %80
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @tw32(i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %69, %68
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %59

87:                                               ; preds = %59
  %88 = load %struct.tg3*, %struct.tg3** %3, align 8
  %89 = call i64 @tg3_asic_rev(%struct.tg3* %88)
  %90 = load i64, i64* @ASIC_REV_5703, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.tg3*, %struct.tg3** %3, align 8
  %94 = call i64 @tg3_asic_rev(%struct.tg3* %93)
  %95 = load i64, i64* @ASIC_REV_5704, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %92, %87
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %116, %97
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 12
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load i64, i64* @MAC_EXTADDR_0_HIGH, align 8
  %103 = load i32, i32* %7, align 4
  %104 = mul nsw i32 %103, 8
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %102, %105
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @tw32(i64 %106, i32 %107)
  %109 = load i64, i64* @MAC_EXTADDR_0_LOW, align 8
  %110 = load i32, i32* %7, align 4
  %111 = mul nsw i32 %110, 8
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %109, %112
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @tw32(i64 %113, i32 %114)
  br label %116

116:                                              ; preds = %101
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %98

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119, %92
  %121 = load %struct.tg3*, %struct.tg3** %3, align 8
  %122 = getelementptr inbounds %struct.tg3, %struct.tg3* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.tg3*, %struct.tg3** %3, align 8
  %129 = getelementptr inbounds %struct.tg3, %struct.tg3* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %127, %134
  %136 = load %struct.tg3*, %struct.tg3** %3, align 8
  %137 = getelementptr inbounds %struct.tg3, %struct.tg3* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %135, %142
  %144 = load %struct.tg3*, %struct.tg3** %3, align 8
  %145 = getelementptr inbounds %struct.tg3, %struct.tg3* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %143, %150
  %152 = load %struct.tg3*, %struct.tg3** %3, align 8
  %153 = getelementptr inbounds %struct.tg3, %struct.tg3* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %151, %158
  %160 = load %struct.tg3*, %struct.tg3** %3, align 8
  %161 = getelementptr inbounds %struct.tg3, %struct.tg3* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 5
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %159, %166
  %168 = load i32, i32* @TX_BACKOFF_SEED_MASK, align 4
  %169 = and i32 %167, %168
  store i32 %169, i32* %5, align 4
  %170 = load i64, i64* @MAC_TX_BACKOFF_SEED, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @tw32(i64 %170, i32 %171)
  ret void
}

declare dso_local i32 @tw32(i64, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
