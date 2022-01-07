; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_control.c_i2400m_get_device_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_control.c_i2400m_get_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.i2400m = type { i32 }
%struct.device = type { i32 }
%struct.i2400m_l3l4_hdr = type { i32, i8*, i64, i8* }
%struct.i2400m_tlv_hdr = type { i32 }
%struct.i2400m_tlv_detailed_device_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I2400M_MT_GET_DEVICE_INFO = common dso_local global i32 0, align 4
@I2400M_L3L4_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to issue 'get device info' command: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"'get device info' (0x%04x) command failed: %d - %s\0A\00", align 1
@I2400M_TLV_DETAILED_DEVICE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"GET DEVICE INFO: detailed device info TLV not found (0x%04x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @i2400m_get_device_info(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %8 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2400m_tlv_hdr*, align 8
  %11 = alloca %struct.i2400m_tlv_detailed_device_info*, align 8
  %12 = alloca [32 x i8], align 16
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %14 = call %struct.device* @i2400m_dev(%struct.i2400m* %13)
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.sk_buff* @ERR_PTR(i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %6, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.i2400m_l3l4_hdr* @kzalloc(i32 32, i32 %18)
  store %struct.i2400m_l3l4_hdr* %19, %struct.i2400m_l3l4_hdr** %7, align 8
  %20 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %7, align 8
  %21 = icmp eq %struct.i2400m_l3l4_hdr* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %92

23:                                               ; preds = %1
  %24 = load i32, i32* @I2400M_MT_GET_DEVICE_INFO, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %7, align 8
  %29 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @I2400M_L3L4_VERSION, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %7, align 8
  %33 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %35 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %7, align 8
  %36 = call %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m* %34, %struct.i2400m_l3l4_hdr* %35, i32 32)
  store %struct.sk_buff* %36, %struct.sk_buff** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i64 @IS_ERR(%struct.sk_buff* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %23
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i32 @PTR_ERR(%struct.sk_buff* %42)
  %44 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %89

45:                                               ; preds = %23
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call %struct.i2400m_l3l4_hdr* @wimax_msg_data_len(%struct.sk_buff* %46, i64* %9)
  store %struct.i2400m_l3l4_hdr* %47, %struct.i2400m_l3l4_hdr** %8, align 8
  %48 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %8, align 8
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %50 = call i32 @i2400m_msg_check_status(%struct.i2400m_l3l4_hdr* %48, i8* %49, i32 32)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load i32, i32* @I2400M_MT_GET_DEVICE_INFO, align 4
  %56 = load i32, i32* %4, align 4
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %58 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i8* %57)
  br label %95

59:                                               ; preds = %45
  %60 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %61 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %8, align 8
  %62 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %64, 32
  %66 = load i32, i32* @I2400M_TLV_DETAILED_DEVICE_INFO, align 4
  %67 = call %struct.i2400m_tlv_hdr* @i2400m_tlv_find(%struct.i2400m* %60, i32 %63, i64 %65, i32 %66, i32 4)
  store %struct.i2400m_tlv_hdr* %67, %struct.i2400m_tlv_hdr** %10, align 8
  %68 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %10, align 8
  %69 = icmp eq %struct.i2400m_tlv_hdr* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load i32, i32* @I2400M_TLV_DETAILED_DEVICE_INFO, align 4
  %73 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %94

76:                                               ; preds = %59
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load %struct.i2400m_tlv_hdr*, %struct.i2400m_tlv_hdr** %10, align 8
  %79 = bitcast %struct.i2400m_tlv_hdr* %78 to i8*
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = ptrtoint i8* %79 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @skb_pull(%struct.sk_buff* %77, i32 %87)
  br label %89

89:                                               ; preds = %76, %40
  %90 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %7, align 8
  %91 = call i32 @kfree(%struct.i2400m_l3l4_hdr* %90)
  br label %92

92:                                               ; preds = %89, %22
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %93, %struct.sk_buff** %2, align 8
  br label %102

94:                                               ; preds = %70
  br label %95

95:                                               ; preds = %94, %53
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  %98 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %7, align 8
  %99 = call i32 @kfree(%struct.i2400m_l3l4_hdr* %98)
  %100 = load i32, i32* %4, align 4
  %101 = call %struct.sk_buff* @ERR_PTR(i32 %100)
  store %struct.sk_buff* %101, %struct.sk_buff** %2, align 8
  br label %102

102:                                              ; preds = %95, %92
  %103 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %103
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.i2400m_l3l4_hdr* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m*, %struct.i2400m_l3l4_hdr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local %struct.i2400m_l3l4_hdr* @wimax_msg_data_len(%struct.sk_buff*, i64*) #1

declare dso_local i32 @i2400m_msg_check_status(%struct.i2400m_l3l4_hdr*, i8*, i32) #1

declare dso_local %struct.i2400m_tlv_hdr* @i2400m_tlv_find(%struct.i2400m*, i32, i64, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree(%struct.i2400m_l3l4_hdr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
