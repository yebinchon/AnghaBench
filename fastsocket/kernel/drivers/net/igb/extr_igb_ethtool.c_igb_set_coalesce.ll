; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }
%struct.igb_adapter = type { i32, i32, i32, i32, i32, %struct.igb_q_vector** }
%struct.igb_q_vector = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@IGB_MAX_ITR_USECS = common dso_local global i32 0, align 4
@IGB_MIN_ITR_USECS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IGB_FLAG_QUEUE_PAIRS = common dso_local global i32 0, align 4
@IGB_FLAG_DMAC = common dso_local global i32 0, align 4
@IGB_START_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @igb_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.igb_q_vector*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.igb_adapter* %10, %struct.igb_adapter** %6, align 8
  %11 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IGB_MAX_ITR_USECS, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %2
  %17 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IGB_MIN_ITR_USECS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %21, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %214

35:                                               ; preds = %27
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IGB_MAX_ITR_USECS, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %57, label %41

41:                                               ; preds = %35
  %42 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %44, 3
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IGB_MIN_ITR_USECS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %46, %35
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %214

60:                                               ; preds = %52
  %61 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IGB_FLAG_QUEUE_PAIRS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %214

75:                                               ; preds = %67, %60
  %76 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %82 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IGB_FLAG_DMAC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load i32, i32* @IGB_FLAG_DMAC, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %87, %80
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %103, 3
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %107 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %110 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %118

111:                                              ; preds = %100, %95
  %112 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 2
  %116 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %117 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %105
  %119 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %120 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @IGB_FLAG_QUEUE_PAIRS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %127 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %130 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %155

131:                                              ; preds = %118
  %132 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %133 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %138 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp sle i32 %139, 3
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %143 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %146 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  br label %154

147:                                              ; preds = %136, %131
  %148 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %149 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 2
  %152 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %153 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %147, %141
  br label %155

155:                                              ; preds = %154, %125
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %210, %155
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %159 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %213

162:                                              ; preds = %156
  %163 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %164 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %163, i32 0, i32 5
  %165 = load %struct.igb_q_vector**, %struct.igb_q_vector*** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.igb_q_vector*, %struct.igb_q_vector** %165, i64 %167
  %169 = load %struct.igb_q_vector*, %struct.igb_q_vector** %168, align 8
  store %struct.igb_q_vector* %169, %struct.igb_q_vector** %8, align 8
  %170 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %171 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %174 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 8
  %176 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %177 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %162
  %182 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %183 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %186 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  br label %193

187:                                              ; preds = %162
  %188 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %189 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %192 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %187, %181
  %194 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %195 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %200 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp sle i32 %201, 3
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i32, i32* @IGB_START_ITR, align 4
  %205 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %206 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %203, %198, %193
  %208 = load %struct.igb_q_vector*, %struct.igb_q_vector** %8, align 8
  %209 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %208, i32 0, i32 1
  store i32 1, i32* %209, align 4
  br label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  br label %156

213:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %213, %72, %57, %32
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
