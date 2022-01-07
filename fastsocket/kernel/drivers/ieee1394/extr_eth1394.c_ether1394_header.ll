; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.eth1394hdr = type { i32, i32 }

@ETH1394_HLEN = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @ether1394_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether1394_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.eth1394hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = load i32, i32* @ETH1394_HLEN, align 4
  %17 = call i64 @skb_push(%struct.sk_buff* %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.eth1394hdr*
  store %struct.eth1394hdr* %18, %struct.eth1394hdr** %14, align 8
  %19 = load i16, i16* %10, align 2
  %20 = call i32 @htons(i16 zeroext %19)
  %21 = load %struct.eth1394hdr*, %struct.eth1394hdr** %14, align 8
  %22 = getelementptr inbounds %struct.eth1394hdr, %struct.eth1394hdr* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_LOOPBACK, align 4
  %27 = load i32, i32* @IFF_NOARP, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %6
  %32 = load %struct.eth1394hdr*, %struct.eth1394hdr** %14, align 8
  %33 = getelementptr inbounds %struct.eth1394hdr, %struct.eth1394hdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memset(i32 %34, i32 0, i32 %37)
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  br label %62

42:                                               ; preds = %6
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.eth1394hdr*, %struct.eth1394hdr** %14, align 8
  %47 = getelementptr inbounds %struct.eth1394hdr, %struct.eth1394hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.net_device*, %struct.net_device** %9, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32 %48, i8* %49, i32 %52)
  %54 = load %struct.net_device*, %struct.net_device** %9, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  br label %62

57:                                               ; preds = %42
  %58 = load %struct.net_device*, %struct.net_device** %9, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %57, %45, %31
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
