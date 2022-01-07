; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_receive_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_receive_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.lbs_private = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LBS_DEB_CS = common dso_local global i32 0, align 4
@IF_CS_READ_LEN = common dso_local global i32 0, align 4
@MRVDRV_ETH_RX_PACKET_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"card data buffer has invalid # of bytes (%d)\0A\00", align 1
@IF_CS_READ = common dso_local global i32 0, align 4
@IF_CS_HOST_STATUS = common dso_local global i32 0, align 4
@IF_CS_BIT_RX = common dso_local global i32 0, align 4
@IF_CS_HOST_INT_CAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.lbs_private*)* @if_cs_receive_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @if_cs_receive_data(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  %6 = load i32, i32* @LBS_DEB_CS, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %9 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IF_CS_READ_LEN, align 4
  %12 = call i32 @if_cs_read16(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %70

29:                                               ; preds = %15
  %30 = load i32, i32* @MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, align 4
  %31 = add nsw i32 %30, 2
  %32 = call %struct.sk_buff* @dev_alloc_skb(i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %3, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %83

36:                                               ; preds = %29
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @skb_put(%struct.sk_buff* %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i32 @skb_reserve(%struct.sk_buff* %40, i32 2)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %5, align 8
  %45 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %46 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IF_CS_READ, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32 @if_cs_read16_rep(i32 %47, i32 %48, i32* %49, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %36
  %59 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IF_CS_READ, align 4
  %63 = call i32 @if_cs_read8(i32 %61, i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %63, i32* %68, align 4
  br label %69

69:                                               ; preds = %58, %36
  br label %70

70:                                               ; preds = %69, %19
  %71 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %72 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IF_CS_HOST_STATUS, align 4
  %75 = load i32, i32* @IF_CS_BIT_RX, align 4
  %76 = call i32 @if_cs_write16(i32 %73, i32 %74, i32 %75)
  %77 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %78 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IF_CS_HOST_INT_CAUSE, align 4
  %81 = load i32, i32* @IF_CS_BIT_RX, align 4
  %82 = call i32 @if_cs_write16(i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %70, %35
  %84 = load i32, i32* @LBS_DEB_CS, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = call i32 @lbs_deb_leave_args(i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %87
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @if_cs_read16(i32, i32) #1

declare dso_local i32 @lbs_pr_err(i8*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @if_cs_read16_rep(i32, i32, i32*, i32) #1

declare dso_local i32 @if_cs_read8(i32, i32) #1

declare dso_local i32 @if_cs_write16(i32, i32, i32) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
