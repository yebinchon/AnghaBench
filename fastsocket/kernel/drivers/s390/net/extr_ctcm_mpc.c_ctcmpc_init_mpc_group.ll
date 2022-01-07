; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_ctcmpc_init_mpc_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_ctcmpc_init_mpc_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_group = type { %struct.xid2*, i32*, %struct.TYPE_4__*, %struct.th_header*, i64, %struct.TYPE_4__*, i32*, i64, %struct.th_header*, i64, i32 }
%struct.xid2 = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.th_header = type { i32 }
%struct.ctcm_priv = type { %struct.mpc_group*, %struct.xid2* }

@MPC_SETUP = common dso_local global i32 0, align 4
@CTC_DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Enter %s(%p)\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mpcg\00", align 1
@mpcg_state_names = common dso_local global i32 0, align 4
@mpcg_event_names = common dso_local global i32 0, align 4
@MPCG_NR_STATES = common dso_local global i32 0, align 4
@MPCG_NR_EVENTS = common dso_local global i32 0, align 4
@mpcg_fsm = common dso_local global i32 0, align 4
@mpcg_fsm_len = common dso_local global i32 0, align 4
@MPCG_STATE_RESET = common dso_local global i32 0, align 4
@MPC_BUFSIZE_DEFAULT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@TH_HEADER_LENGTH = common dso_local global i32 0, align 4
@thnorm = common dso_local global i8 0, align 1
@XID2_LENGTH = common dso_local global i32 0, align 4
@init_xid = common dso_local global i8 0, align 1
@jiffies = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"VTAM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpc_group* @ctcmpc_init_mpc_group(%struct.ctcm_priv* %0) #0 {
  %2 = alloca %struct.mpc_group*, align 8
  %3 = alloca %struct.ctcm_priv*, align 8
  %4 = alloca %struct.mpc_group*, align 8
  store %struct.ctcm_priv* %0, %struct.ctcm_priv** %3, align 8
  %5 = load i32, i32* @MPC_SETUP, align 4
  %6 = load i32, i32* @CTC_DBF_INFO, align 4
  %7 = load i32, i32* @CTCM_FUNTAIL, align 4
  %8 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %9 = call i32 @CTCM_DBF_TEXT_(i32 %5, i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7, %struct.ctcm_priv* %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mpc_group* @kzalloc(i32 88, i32 %10)
  store %struct.mpc_group* %11, %struct.mpc_group** %4, align 8
  %12 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %13 = icmp eq %struct.mpc_group* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.mpc_group* null, %struct.mpc_group** %2, align 8
  br label %180

15:                                               ; preds = %1
  %16 = load i32, i32* @mpcg_state_names, align 4
  %17 = load i32, i32* @mpcg_event_names, align 4
  %18 = load i32, i32* @MPCG_NR_STATES, align 4
  %19 = load i32, i32* @MPCG_NR_EVENTS, align 4
  %20 = load i32, i32* @mpcg_fsm, align 4
  %21 = load i32, i32* @mpcg_fsm_len, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @init_fsm(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %25 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %24, i32 0, i32 6
  store i32* %23, i32** %25, align 8
  %26 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %27 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %15
  %31 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %32 = call i32 @kfree(%struct.mpc_group* %31)
  store %struct.mpc_group* null, %struct.mpc_group** %2, align 8
  br label %180

33:                                               ; preds = %15
  %34 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %35 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %34, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @MPCG_STATE_RESET, align 4
  %38 = call i32 @fsm_newstate(i32* %36, i32 %37)
  %39 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %40 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %43 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %42, i32 0, i32 10
  %44 = call i32 @fsm_settimer(i32* %41, i32* %43)
  %45 = load i32, i32* @MPC_BUFSIZE_DEFAULT, align 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = load i32, i32* @GFP_DMA, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @__dev_alloc_skb(i32 %45, i32 %48)
  %50 = bitcast i8* %49 to %struct.TYPE_4__*
  %51 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %52 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %51, i32 0, i32 5
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %52, align 8
  %53 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %54 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %53, i32 0, i32 5
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp eq %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %33
  %58 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %59 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @kfree_fsm(i32* %60)
  %62 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %63 = call i32 @kfree(%struct.mpc_group* %62)
  store %struct.mpc_group* null, %struct.mpc_group** %2, align 8
  br label %180

64:                                               ; preds = %33
  %65 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %66 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %65, i32 0, i32 5
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %71 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %70, i32 0, i32 9
  store i64 %69, i64* %71, align 8
  %72 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %73 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.th_header*
  %78 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %79 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %78, i32 0, i32 8
  store %struct.th_header* %77, %struct.th_header** %79, align 8
  %80 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %81 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %80, i32 0, i32 5
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %84 = call i32 @skb_put(%struct.TYPE_4__* %82, i32 %83)
  %85 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %86 = call i32 @memcpy(i32 %84, i8* @thnorm, i32 %85)
  %87 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %88 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %87, i32 0, i32 5
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = call i64 @skb_tail_pointer(%struct.TYPE_4__* %89)
  %91 = inttoptr i64 %90 to %struct.xid2*
  %92 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %93 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %92, i32 0, i32 0
  store %struct.xid2* %91, %struct.xid2** %93, align 8
  %94 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %95 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %94, i32 0, i32 5
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* @XID2_LENGTH, align 4
  %98 = call i32 @skb_put(%struct.TYPE_4__* %96, i32 %97)
  %99 = load i32, i32* @XID2_LENGTH, align 4
  %100 = call i32 @memcpy(i32 %98, i8* @init_xid, i32 %99)
  %101 = load i32, i32* @jiffies, align 4
  %102 = or i32 %101, -1048576
  %103 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %104 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %103, i32 0, i32 0
  %105 = load %struct.xid2*, %struct.xid2** %104, align 8
  %106 = getelementptr inbounds %struct.xid2, %struct.xid2* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 4
  %107 = load i32, i32* @jiffies, align 4
  %108 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %109 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %108, i32 0, i32 0
  %110 = load %struct.xid2*, %struct.xid2** %109, align 8
  %111 = getelementptr inbounds %struct.xid2, %struct.xid2* %110, i32 0, i32 1
  store i32 %107, i32* %111, align 4
  %112 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %113 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %112, i32 0, i32 5
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = call i64 @skb_tail_pointer(%struct.TYPE_4__* %114)
  %116 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %117 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %116, i32 0, i32 7
  store i64 %115, i64* %117, align 8
  %118 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %119 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %118, i32 0, i32 5
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = call i32 @skb_put(%struct.TYPE_4__* %120, i32 4)
  %122 = call i32 @memcpy(i32 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %123 = load i32, i32* @MPC_BUFSIZE_DEFAULT, align 4
  %124 = load i32, i32* @GFP_ATOMIC, align 4
  %125 = load i32, i32* @GFP_DMA, align 4
  %126 = or i32 %124, %125
  %127 = call i8* @__dev_alloc_skb(i32 %123, i32 %126)
  %128 = bitcast i8* %127 to %struct.TYPE_4__*
  %129 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %130 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %129, i32 0, i32 2
  store %struct.TYPE_4__* %128, %struct.TYPE_4__** %130, align 8
  %131 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %132 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = icmp eq %struct.TYPE_4__* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %64
  %136 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %137 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %136, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @kfree_fsm(i32* %138)
  %140 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %141 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %140, i32 0, i32 5
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %142)
  %144 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %145 = call i32 @kfree(%struct.mpc_group* %144)
  store %struct.mpc_group* null, %struct.mpc_group** %2, align 8
  br label %180

146:                                              ; preds = %64
  %147 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %148 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %147, i32 0, i32 2
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %153 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %152, i32 0, i32 4
  store i64 %151, i64* %153, align 8
  %154 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %155 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to %struct.th_header*
  %160 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %161 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %160, i32 0, i32 3
  store %struct.th_header* %159, %struct.th_header** %161, align 8
  %162 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %163 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %162, i32 0, i32 2
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %166 = call i32 @skb_put(%struct.TYPE_4__* %164, i32 %165)
  %167 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %168 = call i32 @memcpy(i32 %166, i8* @thnorm, i32 %167)
  %169 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %170 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %169, i32 0, i32 1
  store i32* null, i32** %170, align 8
  %171 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %172 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %171, i32 0, i32 0
  %173 = load %struct.xid2*, %struct.xid2** %172, align 8
  %174 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %175 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %174, i32 0, i32 1
  store %struct.xid2* %173, %struct.xid2** %175, align 8
  %176 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  %177 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %178 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %177, i32 0, i32 0
  store %struct.mpc_group* %176, %struct.mpc_group** %178, align 8
  %179 = load %struct.mpc_group*, %struct.mpc_group** %4, align 8
  store %struct.mpc_group* %179, %struct.mpc_group** %2, align 8
  br label %180

180:                                              ; preds = %146, %135, %57, %30, %14
  %181 = load %struct.mpc_group*, %struct.mpc_group** %2, align 8
  ret %struct.mpc_group* %181
}

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, %struct.ctcm_priv*) #1

declare dso_local %struct.mpc_group* @kzalloc(i32, i32) #1

declare dso_local i32* @init_fsm(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mpc_group*) #1

declare dso_local i32 @fsm_newstate(i32*, i32) #1

declare dso_local i32 @fsm_settimer(i32*, i32*) #1

declare dso_local i8* @__dev_alloc_skb(i32, i32) #1

declare dso_local i32 @kfree_fsm(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @skb_tail_pointer(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
