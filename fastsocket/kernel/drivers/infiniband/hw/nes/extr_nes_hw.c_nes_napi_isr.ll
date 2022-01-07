; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_napi_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_napi_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32, i32, i32, i64, i64, i32, i32, i64, %struct.nes_adapter* }
%struct.nes_adapter = type { i32, i64, i32, i64, i32* }

@NES_INT_STAT = common dso_local global i64 0, align 8
@NES_INT_INTF = common dso_local global i32 0, align 4
@NES_INT_TIMER = common dso_local global i32 0, align 4
@NES_INT_MAC0 = common dso_local global i32 0, align 4
@NES_INT_MAC1 = common dso_local global i32 0, align 4
@NES_INT_MAC2 = common dso_local global i32 0, align 4
@NES_INT_MAC3 = common dso_local global i32 0, align 4
@NES_TIMER_STAT = common dso_local global i64 0, align 8
@NES_INTF_INT_MASK = common dso_local global i64 0, align 8
@NES_INTF_PERIODIC_TIMER = common dso_local global i32 0, align 4
@NES_INT_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nes_napi_isr(%struct.nes_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nes_device*, align 8
  %4 = alloca %struct.nes_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %3, align 8
  %6 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %7 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %6, i32 0, i32 8
  %8 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  store %struct.nes_adapter* %8, %struct.nes_adapter** %4, align 8
  %9 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %10 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %15 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %19 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NES_INT_STAT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @nes_read32(i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %26 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %28 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %17, %13
  %30 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %31 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %197

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 65280
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %197

42:                                               ; preds = %37
  %43 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %44 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %46 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NES_INT_STAT, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @NES_INT_INTF, align 4
  %52 = load i32, i32* @NES_INT_TIMER, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NES_INT_MAC0, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @NES_INT_MAC1, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @NES_INT_MAC2, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @NES_INT_MAC3, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = and i32 %50, %62
  %64 = call i32 @nes_write32(i64 %49, i32 %63)
  %65 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %66 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %67 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %66, i32 0, i32 8
  %68 = load %struct.nes_adapter*, %struct.nes_adapter** %67, align 8
  %69 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %72 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = call i32 @nes_process_ceq(%struct.nes_device* %65, i32* %74)
  %76 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %42
  %81 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %82 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80, %42
  %86 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %92 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %95 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %93, %96
  br label %98

98:                                               ; preds = %90, %85
  %99 = phi i1 [ false, %85 ], [ %97, %90 ]
  br label %100

100:                                              ; preds = %98, %80
  %101 = phi i1 [ true, %80 ], [ %99, %98 ]
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %167

105:                                              ; preds = %100
  %106 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %107 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @NES_INT_TIMER, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %146

112:                                              ; preds = %105
  %113 = load i32, i32* @NES_INT_TIMER, align 4
  %114 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %115 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %119 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @NES_TIMER_STAT, align 8
  %122 = add nsw i64 %120, %121
  %123 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %124 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %127 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %126, i32 0, i32 8
  %128 = load %struct.nes_adapter*, %struct.nes_adapter** %127, align 8
  %129 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = xor i32 %130, -1
  %132 = or i32 %125, %131
  %133 = call i32 @nes_write32(i64 %122, i32 %132)
  %134 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %135 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @NES_INTF_INT_MASK, align 8
  %138 = add nsw i64 %136, %137
  %139 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %140 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @NES_INTF_PERIODIC_TIMER, align 4
  %143 = or i32 %141, %142
  %144 = xor i32 %143, -1
  %145 = call i32 @nes_write32(i64 %138, i32 %144)
  br label %146

146:                                              ; preds = %112, %105
  %147 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %148 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %154 = call i32 @nes_nic_init_timer(%struct.nes_device* %153)
  br label %155

155:                                              ; preds = %152, %146
  %156 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %157 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %156, i32 0, i32 7
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @NES_INT_MASK, align 8
  %160 = add nsw i64 %158, %159
  %161 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %162 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = xor i32 %163, -1
  %165 = or i32 65535, %164
  %166 = call i32 @nes_write32(i64 %160, i32 %165)
  br label %194

167:                                              ; preds = %100
  %168 = load i32, i32* @NES_INT_TIMER, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %171 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %175 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %174, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @NES_INTF_INT_MASK, align 8
  %178 = add nsw i64 %176, %177
  %179 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %180 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %181, -1
  %183 = call i32 @nes_write32(i64 %178, i32 %182)
  %184 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %185 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %184, i32 0, i32 7
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @NES_INT_MASK, align 8
  %188 = add nsw i64 %186, %187
  %189 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %190 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = xor i32 %191, -1
  %193 = call i32 @nes_write32(i64 %188, i32 %192)
  br label %194

194:                                              ; preds = %167, %155
  %195 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %196 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %195, i32 0, i32 4
  store i64 0, i64* %196, align 8
  store i32 1, i32* %2, align 4
  br label %198

197:                                              ; preds = %37, %29
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %194
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @nes_read32(i64) #1

declare dso_local i32 @nes_write32(i64, i32) #1

declare dso_local i32 @nes_process_ceq(%struct.nes_device*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nes_nic_init_timer(%struct.nes_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
