; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_mclk_clock_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nva3_pm.c_mclk_clock_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mem_exec_func = type { %struct.nva3_pm_state*, i32 }
%struct.nva3_pm_state = type { i32, i32*, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_mem_exec_func*)* @mclk_clock_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mclk_clock_set(%struct.nouveau_mem_exec_func* %0) #0 {
  %2 = alloca %struct.nouveau_mem_exec_func*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca %struct.nva3_pm_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_mem_exec_func* %0, %struct.nouveau_mem_exec_func** %2, align 8
  %9 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %10 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.nouveau_device* @nouveau_dev(i32 %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %3, align 8
  %13 = load %struct.nouveau_mem_exec_func*, %struct.nouveau_mem_exec_func** %2, align 8
  %14 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %13, i32 0, i32 0
  %15 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %14, align 8
  store %struct.nva3_pm_state* %15, %struct.nva3_pm_state** %4, align 8
  %16 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %17 = call i32 @nv_rd32(%struct.nouveau_device* %16, i32 16384)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %1
  %22 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %23 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %21
  %28 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, 8
  store i32 %30, i32* %5, align 4
  %31 = call i32 @nv_wr32(%struct.nouveau_device* %28, i32 16384, i32 %30)
  %32 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %33 = call i32 @nv_mask(%struct.nouveau_device* %32, i32 1118432, i32 557056, i32 557056)
  %34 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %35 = call i32 @nv_wr32(%struct.nouveau_device* %34, i32 16408, i32 4096)
  %36 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, -2
  store i32 %38, i32* %5, align 4
  %39 = call i32 @nv_wr32(%struct.nouveau_device* %36, i32 16384, i32 %38)
  %40 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %41 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %42 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nv_wr32(%struct.nouveau_device* %40, i32 16388, i32 %44)
  %46 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = call i32 @nv_wr32(%struct.nouveau_device* %46, i32 16384, i32 %48)
  %50 = call i32 @udelay(i32 64)
  %51 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %52 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %53 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 20480, %54
  %56 = call i32 @nv_wr32(%struct.nouveau_device* %51, i32 16408, i32 %55)
  %57 = call i32 @udelay(i32 20)
  br label %84

58:                                               ; preds = %21, %1
  %59 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %60 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %58
  %65 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %66 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %67 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nv_mask(%struct.nouveau_device* %65, i32 16744, i32 4141120, i32 %69)
  %71 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, 8
  store i32 %73, i32* %5, align 4
  %74 = call i32 @nv_wr32(%struct.nouveau_device* %71, i32 16384, i32 %73)
  %75 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %76 = call i32 @nv_mask(%struct.nouveau_device* %75, i32 1118432, i32 557056, i32 557056)
  %77 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %78 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %79 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 53248, %80
  %82 = call i32 @nv_wr32(%struct.nouveau_device* %77, i32 16408, i32 %81)
  br label %83

83:                                               ; preds = %64, %58
  br label %84

84:                                               ; preds = %83, %27
  %85 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %86 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %177

89:                                               ; preds = %84
  %90 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %91 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %156

94:                                               ; preds = %89
  %95 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %96 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %156

102:                                              ; preds = %94
  %103 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %104 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ROM16(i32 %107)
  %109 = shl i32 %108, 8
  %110 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %111 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %109, %114
  store i32 %115, i32* %6, align 4
  %116 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %117 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 7
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ROM16(i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %123 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 9
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 240
  %128 = shl i32 %127, 16
  %129 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %130 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 15
  %135 = shl i32 %134, 16
  %136 = or i32 %128, %135
  %137 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %138 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 9
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 15
  %143 = or i32 %136, %142
  %144 = or i32 %143, -2147483648
  store i32 %144, i32* %8, align 4
  %145 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @nv_wr32(%struct.nouveau_device* %145, i32 1050016, i32 %146)
  %148 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @nv_wr32(%struct.nouveau_device* %148, i32 1050020, i32 %149)
  %151 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @nv_wr32(%struct.nouveau_device* %151, i32 1112068, i32 %152)
  %154 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %155 = call i32 @nv_mask(%struct.nouveau_device* %154, i32 1049916, i32 4096, i32 0)
  br label %176

156:                                              ; preds = %94, %89
  %157 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %158 = call i32 @nv_mask(%struct.nouveau_device* %157, i32 1049916, i32 4096, i32 4096)
  %159 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %160 = call i32 @nv_mask(%struct.nouveau_device* %159, i32 1112068, i32 -2147483648, i32 0)
  %161 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %162 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %163 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @nv_mask(%struct.nouveau_device* %161, i32 1050464, i32 572662306, i32 %164)
  %166 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %167 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %168 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @nv_mask(%struct.nouveau_device* %166, i32 1050528, i32 572662306, i32 %169)
  %171 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %172 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %173 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @nv_mask(%struct.nouveau_device* %171, i32 1050592, i32 572662306, i32 %174)
  br label %176

176:                                              ; preds = %156, %102
  br label %177

177:                                              ; preds = %176, %84
  %178 = load %struct.nva3_pm_state*, %struct.nva3_pm_state** %4, align 8
  %179 = getelementptr inbounds %struct.nva3_pm_state, %struct.nva3_pm_state* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %177
  %184 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %185 = call i32 @nv_mask(%struct.nouveau_device* %184, i32 1118432, i32 557056, i32 69632)
  %186 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %187 = load i32, i32* %5, align 4
  %188 = and i32 %187, -9
  store i32 %188, i32* %5, align 4
  %189 = call i32 @nv_wr32(%struct.nouveau_device* %186, i32 16384, i32 %188)
  br label %190

190:                                              ; preds = %183, %177
  ret void
}

declare dso_local %struct.nouveau_device* @nouveau_dev(i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ROM16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
