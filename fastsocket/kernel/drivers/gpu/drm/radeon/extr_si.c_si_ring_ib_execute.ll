; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_ring_ib_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_ring_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__, %struct.radeon_ring* }
%struct.TYPE_3__ = type { i64 }
%struct.radeon_ring = type { i32, i32, i32 }
%struct.radeon_ib = type { i64, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@PACKET3_SWITCH_BUFFER = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER_CONST = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@CP_COHER_CNTL2 = common dso_local global i32 0, align 4
@PACKET3_SURFACE_SYNC = common dso_local global i32 0, align 4
@PACKET3_TCL1_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_TC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_KCACHE_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_ICACHE_ACTION_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_ring_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %9, align 8
  %11 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i64 %13
  store %struct.radeon_ring* %14, %struct.radeon_ring** %5, align 8
  %15 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %21 = load i32, i32* @PACKET3_SWITCH_BUFFER, align 4
  %22 = call i32 @PACKET3(i32 %21, i32 0)
  %23 = call i32 @radeon_ring_write(%struct.radeon_ring* %20, i32 %22)
  %24 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %24, i32 0)
  %26 = load i32, i32* @PACKET3_INDIRECT_BUFFER_CONST, align 4
  %27 = call i32 @PACKET3(i32 %26, i32 2)
  store i32 %27, i32* %6, align 4
  br label %93

28:                                               ; preds = %2
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %35 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 3
  %38 = add nsw i32 %37, 4
  %39 = add nsw i32 %38, 8
  store i32 %39, i32* %7, align 4
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %41 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %42 = call i32 @PACKET3(i32 %41, i32 1)
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %40, i32 %42)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %46 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %49 = sub nsw i32 %47, %48
  %50 = ashr i32 %49, 2
  %51 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 %50)
  %52 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %52, i32 %53)
  br label %90

55:                                               ; preds = %28
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %55
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 5
  %66 = add nsw i32 %65, 4
  %67 = add nsw i32 %66, 8
  store i32 %67, i32* %7, align 4
  %68 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %69 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %70 = call i32 @PACKET3(i32 %69, i32 3)
  %71 = call i32 @radeon_ring_write(%struct.radeon_ring* %68, i32 %70)
  %72 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %73 = call i32 @radeon_ring_write(%struct.radeon_ring* %72, i32 256)
  %74 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %75 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %76 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, -4
  %79 = call i32 @radeon_ring_write(%struct.radeon_ring* %74, i32 %78)
  %80 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %81 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %82 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @upper_32_bits(i32 %83)
  %85 = call i32 @radeon_ring_write(%struct.radeon_ring* %80, i32 %84)
  %86 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @radeon_ring_write(%struct.radeon_ring* %86, i32 %87)
  br label %89

89:                                               ; preds = %61, %55
  br label %90

90:                                               ; preds = %89, %33
  %91 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %92 = call i32 @PACKET3(i32 %91, i32 2)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %19
  %94 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @radeon_ring_write(%struct.radeon_ring* %94, i32 %95)
  %97 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %98 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %99 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, -4
  %102 = call i32 @radeon_ring_write(%struct.radeon_ring* %97, i32 %101)
  %103 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %104 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %105 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @upper_32_bits(i32 %106)
  %108 = and i32 %107, 65535
  %109 = call i32 @radeon_ring_write(%struct.radeon_ring* %103, i32 %108)
  %110 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %111 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %112 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %115 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %114, i32 0, i32 3
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = icmp ne %struct.TYPE_4__* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %93
  %119 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %120 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 24
  br label %126

125:                                              ; preds = %93
  br label %126

126:                                              ; preds = %125, %118
  %127 = phi i32 [ %124, %118 ], [ 0, %125 ]
  %128 = or i32 %113, %127
  %129 = call i32 @radeon_ring_write(%struct.radeon_ring* %110, i32 %128)
  %130 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %131 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %179, label %134

134:                                              ; preds = %126
  %135 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %136 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %137 = call i32 @PACKET3(i32 %136, i32 1)
  %138 = call i32 @radeon_ring_write(%struct.radeon_ring* %135, i32 %137)
  %139 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %140 = load i32, i32* @CP_COHER_CNTL2, align 4
  %141 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %142 = sub nsw i32 %140, %141
  %143 = ashr i32 %142, 2
  %144 = call i32 @radeon_ring_write(%struct.radeon_ring* %139, i32 %143)
  %145 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %146 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %147 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %146, i32 0, i32 3
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = icmp ne %struct.TYPE_4__* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %134
  %151 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %152 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %151, i32 0, i32 3
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  br label %157

156:                                              ; preds = %134
  br label %157

157:                                              ; preds = %156, %150
  %158 = phi i32 [ %155, %150 ], [ 0, %156 ]
  %159 = call i32 @radeon_ring_write(%struct.radeon_ring* %145, i32 %158)
  %160 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %161 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %162 = call i32 @PACKET3(i32 %161, i32 3)
  %163 = call i32 @radeon_ring_write(%struct.radeon_ring* %160, i32 %162)
  %164 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %165 = load i32, i32* @PACKET3_TCL1_ACTION_ENA, align 4
  %166 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @PACKET3_SH_KCACHE_ACTION_ENA, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @PACKET3_SH_ICACHE_ACTION_ENA, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @radeon_ring_write(%struct.radeon_ring* %164, i32 %171)
  %173 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %174 = call i32 @radeon_ring_write(%struct.radeon_ring* %173, i32 -1)
  %175 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %176 = call i32 @radeon_ring_write(%struct.radeon_ring* %175, i32 0)
  %177 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %178 = call i32 @radeon_ring_write(%struct.radeon_ring* %177, i32 10)
  br label %179

179:                                              ; preds = %157, %126
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
