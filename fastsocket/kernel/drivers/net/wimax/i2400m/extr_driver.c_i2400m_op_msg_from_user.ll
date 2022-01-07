; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c_i2400m_op_msg_from_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c_i2400m_op_msg_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32 }
%struct.genl_info = type { i32 }
%struct.i2400m = type { i32 }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"(wimax_dev %p [i2400m %p] msg_buf %p msg_len %zu genl_info %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"(wimax_dev %p [i2400m %p] msg_buf %p msg_len %zu genl_info %p) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wimax_dev*, i8*, i8*, i64, %struct.genl_info*)* @i2400m_op_msg_from_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_op_msg_from_user(%struct.wimax_dev* %0, i8* %1, i8* %2, i64 %3, %struct.genl_info* %4) #0 {
  %6 = alloca %struct.wimax_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.genl_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2400m*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.wimax_dev* %0, %struct.wimax_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.genl_info* %4, %struct.genl_info** %10, align 8
  %15 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %16 = call %struct.i2400m* @wimax_dev_to_i2400m(%struct.wimax_dev* %15)
  store %struct.i2400m* %16, %struct.i2400m** %12, align 8
  %17 = load %struct.i2400m*, %struct.i2400m** %12, align 8
  %18 = call %struct.device* @i2400m_dev(%struct.i2400m* %17)
  store %struct.device* %18, %struct.device** %13, align 8
  %19 = load %struct.device*, %struct.device** %13, align 8
  %20 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %21 = load %struct.i2400m*, %struct.i2400m** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.genl_info*, %struct.genl_info** %10, align 8
  %25 = call i32 @d_fnstart(i32 4, %struct.device* %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %20, %struct.i2400m* %21, i8* %22, i64 %23, %struct.genl_info* %24)
  %26 = load %struct.i2400m*, %struct.i2400m** %12, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m* %26, i8* %27, i64 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %14, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %31 = call i32 @PTR_ERR(%struct.sk_buff* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %33 = call i64 @IS_ERR(%struct.sk_buff* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  br label %41

36:                                               ; preds = %5
  %37 = load %struct.i2400m*, %struct.i2400m** %12, align 8
  %38 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %37, i32 0, i32 0
  %39 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %40 = call i32 @wimax_msg_send(i32* %38, %struct.sk_buff* %39)
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %36, %35
  %42 = load %struct.device*, %struct.device** %13, align 8
  %43 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %44 = load %struct.i2400m*, %struct.i2400m** %12, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.genl_info*, %struct.genl_info** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @d_fnend(i32 4, %struct.device* %42, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), %struct.wimax_dev* %43, %struct.i2400m* %44, i8* %45, i64 %46, %struct.genl_info* %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local %struct.i2400m* @wimax_dev_to_i2400m(%struct.wimax_dev*) #1

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.i2400m*, i8*, i64, %struct.genl_info*) #1

declare dso_local %struct.sk_buff* @i2400m_msg_to_dev(%struct.i2400m*, i8*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @wimax_msg_send(i32*, %struct.sk_buff*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.i2400m*, i8*, i64, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
