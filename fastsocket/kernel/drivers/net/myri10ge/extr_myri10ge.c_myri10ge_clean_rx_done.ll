; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_clean_rx_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_clean_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_slice_state = type { %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.myri10ge_priv*, %struct.myri10ge_rx_done }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.myri10ge_priv = type { i64, i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.myri10ge_rx_done = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@NETIF_F_LRO = common dso_local global i32 0, align 4
@myri10ge_fill_thresh = common dso_local global i64 0, align 8
@MXGEFW_PAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_slice_state*, i32)* @myri10ge_clean_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_clean_rx_done(%struct.myri10ge_slice_state* %0, i32 %1) #0 {
  %3 = alloca %struct.myri10ge_slice_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.myri10ge_rx_done*, align 8
  %6 = alloca %struct.myri10ge_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.myri10ge_slice_state* %0, %struct.myri10ge_slice_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %17 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %16, i32 0, i32 4
  store %struct.myri10ge_rx_done* %17, %struct.myri10ge_rx_done** %5, align 8
  %18 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %19 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %18, i32 0, i32 3
  %20 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %19, align 8
  store %struct.myri10ge_priv* %20, %struct.myri10ge_priv** %6, align 8
  %21 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %22 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %21, i32 0, i32 3
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %24 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %25 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %28 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %97, %2
  %31 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %32 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %40, %30
  %45 = phi i1 [ false, %30 ], [ %43, %40 ]
  br i1 %45, label %46, label %116

46:                                               ; preds = %44
  %47 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %48 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @ntohs(i64 %54)
  store i64 %55, i64* %14, align 8
  %56 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %57 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %64 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %63, i32 0, i32 3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @csum_unfold(i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i64, i64* %14, align 8
  %73 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %74 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %46
  %78 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %79 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %80 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %79, i32 0, i32 1
  %81 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %82 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i32, i32* %15, align 4
  %86 = call i64 @myri10ge_rx_done(%struct.myri10ge_slice_state* %78, %struct.TYPE_7__* %80, i64 %83, i64 %84, i32 %85)
  store i64 %86, i64* %10, align 8
  br label %97

87:                                               ; preds = %46
  %88 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %89 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %90 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %89, i32 0, i32 0
  %91 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %92 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i64 @myri10ge_rx_done(%struct.myri10ge_slice_state* %88, %struct.TYPE_7__* %90, i64 %93, i64 %94, i32 %95)
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %87, %77
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %14, align 8
  %103 = mul i64 %101, %102
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %8, align 8
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %110 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 1
  %113 = and i32 %108, %112
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %30

116:                                              ; preds = %44
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %119 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %122 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %125 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, %123
  store i64 %128, i64* %126, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %131 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, %129
  store i64 %134, i64* %132, align 8
  %135 = load %struct.net_device*, %struct.net_device** %7, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @NETIF_F_LRO, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %116
  %142 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %143 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %142, i32 0, i32 2
  %144 = call i32 @lro_flush_all(i32* %143)
  br label %145

145:                                              ; preds = %141, %116
  %146 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %147 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %151 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %149, %153
  %155 = load i64, i64* @myri10ge_fill_thresh, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %145
  %158 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %159 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %160 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %159, i32 0, i32 1
  %161 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %162 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @MXGEFW_PAD, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv* %158, %struct.TYPE_7__* %160, i64 %165, i32 0)
  br label %167

167:                                              ; preds = %157, %145
  %168 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %169 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %173 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %171, %175
  %177 = load i64, i64* @myri10ge_fill_thresh, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %167
  %180 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %181 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %182 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %181, i32 0, i32 0
  %183 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %184 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv* %180, %struct.TYPE_7__* %182, i64 %185, i32 0)
  br label %187

187:                                              ; preds = %179, %167
  %188 = load i32, i32* %13, align 4
  ret i32 %188
}

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @csum_unfold(i32) #1

declare dso_local i64 @myri10ge_rx_done(%struct.myri10ge_slice_state*, %struct.TYPE_7__*, i64, i64, i32) #1

declare dso_local i32 @lro_flush_all(i32*) #1

declare dso_local i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv*, %struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
