; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda829x_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda8290.c_tda829x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.tuner_i2c_props = type { i32, %struct.i2c_adapter* }

@__const.tda829x_probe.easy_mode_b = private unnamed_addr constant [2 x i8] c"\01\02", align 1
@__const.tda829x_probe.easy_mode_g = private unnamed_addr constant [2 x i8] c"\01\04", align 1
@__const.tda829x_probe.restore_9886 = private unnamed_addr constant [3 x i8] c"\00\D60", align 1
@ENODEV = common dso_local global i32 0, align 4
@PROBE_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda829x_probe(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tuner_i2c_props, align 8
  %7 = alloca [2 x i8], align 1
  %8 = alloca [2 x i8], align 1
  %9 = alloca [2 x i8], align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [8 x i8], align 1
  %14 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %6, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %6, i32 0, i32 1
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %17, align 8
  %19 = bitcast [2 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %19, i8 0, i64 2, i1 false)
  %20 = bitcast [2 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda829x_probe.easy_mode_b, i32 0, i32 0), i64 2, i1 false)
  %21 = bitcast [2 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda829x_probe.easy_mode_g, i32 0, i32 0), i64 2, i1 false)
  %22 = bitcast [3 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.tda829x_probe.restore_9886, i32 0, i32 0), i64 3, i1 false)
  store i8 7, i8* %11, align 1
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %25 = call i32 @tuner_i2c_xfer_send_recv(%struct.tuner_i2c_props* %6, i8* %23, i32 1, i8* %24, i32 8)
  store i32 1, i32* %14, align 4
  br label %26

26:                                               ; preds = %41, %2
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %44

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %26

44:                                               ; preds = %39, %26
  %45 = load i32, i32* %14, align 4
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %82

50:                                               ; preds = %44
  %51 = call i64 @tda8290_probe(%struct.tuner_i2c_props* %6)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = call i64 @tda8295_probe(%struct.tuner_i2c_props* %6)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50
  store i32 0, i32* %3, align 4
  br label %82

57:                                               ; preds = %53
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %59 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %6, i8* %58, i32 2)
  %60 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %61 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %6, i8* %60, i32 2)
  %62 = call i32 @tuner_i2c_xfer_send_recv(%struct.tuner_i2c_props* %6, i8* %11, i32 1, i8* %12, i32 1)
  %63 = load i8, i8* %12, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %68 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %6, i8* %67, i32 2)
  %69 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %70 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %6, i8* %69, i32 2)
  %71 = call i32 @tuner_i2c_xfer_send_recv(%struct.tuner_i2c_props* %6, i8* %11, i32 1, i8* %12, i32 1)
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 123
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %82

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %57
  %78 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %79 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %6, i8* %78, i32 3)
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %75, %56, %47
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tuner_i2c_xfer_send_recv(%struct.tuner_i2c_props*, i8*, i32, i8*, i32) #2

declare dso_local i64 @tda8290_probe(%struct.tuner_i2c_props*) #2

declare dso_local i64 @tda8295_probe(%struct.tuner_i2c_props*) #2

declare dso_local i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
