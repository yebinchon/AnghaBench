; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_ciscohdlck_slarp_send_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_ciscohdlck_slarp_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@CISCO_ADDR_UNICAST = common dso_local global i32 0, align 4
@CISCO_CTRL = common dso_local global i32 0, align 4
@CISCO_TYPE_SLARP = common dso_local global i32 0, align 4
@CISCO_SLARP_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @isdn_net_ciscohdlck_slarp_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isdn_net_ciscohdlck_slarp_send_request(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.sk_buff* @isdn_net_ciscohdlck_alloc_skb(i32* %5, i32 18)
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i8* @skb_put(%struct.sk_buff* %11, i32 18)
  store i8* %12, i8** %4, align 8
  %13 = load i32, i32* @CISCO_ADDR_UNICAST, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = bitcast i8* %15 to i32*
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @CISCO_CTRL, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = bitcast i8* %19 to i32*
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @CISCO_TYPE_SLARP, align 4
  %22 = call i32 @cpu_to_be16(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = bitcast i8* %24 to i32*
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @CISCO_SLARP_REQUEST, align 4
  %27 = call i32 @cpu_to_be32(i32 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %27, i32* %30, align 4
  %31 = call i32 @cpu_to_be32(i32 0)
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = bitcast i8* %33 to i32*
  store i32 %31, i32* %34, align 4
  %35 = call i32 @cpu_to_be32(i32 0)
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 12
  %38 = bitcast i8* %37 to i32*
  store i32 %35, i32* %38, align 4
  %39 = call i32 @cpu_to_be16(i32 0)
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 16
  %42 = bitcast i8* %41 to i32*
  store i32 %39, i32* %42, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 18
  store i8* %44, i8** %4, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call i32 @isdn_net_write_super(i32* %45, %struct.sk_buff* %46)
  br label %48

48:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.sk_buff* @isdn_net_ciscohdlck_alloc_skb(i32*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @isdn_net_write_super(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
