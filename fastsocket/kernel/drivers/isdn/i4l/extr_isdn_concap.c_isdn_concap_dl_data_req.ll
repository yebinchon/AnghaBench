; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_concap.c_isdn_concap_dl_data_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_concap.c_isdn_concap_dl_data_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.concap_proto = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32* }

@.str = private unnamed_addr constant [30 x i8] c"isdn_concap_dl_data_req: %s \0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"isdn_concap_dl_data_req: %s : isdn_net_send_skb returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.concap_proto*, %struct.sk_buff*)* @isdn_concap_dl_data_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdn_concap_dl_data_req(%struct.concap_proto* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.concap_proto*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.concap_proto* %0, %struct.concap_proto** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.concap_proto*, %struct.concap_proto** %4, align 8
  %10 = getelementptr inbounds %struct.concap_proto, %struct.concap_proto* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call i64 @netdev_priv(%struct.net_device* %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_4__* @isdn_net_get_locked_lp(i32* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load %struct.concap_proto*, %struct.concap_proto** %4, align 8
  %20 = getelementptr inbounds %struct.concap_proto, %struct.concap_proto* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, i32, ...) @IX25DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.concap_proto*, %struct.concap_proto** %4, align 8
  %29 = getelementptr inbounds %struct.concap_proto, %struct.concap_proto* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @IX25DEBUG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 1)
  store i32 1, i32* %3, align 4
  br label %49

34:                                               ; preds = %2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @isdn_net_writebuf_skb(%struct.TYPE_4__* %37, %struct.sk_buff* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load %struct.concap_proto*, %struct.concap_proto** %4, align 8
  %44 = getelementptr inbounds %struct.concap_proto, %struct.concap_proto* %43, i32 0, i32 0
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, ...) @IX25DEBUG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 0)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %34, %27
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @isdn_net_get_locked_lp(i32*) #1

declare dso_local i32 @IX25DEBUG(i8*, i32, ...) #1

declare dso_local i32 @isdn_net_writebuf_skb(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
