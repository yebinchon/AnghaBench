; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_get_constraint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_nhmex_mbox_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32, i32 }

@EXTRA_REG_NHMEX_M_ZDP_CTL_FVC = common dso_local global i32 0, align 4
@constraint_empty = common dso_local global %struct.event_constraint zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_mbox_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @nhmex_mbox_get_constraint(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.event_constraint*, align 8
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.hw_perf_event_extra* %14, %struct.hw_perf_event_extra** %6, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.hw_perf_event_extra* %17, %struct.hw_perf_event_extra** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %22 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__BITS_VALUE(i32 %23, i32 0, i32 8)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__BITS_VALUE(i32 %28, i32 1, i32 8)
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %169, %2
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %75, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %78

35:                                               ; preds = %32
  %36 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %37 = call i64 @uncore_box_is_fake(%struct.intel_uncore_box* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %49
  store i32 255, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %39, %35
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %75

58:                                               ; preds = %51
  %59 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @__BITS_VALUE(i32 %64, i32 %65, i32 32)
  %67 = call i32 @nhmex_mbox_get_shared_reg(%struct.intel_uncore_box* %59, i32 %63, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %128

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 1, %71
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %70, %57
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %32

78:                                               ; preds = %32
  %79 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %80 = call i64 @uncore_box_is_fake(%struct.intel_uncore_box* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %84 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %82, %78
  %88 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %89 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %90 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %93 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @nhmex_mbox_get_shared_reg(%struct.intel_uncore_box* %88, i32 %91, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  br label %128

98:                                               ; preds = %87, %82
  %99 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %100 = call i64 @uncore_box_is_fake(%struct.intel_uncore_box* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %127, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 255
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %110 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @__BITS_VALUE(i32 %111, i32 0, i32 8)
  %113 = icmp ne i32 %108, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @nhmex_mbox_alter_er(%struct.perf_event* %115, i32 %117, i32 1)
  br label %119

119:                                              ; preds = %114, %106, %102
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %122 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %126 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %125, i32 0, i32 2
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %119, %98
  store %struct.event_constraint* null, %struct.event_constraint** %3, align 8
  br label %194

128:                                              ; preds = %97, %69
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 255
  br i1 %131, label %132, label %175

132:                                              ; preds = %128
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %175, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %175

141:                                              ; preds = %136
  %142 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %143 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @__BITS_VALUE(i32 %144, i32 1, i32 8)
  %146 = icmp ne i32 %145, 255
  %147 = zext i1 %146 to i32
  %148 = call i32 @BUG_ON(i32 %147)
  %149 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, %149
  store i32 %152, i32* %150, align 4
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  %156 = srem i32 %155, 4
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %158
  store i32 %161, i32* %159, align 4
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %165 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @__BITS_VALUE(i32 %166, i32 0, i32 8)
  %168 = icmp ne i32 %163, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %141
  %170 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @nhmex_mbox_alter_er(%struct.perf_event* %170, i32 %172, i32 0)
  store i32 %173, i32* %11, align 4
  br label %31

174:                                              ; preds = %141
  br label %175

175:                                              ; preds = %174, %136, %132, %128
  %176 = load i32, i32* %10, align 4
  %177 = and i32 %176, 1
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @nhmex_mbox_put_shared_reg(%struct.intel_uncore_box* %180, i32 %182)
  br label %184

184:                                              ; preds = %179, %175
  %185 = load i32, i32* %10, align 4
  %186 = and i32 %185, 2
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @nhmex_mbox_put_shared_reg(%struct.intel_uncore_box* %189, i32 %191)
  br label %193

193:                                              ; preds = %188, %184
  store %struct.event_constraint* @constraint_empty, %struct.event_constraint** %3, align 8
  br label %194

194:                                              ; preds = %193, %127
  %195 = load %struct.event_constraint*, %struct.event_constraint** %3, align 8
  ret %struct.event_constraint* %195
}

declare dso_local i32 @__BITS_VALUE(i32, i32, i32) #1

declare dso_local i64 @uncore_box_is_fake(%struct.intel_uncore_box*) #1

declare dso_local i32 @nhmex_mbox_get_shared_reg(%struct.intel_uncore_box*, i32, i32) #1

declare dso_local i32 @nhmex_mbox_alter_er(%struct.perf_event*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nhmex_mbox_put_shared_reg(%struct.intel_uncore_box*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
