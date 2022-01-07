; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_ciscohdlck_slarp_send_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_ciscohdlck_slarp_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.in_device* }
%struct.in_device = type { %struct.in_ifaddr* }
%struct.in_ifaddr = type { i32, i32 }
%struct.sk_buff = type { i32 }

@CISCO_ADDR_UNICAST = common dso_local global i32 0, align 4
@CISCO_CTRL = common dso_local global i32 0, align 4
@CISCO_TYPE_SLARP = common dso_local global i32 0, align 4
@CISCO_SLARP_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @isdn_net_ciscohdlck_slarp_send_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isdn_net_ciscohdlck_slarp_send_reply(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.in_ifaddr*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store %struct.in_device* null, %struct.in_device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.in_device*, %struct.in_device** %14, align 8
  store %struct.in_device* %15, %struct.in_device** %5, align 8
  %16 = icmp ne %struct.in_device* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.in_device*, %struct.in_device** %5, align 8
  %19 = getelementptr inbounds %struct.in_device, %struct.in_device* %18, i32 0, i32 0
  %20 = load %struct.in_ifaddr*, %struct.in_ifaddr** %19, align 8
  store %struct.in_ifaddr* %20, %struct.in_ifaddr** %8, align 8
  %21 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %22 = icmp ne %struct.in_ifaddr* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %25 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.in_ifaddr*, %struct.in_ifaddr** %8, align 8
  %28 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %23, %17
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = call %struct.sk_buff* @isdn_net_ciscohdlck_alloc_skb(%struct.TYPE_9__* %32, i32 18)
  store %struct.sk_buff* %33, %struct.sk_buff** %3, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %75

37:                                               ; preds = %31
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call i8* @skb_put(%struct.sk_buff* %38, i32 18)
  store i8* %39, i8** %4, align 8
  %40 = load i32, i32* @CISCO_ADDR_UNICAST, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = bitcast i8* %42 to i32*
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @CISCO_CTRL, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = bitcast i8* %46 to i32*
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @CISCO_TYPE_SLARP, align 4
  %49 = call i32 @cpu_to_be16(i32 %48)
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = bitcast i8* %51 to i32*
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @CISCO_SLARP_REPLY, align 4
  %54 = call i32 @cpu_to_be32(i32 %53)
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = bitcast i8* %56 to i32*
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 8
  %61 = bitcast i8* %60 to i32*
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 12
  %65 = bitcast i8* %64 to i32*
  store i32 %62, i32* %65, align 4
  %66 = call i32 @cpu_to_be16(i32 0)
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 16
  %69 = bitcast i8* %68 to i32*
  store i32 %66, i32* %69, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 18
  store i8* %71, i8** %4, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i32 @isdn_net_write_super(%struct.TYPE_9__* %72, %struct.sk_buff* %73)
  br label %75

75:                                               ; preds = %37, %36
  ret void
}

declare dso_local %struct.sk_buff* @isdn_net_ciscohdlck_alloc_skb(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @isdn_net_write_super(%struct.TYPE_9__*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
