; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-i2c.c_flexcop_i2c_operation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-i2c.c_flexcop_i2c_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.flexcop_device = type { void (%struct.TYPE_9__*, %struct.flexcop_device*, i32)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)* }

@.str = private unnamed_addr constant [19 x i8] c"r100 before: %08x\0A\00", align 1
@tw_sm_c_100 = common dso_local global i32 0, align 4
@ibi_zero = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FC_MAX_I2C_RETRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"i2c success\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"suffering from an i2c ack_error\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"tried %d times i2c operation, never finished or too many ack errors.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_device*, %struct.TYPE_9__*)* @flexcop_i2c_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_i2c_operation(%struct.flexcop_device* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.flexcop_device*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %17 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %16, i32 0, i32 1
  %18 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)** %17, align 8
  %19 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %20 = load i32, i32* @tw_sm_c_100, align 4
  %21 = call i32 %18(%struct.flexcop_device* %19, i32 %20, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 @ibi_zero)
  %22 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %23 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %22, i32 0, i32 1
  %24 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)** %23, align 8
  %25 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %26 = load i32, i32* @tw_sm_c_100, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = call i32 %24(%struct.flexcop_device* %25, i32 %26, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %27)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %61, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FC_MAX_I2C_RETRIES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %35 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %34, i32 0, i32 0
  %36 = load void (%struct.TYPE_9__*, %struct.flexcop_device*, i32)*, void (%struct.TYPE_9__*, %struct.flexcop_device*, i32)** %35, align 8
  %37 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %38 = load i32, i32* @tw_sm_c_100, align 4
  call void %36(%struct.TYPE_9__* sret %8, %struct.flexcop_device* %37, i32 %38)
  %39 = bitcast %struct.TYPE_9__* %7 to i8*
  %40 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 32, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = bitcast %struct.TYPE_9__* %51 to i8*
  %53 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 32, i1 false)
  %54 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %69

55:                                               ; preds = %45
  br label %60

56:                                               ; preds = %33
  %57 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EREMOTEIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %29

64:                                               ; preds = %29
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i8*, ...) @deb_i2c(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EREMOTEIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %56, %50
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @deb_i2c(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
