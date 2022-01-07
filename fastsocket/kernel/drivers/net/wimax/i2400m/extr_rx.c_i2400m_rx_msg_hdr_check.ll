; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_msg_hdr_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_msg_hdr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.i2400m_msg_hdr = type { i64, i64 }
%struct.device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"RX: HW BUG? message with short header (%zu vs %zu bytes expected)\0A\00", align 1
@I2400M_D2H_MSG_BARKER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"RX: HW BUG? message received with unknown barker 0x%08x (buf_size %zu bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"RX: HW BUG? zero payload packets in message\0A\00", align 1
@I2400M_MAX_PLS_IN_MSG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"RX: HW BUG? message contains more payload than maximum; ignoring.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.i2400m_msg_hdr*, i64)* @i2400m_rx_msg_hdr_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_rx_msg_hdr_check(%struct.i2400m* %0, %struct.i2400m_msg_hdr* %1, i64 %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.i2400m_msg_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.i2400m_msg_hdr* %1, %struct.i2400m_msg_hdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %12 = call %struct.device* @i2400m_dev(%struct.i2400m* %11)
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %13, 16
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %16, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %17, i64 16)
  br label %53

19:                                               ; preds = %3
  %20 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @I2400M_D2H_MSG_BARKER, align 4
  %24 = call i64 @cpu_to_le32(i32 %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @le32_to_cpu(i64 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %32)
  br label %53

34:                                               ; preds = %19
  %35 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %36 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %8, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %53

42:                                               ; preds = %34
  %43 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %44 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @le16_to_cpu(i64 %45)
  %47 = load i64, i64* @I2400M_MAX_PLS_IN_MSG, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  br label %53

52:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %49, %39, %26, %15
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i64 @le16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
