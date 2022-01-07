; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_callbacks.c_cb_out_2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_callbacks.c_cb_out_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.pcbit_chan = type { i8*, i32 }
%struct.callb_data = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"capi_conn_active_req failed\0A\00", align 1
@last_ref_num = common dso_local global i32 0, align 4
@MSG_CONN_ACTV_RESP = common dso_local global i32 0, align 4
@ISDN_STAT_DCONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"capi_select_proto_req failed\0A\00", align 1
@MSG_SELP_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cb_out_2(%struct.pcbit_dev* %0, %struct.pcbit_chan* %1, %struct.callb_data* %2) #0 {
  %4 = alloca %struct.pcbit_dev*, align 8
  %5 = alloca %struct.pcbit_chan*, align 8
  %6 = alloca %struct.callb_data*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %4, align 8
  store %struct.pcbit_chan* %1, %struct.pcbit_chan** %5, align 8
  store %struct.callb_data* %2, %struct.callb_data** %6, align 8
  %11 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  %12 = call i32 @capi_conn_active_resp(%struct.pcbit_chan* %11, %struct.sk_buff** %8)
  store i32 %12, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %67

16:                                               ; preds = %3
  %17 = load i32, i32* @last_ref_num, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @last_ref_num, align 4
  %19 = and i32 %17, 32767
  %20 = zext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  %24 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %26 = load i32, i32* @MSG_CONN_ACTV_RESP, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @pcbit_l2_write(%struct.pcbit_dev* %25, i32 %26, i8* %27, %struct.sk_buff* %28, i32 %29)
  %31 = load i32, i32* @ISDN_STAT_DCONN, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  %38 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %44, align 8
  %46 = call i32 %45(%struct.TYPE_5__* %7)
  %47 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  %48 = call i32 @capi_select_proto_req(%struct.pcbit_chan* %47, %struct.sk_buff** %8, i32 1)
  store i32 %48, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %16
  %51 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %67

52:                                               ; preds = %16
  %53 = load i32, i32* @last_ref_num, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @last_ref_num, align 4
  %55 = and i32 %53, 32767
  %56 = zext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  %60 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %62 = load i32, i32* @MSG_SELP_REQ, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @pcbit_l2_write(%struct.pcbit_dev* %61, i32 %62, i8* %63, %struct.sk_buff* %64, i32 %65)
  br label %67

67:                                               ; preds = %52, %50, %14
  ret void
}

declare dso_local i32 @capi_conn_active_resp(%struct.pcbit_chan*, %struct.sk_buff**) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @pcbit_l2_write(%struct.pcbit_dev*, i32, i8*, %struct.sk_buff*, i32) #1

declare dso_local i32 @capi_select_proto_req(%struct.pcbit_chan*, %struct.sk_buff**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
