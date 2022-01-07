; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_default_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_blit_kms.c_set_default_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__, %struct.radeon_ring* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.radeon_ring = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@PACKET3_CLEAR_STATE = common dso_local global i32 0, align 4
@CHIP_CAYMAN = common dso_local global i32 0, align 4
@VC_ENABLE = common dso_local global i32 0, align 4
@EXPORT_SRC_C = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@SQ_DYN_GPR_CNTL_PS_FLUSH_REQ = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@SQ_LDS_RESOURCE_MGMT = common dso_local global i32 0, align 4
@SQ_CONFIG = common dso_local global i32 0, align 4
@PACKET3_MODE_CONTROL = common dso_local global i32 0, align 4
@PACKET3_INDIRECT_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @set_default_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_default_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.radeon_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 2
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %35, align 8
  %37 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %38 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %36, i64 %37
  store %struct.radeon_ring* %38, %struct.radeon_ring** %3, align 8
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %40 = load i32, i32* @PACKET3_CLEAR_STATE, align 4
  %41 = call i32 @PACKET3(i32 %40, i32 0)
  %42 = call i32 @radeon_ring_write(%struct.radeon_ring* %39, i32 %41)
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %44 = call i32 @radeon_ring_write(%struct.radeon_ring* %43, i32 0)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CHIP_CAYMAN, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %225

50:                                               ; preds = %1
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %55 [
    i32 136, label %54
    i32 131, label %56
    i32 133, label %57
    i32 135, label %58
    i32 134, label %58
    i32 132, label %59
    i32 130, label %60
    i32 129, label %61
    i32 138, label %62
    i32 128, label %63
    i32 137, label %64
  ]

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %50, %54
  store i32 93, i32* %13, align 4
  store i32 46, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 31, i32* %16, align 4
  store i32 31, i32* %17, align 4
  store i32 23, i32* %18, align 4
  store i32 23, i32* %19, align 4
  store i32 96, i32* %20, align 4
  store i32 16, i32* %21, align 4
  store i32 16, i32* %22, align 4
  store i32 16, i32* %23, align 4
  store i32 16, i32* %24, align 4
  store i32 16, i32* %25, align 4
  store i32 42, i32* %26, align 4
  store i32 42, i32* %27, align 4
  store i32 42, i32* %28, align 4
  store i32 42, i32* %29, align 4
  store i32 42, i32* %30, align 4
  store i32 42, i32* %31, align 4
  br label %65

56:                                               ; preds = %50
  store i32 93, i32* %13, align 4
  store i32 46, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 31, i32* %16, align 4
  store i32 31, i32* %17, align 4
  store i32 23, i32* %18, align 4
  store i32 23, i32* %19, align 4
  store i32 128, i32* %20, align 4
  store i32 20, i32* %21, align 4
  store i32 20, i32* %22, align 4
  store i32 20, i32* %23, align 4
  store i32 20, i32* %24, align 4
  store i32 20, i32* %25, align 4
  store i32 42, i32* %26, align 4
  store i32 42, i32* %27, align 4
  store i32 42, i32* %28, align 4
  store i32 42, i32* %29, align 4
  store i32 42, i32* %30, align 4
  store i32 42, i32* %31, align 4
  br label %65

57:                                               ; preds = %50
  store i32 93, i32* %13, align 4
  store i32 46, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 31, i32* %16, align 4
  store i32 31, i32* %17, align 4
  store i32 23, i32* %18, align 4
  store i32 23, i32* %19, align 4
  store i32 128, i32* %20, align 4
  store i32 20, i32* %21, align 4
  store i32 20, i32* %22, align 4
  store i32 20, i32* %23, align 4
  store i32 20, i32* %24, align 4
  store i32 20, i32* %25, align 4
  store i32 85, i32* %26, align 4
  store i32 85, i32* %27, align 4
  store i32 85, i32* %28, align 4
  store i32 85, i32* %29, align 4
  store i32 85, i32* %30, align 4
  store i32 85, i32* %31, align 4
  br label %65

