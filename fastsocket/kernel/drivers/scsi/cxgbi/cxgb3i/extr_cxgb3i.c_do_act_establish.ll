; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_do_act_establish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_do_act_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cxgbi_sock = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.cpl_act_establish = type { i32, i32, i32, i32 }

@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"atid 0x%x,tid 0x%x, csk 0x%p,%u,0x%lx, isn %u.\0A\00", align 1
@CTPF_HAS_TID = common dso_local global i32 0, align 4
@t3_client = common dso_local global i32 0, align 4
@CTP_ACTIVE_OPEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"csk 0x%p,%u,0x%lx,%u, got EST.\0A\00", align 1
@cxgb3i_rcv_win = common dso_local global i32 0, align 4
@M_RCV_BUFSIZ = common dso_local global i32 0, align 4
@CTPF_ACTIVE_CLOSE_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3cdev*, %struct.sk_buff*, i8*)* @do_act_establish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_act_establish(%struct.t3cdev* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cxgbi_sock*, align 8
  %8 = alloca %struct.cpl_act_establish*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.cxgbi_sock*
  store %struct.cxgbi_sock* %13, %struct.cxgbi_sock** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.cpl_act_establish* @cplhdr(%struct.sk_buff* %14)
  store %struct.cpl_act_establish* %15, %struct.cpl_act_establish** %8, align 8
  %16 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %8, align 8
  %17 = call i32 @GET_TID(%struct.cpl_act_establish* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %8, align 8
  %19 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  %22 = call i32 @G_PASS_OPEN_TID(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %8, align 8
  %24 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohl(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %35 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %36 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %39 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @log_debug(i32 %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, %struct.cxgbi_sock* %34, i64 %37, i32 %40, i32 %41)
  %43 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %44 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %43)
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %46 = load i32, i32* @CTPF_HAS_TID, align 4
  %47 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %50 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %52 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %51, i32 0, i32 10
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @cxgb3_insert_tid(i32 %55, i32* @t3_client, %struct.cxgbi_sock* %56, i32 %57)
  %59 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %60 = call i32 @free_atid(%struct.cxgbi_sock* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohs(i32 %63)
  %65 = call i32 @G_QNUM(i32 %64)
  %66 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %67 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 8
  %68 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %69 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %68, i32 0, i32 2
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %72 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %3
  %77 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %78 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %77, i32 0, i32 8
  %79 = call i32 @del_timer(%struct.TYPE_4__* %78)
  %80 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %81 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %80, i32 0, i32 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %76, %3
  %84 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %85 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CTP_ACTIVE_OPEN, align 8
  %88 = icmp ne i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %83
  %93 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %94 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %95 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %98 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %101 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_sock* %93, i64 %96, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %92, %83
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %107 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  %108 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %109 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %108, i32 0, i32 4
  store i32 %105, i32* %109, align 4
  %110 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %111 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %110, i32 0, i32 6
  store i32 %105, i32* %111, align 4
  %112 = load i32, i32* @cxgb3i_rcv_win, align 4
  %113 = load i32, i32* @M_RCV_BUFSIZ, align 4
  %114 = shl i32 %113, 10
  %115 = icmp sgt i32 %112, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %104
  %117 = load i32, i32* @cxgb3i_rcv_win, align 4
  %118 = load i32, i32* @M_RCV_BUFSIZ, align 4
  %119 = shl i32 %118, 10
  %120 = sub nsw i32 %117, %119
  %121 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %122 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %116, %104
  %126 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %127 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %8, align 8
  %128 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ntohl(i32 %129)
  %131 = load %struct.cpl_act_establish*, %struct.cpl_act_establish** %8, align 8
  %132 = getelementptr inbounds %struct.cpl_act_establish, %struct.cpl_act_establish* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ntohs(i32 %133)
  %135 = call i32 @cxgbi_sock_established(%struct.cxgbi_sock* %126, i32 %130, i32 %134)
  %136 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %137 = load i32, i32* @CTPF_ACTIVE_CLOSE_NEEDED, align 4
  %138 = call i32 @cxgbi_sock_flag(%struct.cxgbi_sock* %136, i32 %137)
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %125
  %142 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %143 = call i32 @send_abort_req(%struct.cxgbi_sock* %142)
  br label %155

144:                                              ; preds = %125
  %145 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %146 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %145, i32 0, i32 3
  %147 = call i64 @skb_queue_len(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %151 = call i32 @push_tx_frames(%struct.cxgbi_sock* %150, i32 1)
  br label %152

152:                                              ; preds = %149, %144
  %153 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %154 = call i32 @cxgbi_conn_tx_open(%struct.cxgbi_sock* %153)
  br label %155

155:                                              ; preds = %152, %141
  %156 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %157 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %156, i32 0, i32 2
  %158 = call i32 @spin_unlock_bh(i32* %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = call i32 @__kfree_skb(%struct.sk_buff* %159)
  ret i32 0
}

declare dso_local %struct.cpl_act_establish* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_act_establish*) #1

declare dso_local i32 @G_PASS_OPEN_TID(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @log_debug(i32, i8*, i32, i32, %struct.cxgbi_sock*, i64, i32, i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgb3_insert_tid(i32, i32*, %struct.cxgbi_sock*, i32) #1

declare dso_local i32 @free_atid(%struct.cxgbi_sock*) #1

declare dso_local i32 @G_QNUM(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @del_timer(%struct.TYPE_4__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_info(i8*, %struct.cxgbi_sock*, i64, i32, i32) #1

declare dso_local i32 @cxgbi_sock_established(%struct.cxgbi_sock*, i32, i32) #1

declare dso_local i32 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @send_abort_req(%struct.cxgbi_sock*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @push_tx_frames(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_conn_tx_open(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
