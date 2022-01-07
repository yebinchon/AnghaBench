; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_act_open_rpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_act_open_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.cxgbi_sock = type { i32, %struct.TYPE_10__, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cpl_act_open_rpl = type { i32 }
%struct.cxgb4_lld_info = type { %struct.tid_info* }
%struct.tid_info = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"NO matching conn. atid %u, tid %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"%pI4:%u-%pI4:%u, atid %u,%u, status %u, csk 0x%p,%u,0x%lx.\0A\00", align 1
@CPL_ERR_RTX_NEG_ADVICE = common dso_local global i32 0, align 4
@CPL_ERR_TCAM_FULL = common dso_local global i32 0, align 4
@CPL_ERR_CONN_EXIST = common dso_local global i32 0, align 4
@CPL_ERR_ARP_MISS = common dso_local global i32 0, align 4
@csk_act_open_retry_timer = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*, %struct.sk_buff*)* @do_act_open_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_act_open_rpl(%struct.cxgbi_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.cpl_act_open_rpl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxgb4_lld_info*, align 8
  %11 = alloca %struct.tid_info*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cpl_act_open_rpl*
  store %struct.cpl_act_open_rpl* %15, %struct.cpl_act_open_rpl** %6, align 8
  %16 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %6, align 8
  %17 = call i32 @GET_TID(%struct.cpl_act_open_rpl* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %6, align 8
  %19 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  %22 = call i32 @GET_AOPEN_ATID(i32 %21)
  %23 = call i32 @GET_TID_TID(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %6, align 8
  %25 = getelementptr inbounds %struct.cpl_act_open_rpl, %struct.cpl_act_open_rpl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = call i32 @GET_AOPEN_STATUS(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %30 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %29)
  store %struct.cxgb4_lld_info* %30, %struct.cxgb4_lld_info** %10, align 8
  %31 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %10, align 8
  %32 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %31, i32 0, i32 0
  %33 = load %struct.tid_info*, %struct.tid_info** %32, align 8
  store %struct.tid_info* %33, %struct.tid_info** %11, align 8
  %34 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.cxgbi_sock* @lookup_atid(%struct.tid_info* %34, i32 %35)
  store %struct.cxgbi_sock* %36, %struct.cxgbi_sock** %5, align 8
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %38 = icmp ne %struct.cxgbi_sock* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  br label %146

47:                                               ; preds = %2
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %49 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %53 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ntohs(i32 %55)
  %57 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %58 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %62 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ntohs(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %70 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %71 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %74 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32* %51, i32 %56, i32* %60, i32 %65, i32 %66, i32 %67, i32 %68, %struct.cxgbi_sock* %69, i32 %72, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @CPL_ERR_RTX_NEG_ADVICE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %47
  br label %146

81:                                               ; preds = %47
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @CPL_ERR_TCAM_FULL, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @CPL_ERR_CONN_EXIST, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @CPL_ERR_ARP_MISS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %10, align 8
  %98 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %97, i32 0, i32 0
  %99 = load %struct.tid_info*, %struct.tid_info** %98, align 8
  %100 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %101 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.cpl_act_open_rpl*, %struct.cpl_act_open_rpl** %6, align 8
  %104 = call i32 @GET_TID(%struct.cpl_act_open_rpl* %103)
  %105 = call i32 @cxgb4_remove_tid(%struct.tid_info* %99, i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %96, %92, %88, %84, %81
  %107 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %108 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %107)
  %109 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %110 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %109, i32 0, i32 0
  %111 = call i32 @spin_lock_bh(i32* %110)
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @CPL_ERR_CONN_EXIST, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %106
  %116 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %117 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @csk_act_open_retry_timer, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %115
  %123 = load i64, i64* @csk_act_open_retry_timer, align 8
  %124 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %125 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i64 %123, i64* %126, align 8
  %127 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %128 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %127, i32 0, i32 1
  %129 = load i64, i64* @jiffies, align 8
  %130 = load i32, i32* @HZ, align 4
  %131 = sdiv i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %129, %132
  %134 = call i32 @mod_timer(%struct.TYPE_10__* %128, i64 %133)
  br label %140

135:                                              ; preds = %115, %106
  %136 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @act_open_rpl_status_to_errno(i32 %137)
  %139 = call i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock* %136, i32 %138)
  br label %140

140:                                              ; preds = %135, %122
  %141 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %142 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %141, i32 0, i32 0
  %143 = call i32 @spin_unlock_bh(i32* %142)
  %144 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %145 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %144)
  br label %146

146:                                              ; preds = %140, %80, %43
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = call i32 @__kfree_skb(%struct.sk_buff* %147)
  ret void
}

declare dso_local i32 @GET_TID(%struct.cpl_act_open_rpl*) #1

declare dso_local i32 @GET_TID_TID(i32) #1

declare dso_local i32 @GET_AOPEN_ATID(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @GET_AOPEN_STATUS(i32) #1

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local %struct.cxgbi_sock* @lookup_atid(%struct.tid_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32*, i32, i32*, i32, i32, i32, i32, %struct.cxgbi_sock*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @cxgb4_remove_tid(%struct.tid_info*, i32, i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @act_open_rpl_status_to_errno(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