58:                                               ; preds = %50, %50
  store i32 93, i32* %13, align 4
  store i32 46, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 31, i32* %16, align 4
  store i32 31, i32* %17, align 4
  store i32 23, i32* %18, align 4
  store i32 23, i32* %19, align 4
  store i32 128, i32* %20, align 4
  store i32 20, i32* %21, align 4
  store i32 20, i32* %22, align 4
  store i32 20, i32* %23, align 4
  store i32 20, i32* %24, align 4
  store i32 20, i32* %25, align 4
  store i32 85, i32* %26, align 4
  store i32 85, i32* %27, align 4
  store i32 85, i32* %28, align 4
  store i32 85, i32* %29, align 4
  store i32 85, i32* %30, align 4
  store i32 85, i32* %31, align 4
  br label %65

59:                                               ; preds = %50
  store i32 93, i32* %13, align 4
  store i32 46, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 31, i32* %16, align 4
  store i32 31, i32* %17, align 4
  store i32 23, i32* %18, align 4
  store i32 23, i32* %19, align 4
  store i32 96, i32* %20, align 4
  store i32 16, i32* %21, align 4
  store i32 16, i32* %22, align 4
  store i32 16, i32* %23, align 4
  store i32 16, i32* %24, align 4
  store i32 16, i32* %25, align 4
  store i32 42, i32* %26, align 4
  store i32 42, i32* %27, align 4
  store i32 42, i32* %28, align 4
  store i32 42, i32* %29, align 4
  store i32 42, i32* %30, align 4
  store i32 42, i32* %31, align 4
  br label %65

60:                                               ; preds = %50
  store i32 93, i32* %13, align 4
  store i32 46, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 31, i32* %16, align 4
  store i32 31, i32* %17, align 4
  store i32 23, i32* %18, align 4
  store i32 23, i32* %19, align 4
  store i32 96, i32* %20, align 4
  store i32 25, i32* %21, align 4
  store i32 25, i32* %22, align 4
  store i32 25, i32* %23, align 4
  store i32 25, i32* %24, align 4
  store i32 25, i32* %25, align 4
  store i32 42, i32* %26, align 4
  store i32 42, i32* %27, align 4
  store i32 42, i32* %28, align 4
  store i32 42, i32* %29, align 4
  store i32 42, i32* %30, align 4
  store i32 42, i32* %31, align 4
  br label %65

61:                                               ; preds = %50
  store i32 93, i32* %13, align 4
  store i32 46, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 31, i32* %16, align 4
  store i32 31, i32* %17, align 4
  store i32 23, i32* %18, align 4
  store i32 23, i32* %19, align 4
  store i32 96, i32* %20, align 4
  store i32 25, i32* %21, align 4
  store i32 25, i32* %22, align 4
  store i32 25, i32* %23, align 4
  store i32 25, i32* %24, align 4
  store i32 25, i32* %25, align 4
  store i32 85, i32* %26, align 4
  store i32 85, i32* %27, align 4
  store i32 85, i32* %28, align 4
  store i32 85, i32* %29, align 4
  store i32 85, i32* %30, align 4
  store i32 85, i32* %31, align 4
  br label %65

62:                                               ; preds = %50
  store i32 93, i32* %13, align 4
  store i32 46, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 31, i32* %16, align 4
  store i32 31, i32* %17, align 4
  store i32 23, i32* %18, align 4
  store i32 23, i32* %19, align 4
  store i32 128, i32* %20, align 4
  store i32 20, i32* %21, align 4
  store i32 20, i32* %22, align 4
  store i32 20, i32* %23, align 4
  store i32 20, i32* %24, align 4
  store i32 20, i32* %25, align 4
  store i32 85, i32* %26, align 4
  store i32 85, i32* %27, align 4
  store i32 85, i32* %28, align 4
  store i32 85, i32* %29, align 4
  store i32 85, i32* %30, align 4
  store i32 85, i32* %31, align 4
  br label %65

