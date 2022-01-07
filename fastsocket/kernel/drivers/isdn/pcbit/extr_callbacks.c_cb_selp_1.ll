; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_callbacks.c_cb_selp_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_callbacks.c_cb_selp_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { i32 }
%struct.pcbit_chan = type { i32 }
%struct.callb_data = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"capi_conn_activate_transp_req failed\0A\00", align 1
@last_ref_num = common dso_local global i32 0, align 4
@MSG_ACT_TRANSP_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cb_selp_1(%struct.pcbit_dev* %0, %struct.pcbit_chan* %1, %struct.callb_data* %2) #0 {
  %4 = alloca %struct.pcbit_dev*, align 8
  %5 = alloca %struct.pcbit_chan*, align 8
  %6 = alloca %struct.callb_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %4, align 8
  store %struct.pcbit_chan* %1, %struct.pcbit_chan** %5, align 8
  store %struct.callb_data* %2, %struct.callb_data** %6, align 8
  %10 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  %11 = call i32 @capi_activate_transp_req(%struct.pcbit_chan* %10, %struct.sk_buff** %7)
  store i32 %11, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %28

15:                                               ; preds = %3
  %16 = load i32, i32* @last_ref_num, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @last_ref_num, align 4
  %18 = and i32 %16, 32767
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.pcbit_chan*, %struct.pcbit_chan** %5, align 8
  %21 = getelementptr inbounds %struct.pcbit_chan, %struct.pcbit_chan* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %23 = load i32, i32* @MSG_ACT_TRANSP_REQ, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @pcbit_l2_write(%struct.pcbit_dev* %22, i32 %23, i32 %24, %struct.sk_buff* %25, i32 %26)
  br label %28

28:                                               ; preds = %15, %13
  ret void
}

declare dso_local i32 @capi_activate_transp_req(%struct.pcbit_chan*, %struct.sk_buff**) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @pcbit_l2_write(%struct.pcbit_dev*, i32, i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
