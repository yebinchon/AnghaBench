; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.device = type { i32 }
%struct.i2400m_l3l4_hdr = type { i32 }
%struct.i2400m_report_hook_args = type { i64, %struct.i2400m_l3l4_hdr*, %struct.sk_buff* }

@.str = private unnamed_addr constant [39 x i8] c"HW BUG? device sent a bad message: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s 0x%04x: %zu bytes\0A\00", align 1
@I2400M_MT_REPORT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CMD/SET/GET\00", align 1
@i2400m_report_hook_work = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"error sending report to userspace: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.sk_buff*, i8*, i64)* @i2400m_rx_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_rx_ctl(%struct.i2400m* %0, %struct.sk_buff* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2400m_report_hook_args, align 8
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %15 = call %struct.device* @i2400m_dev(%struct.i2400m* %14)
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.i2400m_l3l4_hdr*
  store %struct.i2400m_l3l4_hdr* %17, %struct.i2400m_l3l4_hdr** %11, align 8
  %18 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %19 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @i2400m_msg_size_check(%struct.i2400m* %18, %struct.i2400m_l3l4_hdr* %19, i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.device*, %struct.device** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %105

28:                                               ; preds = %4
  %29 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  %30 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @I2400M_MT_REPORT_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %40 = load i32, i32* %12, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @d_printf(i32 1, %struct.device* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %39, i32 %40, i64 %41)
  %43 = load %struct.device*, %struct.device** %10, align 8
  %44 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @d_dump(i32 2, %struct.device* %43, %struct.i2400m_l3l4_hdr* %44, i64 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @I2400M_MT_REPORT_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %99

51:                                               ; preds = %28
  %52 = getelementptr inbounds %struct.i2400m_report_hook_args, %struct.i2400m_report_hook_args* %13, i32 0, i32 0
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %52, align 8
  %54 = getelementptr inbounds %struct.i2400m_report_hook_args, %struct.i2400m_report_hook_args* %13, i32 0, i32 1
  %55 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  store %struct.i2400m_l3l4_hdr* %55, %struct.i2400m_l3l4_hdr** %54, align 8
  %56 = getelementptr inbounds %struct.i2400m_report_hook_args, %struct.i2400m_report_hook_args* %13, i32 0, i32 2
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %56, align 8
  %58 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %59 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  br label %106

66:                                               ; preds = %51
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @skb_get(%struct.sk_buff* %67)
  %69 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %70 = load i32, i32* @i2400m_report_hook_work, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @i2400m_queue_work(%struct.i2400m* %69, i32 %70, i32 %71, %struct.i2400m_report_hook_args* %13, i32 24)
  %73 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %74 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %80 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %79, i32 0, i32 2
  %81 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i32 @wimax_msg(i32* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.i2400m_l3l4_hdr* %81, i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %66
  %86 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %87 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %86, i32 0, i32 2
  %88 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i32 @wimax_msg(i32* %87, i8* null, %struct.i2400m_l3l4_hdr* %88, i64 %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load %struct.device*, %struct.device** %10, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %85
  br label %104

99:                                               ; preds = %28
  %100 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @i2400m_rx_ctl_ack(%struct.i2400m* %100, i8* %101, i64 %102)
  br label %104

104:                                              ; preds = %99, %98
  br label %105

105:                                              ; preds = %104, %24
  br label %106

106:                                              ; preds = %105, %65
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @i2400m_msg_size_check(%struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i8*, i32, i64) #1

declare dso_local i32 @d_dump(i32, %struct.device*, %struct.i2400m_l3l4_hdr*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @i2400m_queue_work(%struct.i2400m*, i32, i32, %struct.i2400m_report_hook_args*, i32) #1

declare dso_local i32 @wimax_msg(i32*, i8*, %struct.i2400m_l3l4_hdr*, i64, i32) #1

declare dso_local i32 @i2400m_rx_ctl_ack(%struct.i2400m*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