63:                                               ; preds = %50
  store i32 93, i32* %13, align 4
  store i32 46, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 31, i32* %16, align 4
  store i32 31, i32* %17, align 4
  store i32 23, i32* %18, align 4
  store i32 23, i32* %19, align 4
  store i32 128, i32* %20, align 4
  store i32 20, i32* %21, align 4
  store i32 20, i32* %22, align 4
  store i32 20, i32* %23, align 4
  store i32 20, i32* %24, align 4
  store i32 20, i32* %25, align 4
  store i32 42, i32* %26, align 4
  store i32 42, i32* %27, align 4
  store i32 42, i32* %28, align 4
  store i32 42, i32* %29, align 4
  store i32 42, i32* %30, align 4
  store i32 42, i32* %31, align 4
  br label %65

64:                                               ; preds = %50
  store i32 93, i32* %13, align 4
  store i32 46, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 31, i32* %16, align 4
  store i32 31, i32* %17, align 4
  store i32 23, i32* %18, align 4
  store i32 23, i32* %19, align 4
  store i32 128, i32* %20, align 4
  store i32 10, i32* %21, align 4
  store i32 10, i32* %22, align 4
  store i32 10, i32* %23, align 4
  store i32 10, i32* %24, align 4
  store i32 10, i32* %25, align 4
  store i32 42, i32* %26, align 4
  store i32 42, i32* %27, align 4
  store i32 42, i32* %28, align 4
  store i32 42, i32* %29, align 4
  store i32 42, i32* %30, align 4
  store i32 42, i32* %31, align 4
  br label %65

65:                                               ; preds = %64, %63, %62, %61, %60, %59, %58, %57, %56, %55
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 136
  br i1 %69, label %90, label %70

70:                                               ; preds = %65
  %71 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 132
  br i1 %74, label %90, label %75

