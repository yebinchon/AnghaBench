; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_control.c_i2400m_dev_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_control.c_i2400m_dev_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i64 }
%struct.device = type { i32 }
%struct.i2400m_tlv_config_idle_parameters = type { %struct.i2400m_tlv_hdr, i64, i64 }
%struct.i2400m_tlv_hdr = type { i8*, i8* }
%struct.i2400m_tlv_config_idle_timeout = type { %struct.i2400m_tlv_hdr, i64 }
%struct.i2400m_tlv_config_d2h_data_format = type { i32, %struct.i2400m_tlv_hdr }
%struct.i2400m_tlv_config_dl_host_reorder = type { i32, %struct.i2400m_tlv_hdr }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@i2400m_idle_mode_disabled = common dso_local global i64 0, align 8
@I2400M_TLV_CONFIG_IDLE_PARAMETERS = common dso_local global i32 0, align 4
@I2400M_TLV_CONFIG_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@I2400M_TLV_CONFIG_D2H_DATA_FORMAT = common dso_local global i32 0, align 4
@I2400M_TLV_CONFIG_DL_HOST_REORDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to initialize the device: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"(i2400m %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_dev_initialize(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.i2400m_tlv_config_idle_parameters, align 8
  %6 = alloca %struct.i2400m_tlv_config_idle_timeout, align 8
  %7 = alloca %struct.i2400m_tlv_config_d2h_data_format, align 8
  %8 = alloca %struct.i2400m_tlv_config_dl_host_reorder, align 8
  %9 = alloca [9 x %struct.i2400m_tlv_hdr*], align 16
  %10 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %11 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %12 = call %struct.device* @i2400m_dev(%struct.i2400m* %11)
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %15 = call i32 @d_fnstart(i32 3, %struct.device* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %14)
  %16 = load i64, i64* @i2400m_idle_mode_disabled, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %1
  %19 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %20 = call i64 @i2400m_le_v1_3(%struct.i2400m* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i32, i32* @I2400M_TLV_CONFIG_IDLE_PARAMETERS, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = getelementptr inbounds %struct.i2400m_tlv_config_idle_parameters, %struct.i2400m_tlv_config_idle_parameters* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = call i8* @cpu_to_le16(i32 16)
  %28 = getelementptr inbounds %struct.i2400m_tlv_config_idle_parameters, %struct.i2400m_tlv_config_idle_parameters* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = getelementptr inbounds %struct.i2400m_tlv_config_idle_parameters, %struct.i2400m_tlv_config_idle_parameters* %5, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.i2400m_tlv_config_idle_parameters, %struct.i2400m_tlv_config_idle_parameters* %5, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.i2400m_tlv_config_idle_parameters, %struct.i2400m_tlv_config_idle_parameters* %5, i32 0, i32 0
  %33 = load i32, i32* %10, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds [9 x %struct.i2400m_tlv_hdr*], [9 x %struct.i2400m_tlv_hdr*]* %9, i64 0, i64 %35
  store %struct.i2400m_tlv_hdr* %32, %struct.i2400m_tlv_hdr** %36, align 8
  br label %51

37:                                               ; preds = %18
  %38 = load i32, i32* @I2400M_TLV_CONFIG_IDLE_TIMEOUT, align 4
  %39 = call i8* @cpu_to_le16(i32 %38)
  %40 = getelementptr inbounds %struct.i2400m_tlv_config_idle_timeout, %struct.i2400m_tlv_config_idle_timeout* %6, i32 0, i32 0
  %41 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = call i8* @cpu_to_le16(i32 8)
  %43 = getelementptr inbounds %struct.i2400m_tlv_config_idle_timeout, %struct.i2400m_tlv_config_idle_timeout* %6, i32 0, i32 0
  %44 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = getelementptr inbounds %struct.i2400m_tlv_config_idle_timeout, %struct.i2400m_tlv_config_idle_timeout* %6, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.i2400m_tlv_config_idle_timeout, %struct.i2400m_tlv_config_idle_timeout* %6, i32 0, i32 0
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds [9 x %struct.i2400m_tlv_hdr*], [9 x %struct.i2400m_tlv_hdr*]* %9, i64 0, i64 %49
  store %struct.i2400m_tlv_hdr* %46, %struct.i2400m_tlv_hdr** %50, align 8
  br label %51

51:                                               ; preds = %37, %22
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %54 = call i64 @i2400m_ge_v1_4(%struct.i2400m* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = load i32, i32* @I2400M_TLV_CONFIG_D2H_DATA_FORMAT, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = getelementptr inbounds %struct.i2400m_tlv_config_d2h_data_format, %struct.i2400m_tlv_config_d2h_data_format* %7, i32 0, i32 1
  %60 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = call i8* @cpu_to_le16(i32 8)
  %62 = getelementptr inbounds %struct.i2400m_tlv_config_d2h_data_format, %struct.i2400m_tlv_config_d2h_data_format* %7, i32 0, i32 1
  %63 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = getelementptr inbounds %struct.i2400m_tlv_config_d2h_data_format, %struct.i2400m_tlv_config_d2h_data_format* %7, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.i2400m_tlv_config_d2h_data_format, %struct.i2400m_tlv_config_d2h_data_format* %7, i32 0, i32 1
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds [9 x %struct.i2400m_tlv_hdr*], [9 x %struct.i2400m_tlv_hdr*]* %9, i64 0, i64 %68
  store %struct.i2400m_tlv_hdr* %65, %struct.i2400m_tlv_hdr** %69, align 8
  %70 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %71 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %56
  %75 = load i32, i32* @I2400M_TLV_CONFIG_DL_HOST_REORDER, align 4
  %76 = call i8* @cpu_to_le16(i32 %75)
  %77 = getelementptr inbounds %struct.i2400m_tlv_config_dl_host_reorder, %struct.i2400m_tlv_config_dl_host_reorder* %8, i32 0, i32 1
  %78 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = call i8* @cpu_to_le16(i32 8)
  %80 = getelementptr inbounds %struct.i2400m_tlv_config_dl_host_reorder, %struct.i2400m_tlv_config_dl_host_reorder* %8, i32 0, i32 1
  %81 = getelementptr inbounds %struct.i2400m_tlv_hdr, %struct.i2400m_tlv_hdr* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = getelementptr inbounds %struct.i2400m_tlv_config_dl_host_reorder, %struct.i2400m_tlv_config_dl_host_reorder* %8, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = getelementptr inbounds %struct.i2400m_tlv_config_dl_host_reorder, %struct.i2400m_tlv_config_dl_host_reorder* %8, i32 0, i32 1
  %84 = load i32, i32* %10, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds [9 x %struct.i2400m_tlv_hdr*], [9 x %struct.i2400m_tlv_hdr*]* %9, i64 0, i64 %86
  store %struct.i2400m_tlv_hdr* %83, %struct.i2400m_tlv_hdr** %87, align 8
  br label %88

88:                                               ; preds = %74, %56
  br label %89

89:                                               ; preds = %88, %52
  %90 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %91 = getelementptr inbounds [9 x %struct.i2400m_tlv_hdr*], [9 x %struct.i2400m_tlv_hdr*]* %9, i64 0, i64 0
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @i2400m_set_init_config(%struct.i2400m* %90, %struct.i2400m_tlv_hdr** %91, i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %100

97:                                               ; preds = %89
  %98 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %99 = call i32 @i2400m_cmd_get_state(%struct.i2400m* %98)
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %96
  %101 = load i32, i32* %3, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %100
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @d_fnend(i32 3, %struct.device* %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.i2400m* %109, i32 %110)
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i64 @i2400m_le_v1_3(%struct.i2400m*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @i2400m_ge_v1_4(%struct.i2400m*) #1

declare dso_local i32 @i2400m_set_init_config(%struct.i2400m*, %struct.i2400m_tlv_hdr**, i32) #1

declare dso_local i32 @i2400m_cmd_get_state(%struct.i2400m*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
