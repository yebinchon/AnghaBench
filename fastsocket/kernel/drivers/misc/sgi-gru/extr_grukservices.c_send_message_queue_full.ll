; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_send_message_queue_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_send_message_queue_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_message_queue_desc = type { i32, i32 }
%union.gru_mesqhead = type { i32 }

@EOP_IR_CLR = common dso_local global i32 0, align 4
@XTYPE_DW = common dso_local global i32 0, align 4
@IMA = common dso_local global i32 0, align 4
@CBS_IDLE = common dso_local global i64 0, align 8
@mesq_qf_locked = common dso_local global i32 0, align 4
@MQE_QUEUE_FULL = common dso_local global i32 0, align 4
@EOP_IR_INC = common dso_local global i32 0, align 4
@mesq_qf_noop_not_full = common dso_local global i32 0, align 4
@MQIE_AGAIN = common dso_local global i32 0, align 4
@EOP_ERR_CSWAP = common dso_local global i32 0, align 4
@mesq_qf_switch_head_failed = common dso_local global i32 0, align 4
@mesq_qf_unexpected_error = common dso_local global i32 0, align 4
@MQE_UNEXPECTED_CB_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.gru_message_queue_desc*, i8*, i32)* @send_message_queue_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_message_queue_full(i8* %0, %struct.gru_message_queue_desc* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gru_message_queue_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.gru_mesqhead, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.gru_mesqhead, align 4
  %17 = alloca %union.gru_mesqhead, align 4
  store i8* %0, i8** %6, align 8
  store %struct.gru_message_queue_desc* %1, %struct.gru_message_queue_desc** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @gru_get_amo_value(i8* %18)
  store i64 %19, i64* %13, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @gru_get_amo_value_head(i8* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @gru_get_amo_value_limit(i8* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %25 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %4
  %34 = load i32, i32* %15, align 4
  %35 = sdiv i32 %34, 2
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @gru_mesq_head(i32 %36, i32 %37)
  %39 = getelementptr inbounds %union.gru_mesqhead, %union.gru_mesqhead* %16, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %union.gru_mesqhead* %10 to i8*
  %41 = bitcast %union.gru_mesqhead* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  br label %50

42:                                               ; preds = %4
  %43 = load i32, i32* %15, align 4
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %44, 1
  %46 = call i32 @gru_mesq_head(i32 2, i32 %45)
  %47 = getelementptr inbounds %union.gru_mesqhead, %union.gru_mesqhead* %17, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = bitcast %union.gru_mesqhead* %10 to i8*
  %49 = bitcast %union.gru_mesqhead* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  br label %50

50:                                               ; preds = %42, %33
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @EOP_IR_CLR, align 4
  %53 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %54 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @HSTATUS(i32 %55, i32 %56)
  %58 = load i32, i32* @XTYPE_DW, align 4
  %59 = load i32, i32* @IMA, align 4
  %60 = call i32 @gru_gamir(i8* %51, i32 %52, i32 %57, i32 %58, i32 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @gru_wait(i8* %61)
  %63 = load i64, i64* @CBS_IDLE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %150

66:                                               ; preds = %50
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @gru_get_amo_value(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @mesq_qf_locked, align 4
  %72 = call i32 @STAT(i32 %71)
  %73 = load i32, i32* @MQE_QUEUE_FULL, align 4
  store i32 %73, i32* %5, align 4
  br label %154

74:                                               ; preds = %66
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %74
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i64 @send_noop_message(i8* %79, %struct.gru_message_queue_desc* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* @EOP_IR_INC, align 4
  %87 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %88 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @HSTATUS(i32 %89, i32 %90)
  %92 = load i32, i32* @XTYPE_DW, align 4
  %93 = load i32, i32* @IMA, align 4
  %94 = call i32 @gru_gamir(i8* %85, i32 %86, i32 %91, i32 %92, i32 %93)
  %95 = load i8*, i8** %6, align 8
  %96 = call i64 @gru_wait(i8* %95)
  %97 = load i64, i64* @CBS_IDLE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %150

100:                                              ; preds = %84
  %101 = load i32, i32* @mesq_qf_noop_not_full, align 4
  %102 = call i32 @STAT(i32 %101)
  %103 = load i32, i32* @MQIE_AGAIN, align 4
  store i32 %103, i32* %5, align 4
  br label %154

104:                                              ; preds = %78
  %105 = load i64, i64* %13, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %13, align 8
  br label %107

107:                                              ; preds = %104, %74
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* @EOP_ERR_CSWAP, align 4
  %110 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %111 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @XTYPE_DW, align 4
  %114 = bitcast %union.gru_mesqhead* %10 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %13, align 8
  %117 = load i32, i32* @IMA, align 4
  %118 = call i32 @gru_gamer(i8* %108, i32 %109, i32 %112, i32 %113, i32 %115, i64 %116, i32 %117)
  %119 = load i8*, i8** %6, align 8
  %120 = call i64 @gru_wait(i8* %119)
  %121 = load i64, i64* @CBS_IDLE, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %107
  br label %150

124:                                              ; preds = %107
  %125 = load i8*, i8** %6, align 8
  %126 = call i64 @gru_get_amo_value(i8* %125)
  %127 = load i64, i64* %13, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %124
  %130 = load i32, i32* @mesq_qf_switch_head_failed, align 4
  %131 = call i32 @STAT(i32 %130)
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* @EOP_IR_INC, align 4
  %134 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %135 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @HSTATUS(i32 %136, i32 %137)
  %139 = load i32, i32* @XTYPE_DW, align 4
  %140 = load i32, i32* @IMA, align 4
  %141 = call i32 @gru_gamir(i8* %132, i32 %133, i32 %138, i32 %139, i32 %140)
  %142 = load i8*, i8** %6, align 8
  %143 = call i64 @gru_wait(i8* %142)
  %144 = load i64, i64* @CBS_IDLE, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %129
  br label %150

147:                                              ; preds = %129
  br label %148

148:                                              ; preds = %147, %124
  %149 = load i32, i32* @MQIE_AGAIN, align 4
  store i32 %149, i32* %5, align 4
  br label %154

150:                                              ; preds = %146, %123, %99, %65
  %151 = load i32, i32* @mesq_qf_unexpected_error, align 4
  %152 = call i32 @STAT(i32 %151)
  %153 = load i32, i32* @MQE_UNEXPECTED_CB_ERR, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %150, %148, %100, %70
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i64 @gru_get_amo_value(i8*) #1

declare dso_local i32 @gru_get_amo_value_head(i8*) #1

declare dso_local i32 @gru_get_amo_value_limit(i8*) #1

declare dso_local i32 @gru_mesq_head(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gru_gamir(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @HSTATUS(i32, i32) #1

declare dso_local i64 @gru_wait(i8*) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i64 @send_noop_message(i8*, %struct.gru_message_queue_desc*, i8*) #1

declare dso_local i32 @gru_gamer(i8*, i32, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