75:                                               ; preds = %70
  %76 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 130
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 129
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 137
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %80, %75, %70, %65
  store i32 0, i32* %4, align 4
  br label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @VC_ENABLE, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = load i32, i32* @EXPORT_SRC_C, align 4
  %95 = call i32 @CS_PRIO(i32 0)
  %96 = or i32 %94, %95
  %97 = call i32 @LS_PRIO(i32 0)
  %98 = or i32 %96, %97
  %99 = call i32 @HS_PRIO(i32 0)
  %100 = or i32 %98, %99
  %101 = call i32 @PS_PRIO(i32 0)
  %102 = or i32 %100, %101
  %103 = call i32 @VS_PRIO(i32 1)
  %104 = or i32 %102, %103
  %105 = call i32 @GS_PRIO(i32 2)
  %106 = or i32 %104, %105
  %107 = call i32 @ES_PRIO(i32 3)
  %108 = or i32 %106, %107
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @NUM_PS_GPRS(i32 %111)
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @NUM_VS_GPRS(i32 %113)
  %115 = or i32 %112, %114
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @NUM_CLAUSE_TEMP_GPRS(i32 %116)
  %118 = or i32 %115, %117
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @NUM_GS_GPRS(i32 %119)
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @NUM_ES_GPRS(i32 %121)
  %123 = or i32 %120, %122
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @NUM_HS_GPRS(i32 %124)
  %126 = load i32, i32* %19, align 4
  %127 = call i32 @NUM_LS_GPRS(i32 %126)
  %128 = or i32 %125, %127
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %20, align 4
  %130 = call i32 @NUM_PS_THREADS(i32 %129)
  %131 = load i32, i32* %21, align 4
  %132 = call i32 @NUM_VS_THREADS(i32 %131)
  %133 = or i32 %130, %132
  %134 = load i32, i32* %22, align 4
  %135 = call i32 @NUM_GS_THREADS(i32 %134)
  %136 = or i32 %133, %135
  %137 = load i32, i32* %23, align 4
  %138 = call i32 @NUM_ES_THREADS(i32 %137)
  %139 = or i32 %136, %138
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %24, align 4
  %141 = call i32 @NUM_HS_THREADS(i32 %140)
  %142 = load i32, i32* %25, align 4
  %143 = call i32 @NUM_LS_THREADS(i32 %142)
  %144 = or i32 %141, %143
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %26, align 4
  %146 = call i32 @NUM_PS_STACK_ENTRIES(i32 %145)
  %147 = load i32, i32* %27, align 4
  %148 = call i32 @NUM_VS_STACK_ENTRIES(i32 %147)
  %149 = or i32 %146, %148
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %28, align 4
  %151 = call i32 @NUM_GS_STACK_ENTRIES(i32 %150)
  %152 = load i32, i32* %29, align 4
  %153 = call i32 @NUM_ES_STACK_ENTRIES(i32 %152)
  %154 = or i32 %151, %153
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %30, align 4
  %156 = call i32 @NUM_HS_STACK_ENTRIES(i32 %155)
  %157 = load i32, i32* %31, align 4
  %158 = call i32 @NUM_LS_STACK_ENTRIES(i32 %157)
  %159 = or i32 %156, %158
  store i32 %159, i32* %12, align 4
  %160 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %161 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %162 = call i32 @PACKET3(i32 %161, i32 1)
  %163 = call i32 @radeon_ring_write(%struct.radeon_ring* %160, i32 %162)
  %164 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %165 = load i32, i32* @SQ_DYN_GPR_CNTL_PS_FLUSH_REQ, align 4
  %166 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %167 = sub nsw i32 %165, %166
  %168 = ashr i32 %167, 2
  %169 = call i32 @radeon_ring_write(%struct.radeon_ring* %164, i32 %168)
  %170 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %171 = call i32 @radeon_ring_write(%struct.radeon_ring* %170, i32 0)
  %172 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %173 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %174 = call i32 @PACKET3(i32 %173, i32 1)
  %175 = call i32 @radeon_ring_write(%struct.radeon_ring* %172, i32 %174)
  %176 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %177 = load i32, i32* @SQ_LDS_RESOURCE_MGMT, align 4
  %178 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %179 = sub nsw i32 %177, %178
  %180 = ashr i32 %179, 2
  %181 = call i32 @radeon_ring_write(%struct.radeon_ring* %176, i32 %180)
  %182 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %183 = call i32 @radeon_ring_write(%struct.radeon_ring* %182, i32 268439552)
  %184 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %185 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %186 = call i32 @PACKET3(i32 %185, i32 11)
  %187 = call i32 @radeon_ring_write(%struct.radeon_ring* %184, i32 %186)
  %188 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %189 = load i32, i32* @SQ_CONFIG, align 4
  %190 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %191 = sub nsw i32 %189, %190
  %192 = ashr i32 %191, 2
  %193 = call i32 @radeon_ring_write(%struct.radeon_ring* %188, i32 %192)
  %194 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @radeon_ring_write(%struct.radeon_ring* %194, i32 %195)
  %197 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @radeon_ring_write(%struct.radeon_ring* %197, i32 %198)
  %200 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @radeon_ring_write(%struct.radeon_ring* %200, i32 %201)
  %203 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @radeon_ring_write(%struct.radeon_ring* %203, i32 %204)
  %206 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %207 = call i32 @radeon_ring_write(%struct.radeon_ring* %206, i32 0)
  %208 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %209 = call i32 @radeon_ring_write(%struct.radeon_ring* %208, i32 0)
  %210 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @radeon_ring_write(%struct.radeon_ring* %210, i32 %211)
  %213 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @radeon_ring_write(%struct.radeon_ring* %213, i32 %214)
  %216 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @radeon_ring_write(%struct.radeon_ring* %216, i32 %217)
  %219 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @radeon_ring_write(%struct.radeon_ring* %219, i32 %220)
  %222 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %223 = load i32, i32* %12, align 4
  %224 = call i32 @radeon_ring_write(%struct.radeon_ring* %222, i32 %223)
  br label %225

