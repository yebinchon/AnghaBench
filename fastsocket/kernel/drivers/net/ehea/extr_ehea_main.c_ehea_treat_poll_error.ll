; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_treat_poll_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_treat_poll_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port_res = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ehea_cqe = type { i32 }
%struct.sk_buff = type { i32 }

@EHEA_CQE_STAT_ERR_TCP = common dso_local global i32 0, align 4
@EHEA_CQE_STAT_ERR_IP = common dso_local global i32 0, align 4
@EHEA_CQE_STAT_ERR_CRC = common dso_local global i32 0, align 4
@EHEA_CQE_STAT_FAT_ERR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Critical receive error for QP %d. Resetting port.\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CQE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_port_res*, i32, %struct.ehea_cqe*, i32*, i32*)* @ehea_treat_poll_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_treat_poll_error(%struct.ehea_port_res* %0, i32 %1, %struct.ehea_cqe* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehea_port_res*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ehea_cqe*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.ehea_port_res* %0, %struct.ehea_port_res** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ehea_cqe* %2, %struct.ehea_cqe** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %14 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EHEA_CQE_STAT_ERR_TCP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.ehea_port_res*, %struct.ehea_port_res** %7, align 8
  %21 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %19, %5
  %26 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %27 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EHEA_CQE_STAT_ERR_IP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.ehea_port_res*, %struct.ehea_port_res** %7, align 8
  %34 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %40 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EHEA_CQE_STAT_ERR_CRC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.ehea_port_res*, %struct.ehea_port_res** %7, align 8
  %47 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ehea_port_res*, %struct.ehea_port_res** %7, align 8
  %59 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ehea_port_res*, %struct.ehea_port_res** %7, align 8
  %63 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %67 = call %struct.sk_buff* @get_skb_by_index(i32 %61, i32 %65, %struct.ehea_cqe* %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %12, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %69 = call i32 @dev_kfree_skb(%struct.sk_buff* %68)
  br label %90

70:                                               ; preds = %51
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ehea_port_res*, %struct.ehea_port_res** %7, align 8
  %78 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ehea_port_res*, %struct.ehea_port_res** %7, align 8
  %82 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %86 = call %struct.sk_buff* @get_skb_by_index(i32 %80, i32 %84, %struct.ehea_cqe* %85)
  store %struct.sk_buff* %86, %struct.sk_buff** %12, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %88 = call i32 @dev_kfree_skb(%struct.sk_buff* %87)
  br label %89

89:                                               ; preds = %73, %70
  br label %90

90:                                               ; preds = %89, %54
  %91 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %92 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @EHEA_CQE_STAT_FAT_ERR_MASK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %90
  %98 = load %struct.ehea_port_res*, %struct.ehea_port_res** %7, align 8
  %99 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @netif_msg_rx_err(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  %104 = load %struct.ehea_port_res*, %struct.ehea_port_res** %7, align 8
  %105 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ehea_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %112 = call i32 @ehea_dump(%struct.ehea_cqe* %111, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %103, %97
  %114 = load %struct.ehea_port_res*, %struct.ehea_port_res** %7, align 8
  %115 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ehea_schedule_port_reset(i32 %116)
  store i32 1, i32* %6, align 4
  br label %119

118:                                              ; preds = %90
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %113
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.sk_buff* @get_skb_by_index(i32, i32, %struct.ehea_cqe*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @netif_msg_rx_err(i32) #1

declare dso_local i32 @ehea_error(i8*, i32) #1

declare dso_local i32 @ehea_dump(%struct.ehea_cqe*, i32, i8*) #1

declare dso_local i32 @ehea_schedule_port_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
