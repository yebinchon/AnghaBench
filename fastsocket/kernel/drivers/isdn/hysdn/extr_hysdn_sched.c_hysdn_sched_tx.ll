; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_sched.c_hysdn_sched_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_sched.c_hysdn_sched_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i16, i16, i64, i32, i64, i32 }
%struct.sk_buff = type { i16 }

@ERRLOG_STATE_START = common dso_local global i64 0, align 8
@ERRLOG_CMD_REQ_SIZE = common dso_local global i16 0, align 2
@ERRLOG_CMD_REQ = common dso_local global i32 0, align 4
@CHAN_ERRLOG = common dso_local global i16 0, align 2
@ERRLOG_STATE_ON = common dso_local global i64 0, align 8
@ERRLOG_STATE_STOP = common dso_local global i64 0, align 8
@ERRLOG_CMD_STOP_SIZE = common dso_local global i16 0, align 2
@ERRLOG_CMD_STOP = common dso_local global i32 0, align 4
@ERRLOG_STATE_OFF = common dso_local global i64 0, align 8
@hynet_enable = common dso_local global i32 0, align 4
@CHAN_NDIS_DATA = common dso_local global i16 0, align 2
@CHAN_CAPI = common dso_local global i16 0, align 2
@hycapi_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hysdn_sched_tx(%struct.TYPE_7__* %0, i8* %1, i16* %2, i16* %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16, align 2
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i16* %2, i16** %9, align 8
  store i16* %3, i16** %10, align 8
  store i16 %4, i16* %11, align 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = call i32 @hysdn_tx_netack(%struct.TYPE_7__* %20)
  br label %22

22:                                               ; preds = %17, %5
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i16, i16* %29, align 4
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* %11, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i16, i16* %41, align 4
  %43 = call i32 @memcpy(i8* %36, i32 %39, i16 zeroext %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i16, i16* %45, align 4
  %47 = load i16*, i16** %9, align 8
  store volatile i16 %46, i16* %47, align 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i16, i16* %49, align 2
  %51 = load i16*, i16** %10, align 8
  store volatile i16 %50, i16* %51, align 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  store i32 1, i32* %6, align 4
  br label %143

54:                                               ; preds = %27
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %22
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ERRLOG_STATE_START, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load i16, i16* %11, align 2
  %65 = zext i16 %64 to i32
  %66 = load i16, i16* @ERRLOG_CMD_REQ_SIZE, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp sge i32 %65, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* @ERRLOG_CMD_REQ, align 4
  %72 = call i32 @strcpy(i8* %70, i32 %71)
  %73 = load i16, i16* @ERRLOG_CMD_REQ_SIZE, align 2
  %74 = load i16*, i16** %9, align 8
  store volatile i16 %73, i16* %74, align 2
  %75 = load i16, i16* @CHAN_ERRLOG, align 2
  %76 = load i16*, i16** %10, align 8
  store volatile i16 %75, i16* %76, align 2
  %77 = load i64, i64* @ERRLOG_STATE_ON, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  store i32 1, i32* %6, align 4
  br label %143

80:                                               ; preds = %63, %57
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ERRLOG_STATE_STOP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load i16, i16* %11, align 2
  %88 = zext i16 %87 to i32
  %89 = load i16, i16* @ERRLOG_CMD_STOP_SIZE, align 2
  %90 = zext i16 %89 to i32
  %91 = icmp sge i32 %88, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* @ERRLOG_CMD_STOP, align 4
  %95 = call i32 @strcpy(i8* %93, i32 %94)
  %96 = load i16, i16* @ERRLOG_CMD_STOP_SIZE, align 2
  %97 = load i16*, i16** %9, align 8
  store volatile i16 %96, i16* %97, align 2
  %98 = load i16, i16* @CHAN_ERRLOG, align 2
  %99 = load i16*, i16** %10, align 8
  store volatile i16 %98, i16* %99, align 2
  %100 = load i64, i64* @ERRLOG_STATE_OFF, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  store i32 1, i32* %6, align 4
  br label %143

103:                                              ; preds = %86, %80
  %104 = load i32, i32* @hynet_enable, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = shl i32 1, %107
  %109 = and i32 %104, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %142

111:                                              ; preds = %103
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = call %struct.sk_buff* @hysdn_tx_netget(%struct.TYPE_7__* %112)
  store %struct.sk_buff* %113, %struct.sk_buff** %12, align 8
  %114 = icmp ne %struct.sk_buff* %113, null
  br i1 %114, label %115, label %142

115:                                              ; preds = %111
  %116 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i16, i16* %117, align 2
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* %11, align 2
  %121 = zext i16 %120 to i32
  %122 = icmp sle i32 %119, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %115
  %124 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i16, i16* %127, align 2
  %129 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %124, i8* %125, i16 zeroext %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i16, i16* %131, align 2
  %133 = load i16*, i16** %9, align 8
  store volatile i16 %132, i16* %133, align 2
  %134 = load i16, i16* @CHAN_NDIS_DATA, align 2
  %135 = load i16*, i16** %10, align 8
  store volatile i16 %134, i16* %135, align 2
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  store i32 1, i32* %6, align 4
  br label %143

138:                                              ; preds = %115
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %140 = call i32 @hysdn_tx_netack(%struct.TYPE_7__* %139)
  br label %141

141:                                              ; preds = %138
  br label %142

142:                                              ; preds = %141, %111, %103
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %142, %123, %92, %69, %35
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i32 @hysdn_tx_netack(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i8*, i32, i16 zeroext) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local %struct.sk_buff* @hysdn_tx_netget(%struct.TYPE_7__*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
