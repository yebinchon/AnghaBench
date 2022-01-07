; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_reset_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_reset_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i64, %struct.nes_adapter* }
%struct.nes_adapter = type { i64, i32*, i32, i64 }

@NE020_REV = common dso_local global i64 0, align 8
@mh_detected = common dso_local global i32 0, align 4
@NES_SOFTWARE_RESET = common dso_local global i64 0, align 8
@NES_MAX_LINK_INTERRUPTS = common dso_local global i64 0, align 8
@NES_IDX_ETH_SERDES_COMMON_CONTROL1 = common dso_local global i64 0, align 8
@NES_IDX_PHY_PCS_CONTROL_STATUS0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*, i32)* @nes_reset_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_reset_link(%struct.nes_device* %0, i32 %1) #0 {
  %3 = alloca %struct.nes_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nes_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %12 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %11, i32 0, i32 1
  %13 = load %struct.nes_adapter*, %struct.nes_adapter** %12, align 8
  store %struct.nes_adapter* %13, %struct.nes_adapter** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NE020_REV, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %204

20:                                               ; preds = %2
  %21 = load i32, i32* @mh_detected, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @mh_detected, align 4
  %23 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %24 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NES_SOFTWARE_RESET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @nes_read32(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %20
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, 29
  store i32 %41, i32* %6, align 4
  br label %45

42:                                               ; preds = %34, %31
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, 45
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @NES_MAX_LINK_INTERRUPTS, align 8
  %54 = trunc i64 %53 to i32
  %55 = sdiv i32 %52, %54
  %56 = icmp sle i32 4, %55
  br i1 %56, label %57, label %100

57:                                               ; preds = %45
  %58 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %57
  %63 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %64 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %93

67:                                               ; preds = %62
  %68 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 0, i32* %71, align 4
  %72 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %73 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %77 = load i64, i64* @NES_IDX_ETH_SERDES_COMMON_CONTROL1, align 8
  %78 = call i32 @nes_read_indexed(%struct.nes_device* %76, i64 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = and i32 64, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %67
  %83 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %84 = load i64, i64* @NES_IDX_ETH_SERDES_COMMON_CONTROL1, align 8
  %85 = call i32 @nes_write_indexed(%struct.nes_device* %83, i64 %84, i32 61576)
  br label %90

86:                                               ; preds = %67
  %87 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %88 = load i64, i64* @NES_IDX_ETH_SERDES_COMMON_CONTROL1, align 8
  %89 = call i32 @nes_write_indexed(%struct.nes_device* %87, i64 %88, i32 61640)
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, 61
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %62, %57
  %94 = load %struct.nes_adapter*, %struct.nes_adapter** %5, align 8
  %95 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %45
  %101 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %102 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NES_SOFTWARE_RESET, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @nes_write32(i64 %105, i32 %106)
  br label %108

108:                                              ; preds = %123, %100
  %109 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %110 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NES_SOFTWARE_RESET, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @nes_read32(i64 %113)
  %115 = and i32 %114, 64
  %116 = icmp ne i32 %115, 64
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  %120 = icmp slt i32 %118, 5000
  br label %121

121:                                              ; preds = %117, %108
  %122 = phi i1 [ false, %108 ], [ %120, %117 ]
  br i1 %122, label %123, label %124

123:                                              ; preds = %121
  br label %108

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, 61
  %127 = icmp eq i32 61, %126
  br i1 %127, label %128, label %204

128:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %157, %128
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %130, 10
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %134 = load i64, i64* @NES_IDX_PHY_PCS_CONTROL_STATUS0, align 8
  %135 = call i32 @nes_read_indexed(%struct.nes_device* %133, i64 %134)
  store i32 %135, i32* %9, align 4
  %136 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %137 = load i64, i64* @NES_IDX_PHY_PCS_CONTROL_STATUS0, align 8
  %138 = add nsw i64 %137, 512
  %139 = call i32 @nes_read_indexed(%struct.nes_device* %136, i64 %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %140, 251658240
  %142 = icmp eq i32 251658240, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %132
  %144 = load i32, i32* %9, align 4
  %145 = and i32 %144, 1048576
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %143, %132
  %148 = load i32, i32* %10, align 4
  %149 = and i32 %148, 251658240
  %150 = icmp eq i32 251658240, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* %10, align 4
  %153 = and i32 %152, 1048576
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151, %143
  br label %157

156:                                              ; preds = %151, %147
  br label %160

157:                                              ; preds = %155
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %129

160:                                              ; preds = %156, %129
  %161 = load i32, i32* %7, align 4
  %162 = icmp eq i32 10, %161
  br i1 %162, label %163, label %203

163:                                              ; preds = %160
  %164 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %165 = load i64, i64* @NES_IDX_ETH_SERDES_COMMON_CONTROL1, align 8
  %166 = call i32 @nes_read_indexed(%struct.nes_device* %164, i64 %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = and i32 64, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %172 = load i64, i64* @NES_IDX_ETH_SERDES_COMMON_CONTROL1, align 8
  %173 = call i32 @nes_write_indexed(%struct.nes_device* %171, i64 %172, i32 61576)
  br label %178

174:                                              ; preds = %163
  %175 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %176 = load i64, i64* @NES_IDX_ETH_SERDES_COMMON_CONTROL1, align 8
  %177 = call i32 @nes_write_indexed(%struct.nes_device* %175, i64 %176, i32 61640)
  br label %178

178:                                              ; preds = %174, %170
  %179 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %180 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @NES_SOFTWARE_RESET, align 8
  %183 = add nsw i64 %181, %182
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @nes_write32(i64 %183, i32 %184)
  br label %186

186:                                              ; preds = %201, %178
  %187 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %188 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @NES_SOFTWARE_RESET, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @nes_read32(i64 %191)
  %193 = and i32 %192, 64
  %194 = icmp ne i32 %193, 64
  br i1 %194, label %195, label %199

195:                                              ; preds = %186
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %7, align 4
  %198 = icmp slt i32 %196, 5000
  br label %199

199:                                              ; preds = %195, %186
  %200 = phi i1 [ false, %186 ], [ %198, %195 ]
  br i1 %200, label %201, label %202

201:                                              ; preds = %199
  br label %186

202:                                              ; preds = %199
  br label %203

203:                                              ; preds = %202, %160
  br label %204

204:                                              ; preds = %19, %203, %124
  ret void
}

declare dso_local i32 @nes_read32(i64) #1

declare dso_local i32 @nes_read_indexed(%struct.nes_device*, i64) #1

declare dso_local i32 @nes_write_indexed(%struct.nes_device*, i64, i32) #1

declare dso_local i32 @nes_write32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