225:                                              ; preds = %93, %1
  %226 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %227 = call i32 @radeon_ring_write(%struct.radeon_ring* %226, i32 -1073666048)
  %228 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %229 = call i32 @radeon_ring_write(%struct.radeon_ring* %228, i32 -2147483648)
  %230 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %231 = call i32 @radeon_ring_write(%struct.radeon_ring* %230, i32 -2147483648)
  %232 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %233 = call i32 @radeon_ring_write(%struct.radeon_ring* %232, i32 -1073582336)
  %234 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %235 = call i32 @radeon_ring_write(%struct.radeon_ring* %234, i32 0)
  %236 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %237 = call i32 @radeon_ring_write(%struct.radeon_ring* %236, i32 0)
  %238 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %239 = call i32 @radeon_ring_write(%struct.radeon_ring* %238, i32 0)
  %240 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %241 = call i32 @radeon_ring_write(%struct.radeon_ring* %240, i32 -1073517056)
  %242 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %243 = call i32 @radeon_ring_write(%struct.radeon_ring* %242, i32 0)
  %244 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %245 = call i32 @radeon_ring_write(%struct.radeon_ring* %244, i32 18)
  %246 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %247 = call i32 @radeon_ring_write(%struct.radeon_ring* %246, i32 0)
  %248 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %249 = call i32 @radeon_ring_write(%struct.radeon_ring* %248, i32 0)
  %250 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %251 = load i32, i32* @PACKET3_MODE_CONTROL, align 4
  %252 = call i32 @PACKET3(i32 %251, i32 0)
  %253 = call i32 @radeon_ring_write(%struct.radeon_ring* %250, i32 %252)
  %254 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %255 = call i32 @radeon_ring_write(%struct.radeon_ring* %254, i32 1)
  %256 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %257 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @ALIGN(i32 %259, i32 16)
  store i32 %260, i32* %33, align 4
  %261 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %262 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %266 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %264, %268
  store i32 %269, i32* %32, align 4
  %270 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %271 = load i32, i32* @PACKET3_INDIRECT_BUFFER, align 4
  %272 = call i32 @PACKET3(i32 %271, i32 2)
  %273 = call i32 @radeon_ring_write(%struct.radeon_ring* %270, i32 %272)
  %274 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %275 = load i32, i32* %32, align 4
  %276 = and i32 %275, -4
  %277 = call i32 @radeon_ring_write(%struct.radeon_ring* %274, i32 %276)
  %278 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %279 = load i32, i32* %32, align 4
  %280 = call i32 @upper_32_bits(i32 %279)
  %281 = and i32 %280, 255
  %282 = call i32 @radeon_ring_write(%struct.radeon_ring* %278, i32 %281)
  %283 = load %struct.radeon_ring*, %struct.radeon_ring** %3, align 8
  %284 = load i32, i32* %33, align 4
  %285 = call i32 @radeon_ring_write(%struct.radeon_ring* %283, i32 %284)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @CS_PRIO(i32) #1

declare dso_local i32 @LS_PRIO(i32) #1

declare dso_local i32 @HS_PRIO(i32) #1

declare dso_local i32 @PS_PRIO(i32) #1

declare dso_local i32 @VS_PRIO(i32) #1

declare dso_local i32 @GS_PRIO(i32) #1

declare dso_local i32 @ES_PRIO(i32) #1

declare dso_local i32 @NUM_PS_GPRS(i32) #1

declare dso_local i32 @NUM_VS_GPRS(i32) #1

declare dso_local i32 @NUM_CLAUSE_TEMP_GPRS(i32) #1

declare dso_local i32 @NUM_GS_GPRS(i32) #1

declare dso_local i32 @NUM_ES_GPRS(i32) #1

declare dso_local i32 @NUM_HS_GPRS(i32) #1

declare dso_local i32 @NUM_LS_GPRS(i32) #1

declare dso_local i32 @NUM_PS_THREADS(i32) #1

declare dso_local i32 @NUM_VS_THREADS(i32) #1

declare dso_local i32 @NUM_GS_THREADS(i32) #1

declare dso_local i32 @NUM_ES_THREADS(i32) #1

declare dso_local i32 @NUM_HS_THREADS(i32) #1

declare dso_local i32 @NUM_LS_THREADS(i32) #1

declare dso_local i32 @NUM_PS_STACK_ENTRIES(i32) #1

declare dso_local i32 @NUM_VS_STACK_ENTRIES(i32) #1

declare dso_local i32 @NUM_GS_STACK_ENTRIES(i32) #1

declare dso_local i32 @NUM_ES_STACK_ENTRIES(i32) #1

declare dso_local i32 @NUM_HS_STACK_ENTRIES(i32) #1

declare dso_local i32 @NUM_LS_STACK_ENTRIES(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
