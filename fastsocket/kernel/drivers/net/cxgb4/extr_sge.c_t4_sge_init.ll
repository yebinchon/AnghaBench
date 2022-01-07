; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_sge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sge }
%struct.sge = type { i32, i32, i64*, i32, i32, i32*, i32* }

@FL_ALIGN = common dso_local global i32 0, align 4
@SGE_CONTROL = common dso_local global i32 0, align 4
@PKTSHIFT_MASK = common dso_local global i32 0, align 4
@INGPADBOUNDARY_MASK = common dso_local global i32 0, align 4
@EGRSTATUSPAGESIZE = common dso_local global i32 0, align 4
@RXPKTCPLMODE = common dso_local global i32 0, align 4
@STAT_LEN = common dso_local global i32 0, align 4
@A_SGE_DBFIFO_STATUS = common dso_local global i32 0, align 4
@M_HP_INT_THRESH = common dso_local global i32 0, align 4
@M_LP_INT_THRESH = common dso_local global i32 0, align 4
@dbfifo_int_thresh = common dso_local global i32 0, align 4
@A_SGE_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@F_ENABLE_DROP = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SGE_HOST_PAGE_SIZE = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE0 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SGE_INGRESS_RX_THRESHOLD = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_0_AND_1 = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_2_AND_3 = common dso_local global i32 0, align 4
@SGE_TIMER_VALUE_4_AND_5 = common dso_local global i32 0, align 4
@sge_rx_timer_cb = common dso_local global i32 0, align 4
@sge_tx_timer_cb = common dso_local global i32 0, align 4
@FL_PG_ORDER = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_sge_init(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sge*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.sge* %8, %struct.sge** %5, align 8
  %9 = load i32, i32* @FL_ALIGN, align 4
  %10 = call i32 @ilog2(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = load i32, i32* @SGE_CONTROL, align 4
  %13 = load i32, i32* @PKTSHIFT_MASK, align 4
  %14 = load i32, i32* @INGPADBOUNDARY_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @EGRSTATUSPAGESIZE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = sub i32 %18, 5
  %20 = call i32 @INGPADBOUNDARY(i32 %19)
  %21 = call i32 @PKTSHIFT(i32 2)
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RXPKTCPLMODE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @STAT_LEN, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @EGRSTATUSPAGESIZE, align 4
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = or i32 %24, %31
  %33 = call i32 @t4_set_reg_field(%struct.adapter* %11, i32 %12, i32 %17, i32 %32)
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = load i32, i32* @A_SGE_DBFIFO_STATUS, align 4
  %36 = load i32, i32* @M_HP_INT_THRESH, align 4
  %37 = call i32 @V_HP_INT_THRESH(i32 %36)
  %38 = load i32, i32* @M_LP_INT_THRESH, align 4
  %39 = call i32 @V_LP_INT_THRESH(i32 %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @dbfifo_int_thresh, align 4
  %42 = call i32 @V_HP_INT_THRESH(i32 %41)
  %43 = load i32, i32* @dbfifo_int_thresh, align 4
  %44 = call i32 @V_LP_INT_THRESH(i32 %43)
  %45 = or i32 %42, %44
  %46 = call i32 @t4_set_reg_field(%struct.adapter* %34, i32 %35, i32 %40, i32 %45)
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = load i32, i32* @A_SGE_DOORBELL_CONTROL, align 4
  %49 = load i32, i32* @F_ENABLE_DROP, align 4
  %50 = load i32, i32* @F_ENABLE_DROP, align 4
  %51 = call i32 @t4_set_reg_field(%struct.adapter* %47, i32 %48, i32 %49, i32 %50)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %62, %30
  %53 = load i32, i32* %3, align 4
  %54 = icmp ult i32 %53, 32
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = sub nsw i32 %56, 10
  %58 = load i32, i32* %3, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 4
  store i32 %64, i32* %3, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = load i32, i32* @SGE_HOST_PAGE_SIZE, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @t4_write_reg(%struct.adapter* %66, i32 %67, i32 %68)
  %70 = load %struct.adapter*, %struct.adapter** %2, align 8
  %71 = load i32, i32* @SGE_FL_BUFFER_SIZE0, align 4
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = call i32 @t4_write_reg(%struct.adapter* %70, i32 %71, i32 %72)
  %74 = load %struct.adapter*, %struct.adapter** %2, align 8
  %75 = load i32, i32* @SGE_INGRESS_RX_THRESHOLD, align 4
  %76 = load %struct.sge*, %struct.sge** %5, align 8
  %77 = getelementptr inbounds %struct.sge, %struct.sge* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @THRESHOLD_0(i32 %80)
  %82 = load %struct.sge*, %struct.sge** %5, align 8
  %83 = getelementptr inbounds %struct.sge, %struct.sge* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @THRESHOLD_1(i32 %86)
  %88 = or i32 %81, %87
  %89 = load %struct.sge*, %struct.sge** %5, align 8
  %90 = getelementptr inbounds %struct.sge, %struct.sge* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @THRESHOLD_2(i32 %93)
  %95 = or i32 %88, %94
  %96 = load %struct.sge*, %struct.sge** %5, align 8
  %97 = getelementptr inbounds %struct.sge, %struct.sge* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @THRESHOLD_3(i32 %100)
  %102 = or i32 %95, %101
  %103 = call i32 @t4_write_reg(%struct.adapter* %74, i32 %75, i32 %102)
  %104 = load %struct.adapter*, %struct.adapter** %2, align 8
  %105 = load i32, i32* @SGE_TIMER_VALUE_0_AND_1, align 4
  %106 = load %struct.adapter*, %struct.adapter** %2, align 8
  %107 = load %struct.sge*, %struct.sge** %5, align 8
  %108 = getelementptr inbounds %struct.sge, %struct.sge* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @us_to_core_ticks(%struct.adapter* %106, i32 %111)
  %113 = call i32 @TIMERVALUE0(i32 %112)
  %114 = load %struct.adapter*, %struct.adapter** %2, align 8
  %115 = load %struct.sge*, %struct.sge** %5, align 8
  %116 = getelementptr inbounds %struct.sge, %struct.sge* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @us_to_core_ticks(%struct.adapter* %114, i32 %119)
  %121 = call i32 @TIMERVALUE1(i32 %120)
  %122 = or i32 %113, %121
  %123 = call i32 @t4_write_reg(%struct.adapter* %104, i32 %105, i32 %122)
  %124 = load %struct.adapter*, %struct.adapter** %2, align 8
  %125 = load i32, i32* @SGE_TIMER_VALUE_2_AND_3, align 4
  %126 = load %struct.adapter*, %struct.adapter** %2, align 8
  %127 = load %struct.sge*, %struct.sge** %5, align 8
  %128 = getelementptr inbounds %struct.sge, %struct.sge* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @us_to_core_ticks(%struct.adapter* %126, i32 %131)
  %133 = call i32 @TIMERVALUE0(i32 %132)
  %134 = load %struct.adapter*, %struct.adapter** %2, align 8
  %135 = load %struct.sge*, %struct.sge** %5, align 8
  %136 = getelementptr inbounds %struct.sge, %struct.sge* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @us_to_core_ticks(%struct.adapter* %134, i32 %139)
  %141 = call i32 @TIMERVALUE1(i32 %140)
  %142 = or i32 %133, %141
  %143 = call i32 @t4_write_reg(%struct.adapter* %124, i32 %125, i32 %142)
  %144 = load %struct.adapter*, %struct.adapter** %2, align 8
  %145 = load i32, i32* @SGE_TIMER_VALUE_4_AND_5, align 4
  %146 = load %struct.adapter*, %struct.adapter** %2, align 8
  %147 = load %struct.sge*, %struct.sge** %5, align 8
  %148 = getelementptr inbounds %struct.sge, %struct.sge* %147, i32 0, i32 5
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @us_to_core_ticks(%struct.adapter* %146, i32 %151)
  %153 = call i32 @TIMERVALUE0(i32 %152)
  %154 = load %struct.adapter*, %struct.adapter** %2, align 8
  %155 = load %struct.sge*, %struct.sge** %5, align 8
  %156 = getelementptr inbounds %struct.sge, %struct.sge* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 5
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @us_to_core_ticks(%struct.adapter* %154, i32 %159)
  %161 = call i32 @TIMERVALUE1(i32 %160)
  %162 = or i32 %153, %161
  %163 = call i32 @t4_write_reg(%struct.adapter* %144, i32 %145, i32 %162)
  %164 = load %struct.sge*, %struct.sge** %5, align 8
  %165 = getelementptr inbounds %struct.sge, %struct.sge* %164, i32 0, i32 4
  %166 = load i32, i32* @sge_rx_timer_cb, align 4
  %167 = load %struct.adapter*, %struct.adapter** %2, align 8
  %168 = ptrtoint %struct.adapter* %167 to i64
  %169 = call i32 @setup_timer(i32* %165, i32 %166, i64 %168)
  %170 = load %struct.sge*, %struct.sge** %5, align 8
  %171 = getelementptr inbounds %struct.sge, %struct.sge* %170, i32 0, i32 3
  %172 = load i32, i32* @sge_tx_timer_cb, align 4
  %173 = load %struct.adapter*, %struct.adapter** %2, align 8
  %174 = ptrtoint %struct.adapter* %173 to i64
  %175 = call i32 @setup_timer(i32* %171, i32 %172, i64 %174)
  %176 = load %struct.adapter*, %struct.adapter** %2, align 8
  %177 = call i32 @core_ticks_per_usec(%struct.adapter* %176)
  %178 = mul nsw i32 %177, 1000000
  %179 = load %struct.sge*, %struct.sge** %5, align 8
  %180 = getelementptr inbounds %struct.sge, %struct.sge* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.sge*, %struct.sge** %5, align 8
  %182 = getelementptr inbounds %struct.sge, %struct.sge* %181, i32 0, i32 2
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  store i64 0, i64* %184, align 8
  %185 = load %struct.sge*, %struct.sge** %5, align 8
  %186 = getelementptr inbounds %struct.sge, %struct.sge* %185, i32 0, i32 2
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 0
  store i64 0, i64* %188, align 8
  %189 = load %struct.sge*, %struct.sge** %5, align 8
  %190 = getelementptr inbounds %struct.sge, %struct.sge* %189, i32 0, i32 1
  %191 = call i32 @spin_lock_init(i32* %190)
  ret void
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @INGPADBOUNDARY(i32) #1

declare dso_local i32 @PKTSHIFT(i32) #1

declare dso_local i32 @V_HP_INT_THRESH(i32) #1

declare dso_local i32 @V_LP_INT_THRESH(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @THRESHOLD_0(i32) #1

declare dso_local i32 @THRESHOLD_1(i32) #1

declare dso_local i32 @THRESHOLD_2(i32) #1

declare dso_local i32 @THRESHOLD_3(i32) #1

declare dso_local i32 @TIMERVALUE0(i32) #1

declare dso_local i32 @us_to_core_ticks(%struct.adapter*, i32) #1

declare dso_local i32 @TIMERVALUE1(i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @core_ticks_per_usec(%struct.adapter*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
