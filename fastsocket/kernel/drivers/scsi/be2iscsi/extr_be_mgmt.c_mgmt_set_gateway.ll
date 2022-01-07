; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_set_gateway.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_set_gateway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.iscsi_iface_param_info = type { i32, i32 }
%struct.be_cmd_get_def_gateway_resp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@BE2_IPV4 = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BG_%d : Failed to Get Gateway Addr\0A\00", align 1
@IP_ACTION_DEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"BG_%d : Failed to clear Gateway Addr Set\0A\00", align 1
@IP_ACTION_ADD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"BG_%d : Failed to Set Gateway Addr\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_set_gateway(%struct.beiscsi_hba* %0, %struct.iscsi_iface_param_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.iscsi_iface_param_info*, align 8
  %6 = alloca %struct.be_cmd_get_def_gateway_resp, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.iscsi_iface_param_info* %1, %struct.iscsi_iface_param_info** %5, align 8
  %9 = call i32 @memset(%struct.be_cmd_get_def_gateway_resp* %6, i32 0, i32 8)
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %11 = load i32, i32* @BE2_IPV4, align 4
  %12 = call i32 @mgmt_get_gateway(%struct.beiscsi_hba* %10, i32 %11, %struct.be_cmd_get_def_gateway_resp* %6)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %17 = load i32, i32* @KERN_WARNING, align 4
  %18 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %19 = call i32 @beiscsi_log(%struct.beiscsi_hba* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %67

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, %struct.be_cmd_get_def_gateway_resp* %6, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, %struct.be_cmd_get_def_gateway_resp* %6, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast i64** %30 to i32*
  store i32* %31, i32** %7, align 8
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @IP_ACTION_DEL, align 4
  %35 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mgmt_modify_gateway(%struct.beiscsi_hba* %32, i32* %33, i32 %34, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %43 = load i32, i32* @KERN_WARNING, align 4
  %44 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %45 = call i32 @beiscsi_log(%struct.beiscsi_hba* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %67

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %21
  %49 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %5, align 8
  %50 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %49, i32 0, i32 1
  store i32* %50, i32** %7, align 8
  %51 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @IP_ACTION_ADD, align 4
  %54 = load %struct.iscsi_iface_param_info*, %struct.iscsi_iface_param_info** %5, align 8
  %55 = getelementptr inbounds %struct.iscsi_iface_param_info, %struct.iscsi_iface_param_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mgmt_modify_gateway(%struct.beiscsi_hba* %51, i32* %52, i32 %53, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %62 = load i32, i32* @KERN_WARNING, align 4
  %63 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %64 = call i32 @beiscsi_log(%struct.beiscsi_hba* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %48
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %41, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @memset(%struct.be_cmd_get_def_gateway_resp*, i32, i32) #1

declare dso_local i32 @mgmt_get_gateway(%struct.beiscsi_hba*, i32, %struct.be_cmd_get_def_gateway_resp*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @mgmt_modify_gateway(%struct.beiscsi_hba*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
