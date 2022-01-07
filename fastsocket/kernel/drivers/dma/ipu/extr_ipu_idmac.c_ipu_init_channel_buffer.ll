; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_init_channel_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_ipu_init_channel_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmac_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.idmac = type { i32 }
%struct.ipu = type { i32, i32 }
%union.chan_param_mem = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"Stride length must be 32-bit aligned, stride = %d, bytes = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IDMAC_IC_13 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Stride must be 8 pixel multiple\0A\00", align 1
@IPU_CHA_DB_MODE_SEL = common dso_local global i32 0, align 4
@IPU_CHANNEL_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmac_channel*, i32, i32, i32, i32, i32, i32, i32)* @ipu_init_channel_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_init_channel_buffer(%struct.idmac_channel* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.idmac_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.idmac*, align 8
  %20 = alloca %struct.ipu*, align 8
  %21 = alloca %union.chan_param_mem, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.idmac_channel* %0, %struct.idmac_channel** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load %struct.idmac_channel*, %struct.idmac_channel** %10, align 8
  %26 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %18, align 4
  %29 = load %struct.idmac_channel*, %struct.idmac_channel** %10, align 8
  %30 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.idmac* @to_idmac(i32 %32)
  store %struct.idmac* %33, %struct.idmac** %19, align 8
  %34 = load %struct.idmac*, %struct.idmac** %19, align 8
  %35 = call %struct.ipu* @to_ipu(%struct.idmac* %34)
  store %struct.ipu* %35, %struct.ipu** %20, align 8
  %36 = bitcast %union.chan_param_mem* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 4, i1 false)
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @bytes_per_pixel(i32 %38)
  %40 = mul nsw i32 %37, %39
  store i32 %40, i32* %24, align 4
  %41 = load i32, i32* %24, align 4
  %42 = srem i32 %41, 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %8
  %45 = load %struct.ipu*, %struct.ipu** %20, align 8
  %46 = getelementptr inbounds %struct.ipu, %struct.ipu* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %24, align 4
  %50 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %128

53:                                               ; preds = %8
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @IDMAC_IC_13, align 4
  %56 = icmp ule i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %14, align 4
  %59 = srem i32 %58, 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.ipu*, %struct.ipu** %20, align 8
  %63 = getelementptr inbounds %struct.ipu, %struct.ipu* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %128

68:                                               ; preds = %57, %53
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %24, align 4
  %73 = call i32 @ipu_ch_param_set_size(%union.chan_param_mem* %21, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @ipu_ch_param_set_buffer(%union.chan_param_mem* %21, i32 %74, i32 %75)
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @ipu_ch_param_set_rotation(%union.chan_param_mem* %21, i32 %77)
  %79 = load i32, i32* %18, align 4
  switch i32 %79, label %84 [
    i32 130, label %80
    i32 129, label %81
    i32 128, label %81
    i32 131, label %83
  ]

80:                                               ; preds = %68
  br label %85

81:                                               ; preds = %68, %68
  %82 = call i32 @ipu_ch_param_set_burst_size(%union.chan_param_mem* %21, i32 16)
  br label %85

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %68, %83
  br label %85

85:                                               ; preds = %84, %81, %80
  %86 = load %struct.ipu*, %struct.ipu** %20, align 8
  %87 = getelementptr inbounds %struct.ipu, %struct.ipu* %86, i32 0, i32 0
  %88 = load i64, i64* %22, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @dma_param_addr(i32 %90)
  %92 = bitcast %union.chan_param_mem* %21 to i32*
  %93 = call i32 @ipu_write_param_mem(i32 %91, i32* %92, i32 10)
  %94 = load %struct.ipu*, %struct.ipu** %20, align 8
  %95 = load i32, i32* @IPU_CHA_DB_MODE_SEL, align 4
  %96 = call i32 @idmac_read_ipureg(%struct.ipu* %94, i32 %95)
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %85
  %100 = load i32, i32* %18, align 4
  %101 = zext i32 %100 to i64
  %102 = shl i64 1, %101
  %103 = load i32, i32* %23, align 4
  %104 = sext i32 %103 to i64
  %105 = or i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %23, align 4
  br label %116

107:                                              ; preds = %85
  %108 = load i32, i32* %18, align 4
  %109 = zext i32 %108 to i64
  %110 = shl i64 1, %109
  %111 = xor i64 %110, -1
  %112 = load i32, i32* %23, align 4
  %113 = sext i32 %112 to i64
  %114 = and i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %23, align 4
  br label %116

116:                                              ; preds = %107, %99
  %117 = load %struct.ipu*, %struct.ipu** %20, align 8
  %118 = load i32, i32* %23, align 4
  %119 = load i32, i32* @IPU_CHA_DB_MODE_SEL, align 4
  %120 = call i32 @idmac_write_ipureg(%struct.ipu* %117, i32 %118, i32 %119)
  %121 = load i32, i32* @IPU_CHANNEL_READY, align 4
  %122 = load %struct.idmac_channel*, %struct.idmac_channel** %10, align 8
  %123 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load %struct.ipu*, %struct.ipu** %20, align 8
  %125 = getelementptr inbounds %struct.ipu, %struct.ipu* %124, i32 0, i32 0
  %126 = load i64, i64* %22, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %116, %61, %44
  %129 = load i32, i32* %9, align 4
  ret i32 %129
}

declare dso_local %struct.idmac* @to_idmac(i32) #1

declare dso_local %struct.ipu* @to_ipu(%struct.idmac*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bytes_per_pixel(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ipu_ch_param_set_size(%union.chan_param_mem*, i32, i32, i32, i32) #1

declare dso_local i32 @ipu_ch_param_set_buffer(%union.chan_param_mem*, i32, i32) #1

declare dso_local i32 @ipu_ch_param_set_rotation(%union.chan_param_mem*, i32) #1

declare dso_local i32 @ipu_ch_param_set_burst_size(%union.chan_param_mem*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_write_param_mem(i32, i32*, i32) #1

declare dso_local i32 @dma_param_addr(i32) #1

declare dso_local i32 @idmac_read_ipureg(%struct.ipu*, i32) #1

declare dso_local i32 @idmac_write_ipureg(%struct.ipu*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
