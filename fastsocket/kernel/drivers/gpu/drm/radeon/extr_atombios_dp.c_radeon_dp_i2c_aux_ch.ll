; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_i2c_aux_ch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_dp.c_radeon_dp_i2c_aux_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_algo_dp_aux_data* }
%struct.i2c_algo_dp_aux_data = type { i32 }
%struct.radeon_i2c_chan = type { i32 }

@AUX_I2C_READ = common dso_local global i32 0, align 4
@AUX_I2C_WRITE = common dso_local global i32 0, align 4
@MODE_I2C_STOP = common dso_local global i32 0, align 4
@AUX_I2C_MOT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"aux_ch failed %d\0A\00", align 1
@AUX_NATIVE_REPLY_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"aux_ch native nack\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"aux_ch native defer\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"aux_ch invalid native reply 0x%02x\0A\00", align 1
@AUX_I2C_REPLY_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"aux_i2c nack\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"aux_i2c defer\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"aux_i2c invalid reply 0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"aux i2c too many retries, giving up\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_dp_i2c_aux_ch(%struct.i2c_adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i2c_algo_dp_aux_data*, align 8
  %11 = alloca %struct.radeon_i2c_chan*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [5 x i32], align 16
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %20, i32 0, i32 0
  %22 = load %struct.i2c_algo_dp_aux_data*, %struct.i2c_algo_dp_aux_data** %21, align 8
  store %struct.i2c_algo_dp_aux_data* %22, %struct.i2c_algo_dp_aux_data** %10, align 8
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %24 = bitcast %struct.i2c_adapter* %23 to %struct.radeon_i2c_chan*
  store %struct.radeon_i2c_chan* %24, %struct.radeon_i2c_chan** %11, align 8
  %25 = load %struct.i2c_algo_dp_aux_data*, %struct.i2c_algo_dp_aux_data** %10, align 8
  %26 = getelementptr inbounds %struct.i2c_algo_dp_aux_data, %struct.i2c_algo_dp_aux_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  store i32 1, i32* %17, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 129
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i32, i32* @AUX_I2C_READ, align 4
  %33 = shl i32 %32, 4
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 2
  store i32 %33, i32* %34, align 8
  br label %39

35:                                               ; preds = %4
  %36 = load i32, i32* @AUX_I2C_WRITE, align 4
  %37 = shl i32 %36, 4
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 2
  store i32 %37, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MODE_I2C_STOP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @AUX_I2C_MOT, align 4
  %46 = shl i32 %45, 4
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %12, align 4
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  store i32 %51, i32* %52, align 16
  %53 = load i32, i32* %12, align 4
  %54 = ashr i32 %53, 8
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %67 [
    i32 128, label %57
    i32 129, label %63
  ]

57:                                               ; preds = %50
  store i32 5, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = shl i32 %58, 4
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 4
  store i32 %61, i32* %62, align 16
  br label %69

63:                                               ; preds = %50
  store i32 4, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = shl i32 %64, 4
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3
  store i32 %65, i32* %66, align 4
  br label %69

67:                                               ; preds = %50
  store i32 4, i32* %16, align 4
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3
  store i32 48, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %63, %57
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %136, %69
  %71 = load i32, i32* %15, align 4
  %72 = icmp ult i32 %71, 4
  br i1 %72, label %73, label %139

73:                                               ; preds = %70
  %74 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %11, align 8
  %75 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %76 = load i32, i32* %16, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @radeon_process_aux_ch(%struct.radeon_i2c_chan* %74, i32* %75, i32 %76, i32* %77, i32 %78, i32 0, i32* %19)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %136

85:                                               ; preds = %73
  %86 = load i32, i32* %18, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %18, align 4
  %90 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %18, align 4
  store i32 %91, i32* %5, align 4
  br label %143

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* @AUX_NATIVE_REPLY_MASK, align 4
  %96 = and i32 %94, %95
  switch i32 %96, label %105 [
    i32 132, label %97
    i32 130, label %98
    i32 131, label %102
  ]

97:                                               ; preds = %93
  br label %110

98:                                               ; preds = %93
  %99 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @EREMOTEIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %143

102:                                              ; preds = %93
  %103 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %104 = call i32 @udelay(i32 400)
  br label %136

105:                                              ; preds = %93
  %106 = load i32, i32* %19, align 4
  %107 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @EREMOTEIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %143

110:                                              ; preds = %97
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* @AUX_I2C_REPLY_MASK, align 4
  %113 = and i32 %111, %112
  switch i32 %113, label %130 [
    i32 135, label %114
    i32 133, label %123
    i32 134, label %127
  ]

114:                                              ; preds = %110
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, 129
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %18, align 4
  store i32 %122, i32* %5, align 4
  br label %143

123:                                              ; preds = %110
  %124 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i32, i32* @EREMOTEIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %143

127:                                              ; preds = %110
  %128 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %129 = call i32 @udelay(i32 400)
  br label %135

130:                                              ; preds = %110
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EREMOTEIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %143

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %102, %84
  %137 = load i32, i32* %15, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %70

139:                                              ; preds = %70
  %140 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %141 = load i32, i32* @EREMOTEIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %139, %130, %123, %121, %105, %98, %88
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @radeon_process_aux_ch(%struct.radeon_i2c_chan*, i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
