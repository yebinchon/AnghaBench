; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_imon_ir_change_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_imon_ir_change_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.imon_context* }
%struct.imon_context = type { i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@__const.imon_ir_change_protocol.ir_proto_packet = private unnamed_addr constant [8 x i8] c"\00\00\00\00\00\00\00\86", align 1
@.str = private unnamed_addr constant [77 x i8] c"Looks like you're trying to use an IR protocol this device does not support\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Configuring IR receiver for MCE protocol\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Configuring IR receiver for iMON protocol\0A\00", align 1
@pad_stabilize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"PAD stabilize functionality disabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Unsupported IR protocol specified, overriding to iMON IR protocol\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @imon_ir_change_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imon_ir_change_protocol(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.imon_context*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca [8 x i8], align 1
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 1
  %11 = load %struct.imon_context*, %struct.imon_context** %10, align 8
  store %struct.imon_context* %11, %struct.imon_context** %6, align 8
  %12 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %13 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %12, i32 0, i32 3
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = bitcast [8 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.imon_ir_change_protocol.ir_proto_packet, i32 0, i32 0), i64 8, i1 false)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %21 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = call i32 @dev_warn(%struct.device* %26, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %18, %2
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %43 [
    i32 129, label %30
    i32 128, label %34
    i32 130, label %34
  ]

30:                                               ; preds = %28
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  store i8 1, i8* %33, align 1
  br label %52

34:                                               ; preds = %28, %28
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = call i32 @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @pad_stabilize, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = call i32 @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  store i32 130, i32* %4, align 4
  br label %52

43:                                               ; preds = %28
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = call i32 @dev_warn(%struct.device* %44, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* @pad_stabilize, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i32 @dev_dbg(%struct.device* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  store i32 130, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %42, %30
  %53 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %54 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = bitcast [8 x i8]* %8 to i8**
  %57 = call i32 @memcpy(i32 %55, i8** %56, i32 8)
  %58 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %59 = call i32 @send_packet(%struct.imon_context* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %69

63:                                               ; preds = %52
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %66 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.imon_context*, %struct.imon_context** %6, align 8
  %68 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %62
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #2

declare dso_local i32 @memcpy(i32, i8**, i32) #2

declare dso_local i32 @send_packet(%struct.imon_context*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
