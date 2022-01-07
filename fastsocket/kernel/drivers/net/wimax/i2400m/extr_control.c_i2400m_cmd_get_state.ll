; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_control.c_i2400m_cmd_get_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_control.c_i2400m_cmd_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.i2400m_l3l4_hdr = type { i8*, i64, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I2400M_MT_GET_STATE = common dso_local global i32 0, align 4
@I2400M_L3L4_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to issue 'get state' command: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"'get state' (0x%04x) command failed: %d - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"GET STATE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_cmd_get_state(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %7 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [32 x i8], align 16
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %10 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %11 = call %struct.device* @i2400m_dev(%struct.i2400m* %10)
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.i2400m_l3l4_hdr* @kzalloc(i32 24, i32 %14)
  store %struct.i2400m_l3l4_hdr* %15, %struct.i2400m_l3l4_hdr** %6, align 8
  %16 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %17 = icmp eq %struct.i2400m_l3l4_hdr* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %69

19:                                               ; preds = %1
  %20 = load i32, i32* @I2400M_MT_GET_STATE, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %23 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @I2400M_L3L4_VERSION, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %29 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %31 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %32 = call %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m* %30, %struct.i2400m_l3l4_hdr* %31, i32 24)
  store %struct.sk_buff* %32, %struct.sk_buff** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i64 @IS_ERR(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %19
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @PTR_ERR(%struct.sk_buff* %38)
  %40 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @PTR_ERR(%struct.sk_buff* %41)
  store i32 %42, i32* %3, align 4
  br label %66

43:                                               ; preds = %19
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call %struct.i2400m_l3l4_hdr* @wimax_msg_data_len(%struct.sk_buff* %44, i64* %8)
  store %struct.i2400m_l3l4_hdr* %45, %struct.i2400m_l3l4_hdr** %7, align 8
  %46 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %7, align 8
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %48 = call i32 @i2400m_msg_check_status(%struct.i2400m_l3l4_hdr* %46, i8* %47, i32 32)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* @I2400M_MT_GET_STATE, align 4
  %54 = load i32, i32* %3, align 4
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %56 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i8* %55)
  br label %65

57:                                               ; preds = %43
  %58 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %59 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = sub i64 %60, 24
  %62 = call i32 @i2400m_report_state_hook(%struct.i2400m* %58, %struct.i2400m_l3l4_hdr* %59, i64 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @kfree_skb(%struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %57, %51
  br label %66

66:                                               ; preds = %65, %36
  %67 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %6, align 8
  %68 = call i32 @kfree(%struct.i2400m_l3l4_hdr* %67)
  br label %69

69:                                               ; preds = %66, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local %struct.i2400m_l3l4_hdr* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m*, %struct.i2400m_l3l4_hdr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local %struct.i2400m_l3l4_hdr* @wimax_msg_data_len(%struct.sk_buff*, i64*) #1

declare dso_local i32 @i2400m_msg_check_status(%struct.i2400m_l3l4_hdr*, i8*, i32) #1

declare dso_local i32 @i2400m_report_state_hook(%struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.i2400m_l3l4_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
