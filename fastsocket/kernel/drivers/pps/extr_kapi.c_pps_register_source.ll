; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pps/extr_kapi.c_pps_register_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pps/extr_kapi.c_pps_register_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_device = type { i32, i32, i32, %struct.pps_source_info, %struct.TYPE_2__ }
%struct.pps_source_info = type { i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s: unsupported default parameters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PPS_TSFMT_TSPEC = common dso_local global i32 0, align 4
@PPS_TSFMT_NTPFP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: unspecified time format\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PPS_API_VERS = common dso_local global i32 0, align 4
@PPS_ECHOASSERT = common dso_local global i32 0, align 4
@PPS_ECHOCLEAR = common dso_local global i32 0, align 4
@pps_echo_client_default = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: unable to create char device\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"new PPS source %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: unable to register source\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pps_device* @pps_register_source(%struct.pps_source_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pps_device*, align 8
  %4 = alloca %struct.pps_source_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pps_device*, align 8
  %7 = alloca i32, align 4
  store %struct.pps_source_info* %0, %struct.pps_source_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pps_source_info*, %struct.pps_source_info** %4, align 8
  %9 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.pps_source_info*, %struct.pps_source_info** %4, align 8
  %17 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %108

22:                                               ; preds = %2
  %23 = load %struct.pps_source_info*, %struct.pps_source_info** %4, align 8
  %24 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PPS_TSFMT_TSPEC, align 4
  %27 = load i32, i32* @PPS_TSFMT_NTPFP, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.pps_source_info*, %struct.pps_source_info** %4, align 8
  %33 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %108

38:                                               ; preds = %22
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.pps_device* @kzalloc(i32 40, i32 %39)
  store %struct.pps_device* %40, %struct.pps_device** %6, align 8
  %41 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %42 = icmp eq %struct.pps_device* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %108

46:                                               ; preds = %38
  %47 = load i32, i32* @PPS_API_VERS, align 4
  %48 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %49 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %53 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %56 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %55, i32 0, i32 3
  %57 = load %struct.pps_source_info*, %struct.pps_source_info** %4, align 8
  %58 = bitcast %struct.pps_source_info* %56 to i8*
  %59 = bitcast %struct.pps_source_info* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %61 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PPS_ECHOASSERT, align 4
  %65 = load i32, i32* @PPS_ECHOCLEAR, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %46
  %70 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %71 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32*, i32** @pps_echo_client_default, align 8
  %77 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %78 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %78, i32 0, i32 2
  store i32* %76, i32** %79, align 8
  br label %80

80:                                               ; preds = %75, %69, %46
  %81 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %82 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %81, i32 0, i32 2
  %83 = call i32 @init_waitqueue_head(i32* %82)
  %84 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %85 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %84, i32 0, i32 1
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %88 = call i32 @pps_register_cdev(%struct.pps_device* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load %struct.pps_source_info*, %struct.pps_source_info** %4, align 8
  %93 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %105

96:                                               ; preds = %80
  %97 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %98 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.pps_source_info*, %struct.pps_source_info** %4, align 8
  %101 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_info(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  store %struct.pps_device* %104, %struct.pps_device** %3, align 8
  br label %113

105:                                              ; preds = %91
  %106 = load %struct.pps_device*, %struct.pps_device** %6, align 8
  %107 = call i32 @kfree(%struct.pps_device* %106)
  br label %108

108:                                              ; preds = %105, %43, %31, %15
  %109 = load %struct.pps_source_info*, %struct.pps_source_info** %4, align 8
  %110 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  store %struct.pps_device* null, %struct.pps_device** %3, align 8
  br label %113

113:                                              ; preds = %108, %96
  %114 = load %struct.pps_device*, %struct.pps_device** %3, align 8
  ret %struct.pps_device* %114
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.pps_device* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pps_register_cdev(%struct.pps_device*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.pps_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
