; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_tm_attr_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_tm_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@A_TP_TX_MOD_Q1_Q0_RATE_LIMIT = common dso_local global i32 0, align 4
@A_TP_TM_PIO_ADDR = common dso_local global i32 0, align 4
@A_TP_TM_PIO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%u Kbps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @tm_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm_attr_show(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @to_net_dev(%struct.device* %14)
  %16 = call %struct.port_info* @netdev_priv(i32 %15)
  store %struct.port_info* %16, %struct.port_info** %7, align 8
  %17 = load %struct.port_info*, %struct.port_info** %7, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 0
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %8, align 8
  %20 = load i32, i32* @A_TP_TX_MOD_Q1_Q0_RATE_LIMIT, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 2
  %23 = sub nsw i32 %20, %22
  store i32 %23, i32* %10, align 4
  %24 = call i32 (...) @rtnl_lock()
  %25 = load %struct.adapter*, %struct.adapter** %8, align 8
  %26 = load i32, i32* @A_TP_TM_PIO_ADDR, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @t3_write_reg(%struct.adapter* %25, i32 %26, i32 %27)
  %29 = load %struct.adapter*, %struct.adapter** %8, align 8
  %30 = load i32, i32* @A_TP_TM_PIO_DATA, align 4
  %31 = call i32 @t3_read_reg(%struct.adapter* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = lshr i32 %36, 16
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %3
  %39 = load i32, i32* %9, align 4
  %40 = lshr i32 %39, 8
  %41 = and i32 %40, 255
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 255
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %13, align 4
  br label %64

49:                                               ; preds = %38
  %50 = load %struct.adapter*, %struct.adapter** %8, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 1000
  %56 = load i32, i32* %12, align 4
  %57 = udiv i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = mul i32 %59, %60
  %62 = udiv i32 %61, 125
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %49, %46
  %65 = call i32 (...) @rtnl_unlock()
  %66 = load i32, i32* %13, align 4
  ret i32 %66
}

declare dso_local %struct.port_info* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
