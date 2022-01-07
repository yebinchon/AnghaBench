; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_header_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_header_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.fwnet_header = type { i32, i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @fwnet_header_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwnet_header_create(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fwnet_header*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call i64 @skb_push(%struct.sk_buff* %15, i32 8)
  %17 = inttoptr i64 %16 to %struct.fwnet_header*
  store %struct.fwnet_header* %17, %struct.fwnet_header** %14, align 8
  %18 = load i16, i16* %10, align 2
  %19 = load %struct.fwnet_header*, %struct.fwnet_header** %14, align 8
  %20 = getelementptr inbounds %struct.fwnet_header, %struct.fwnet_header* %19, i32 0, i32 1
  %21 = call i32 @put_unaligned_be16(i16 zeroext %18, i32* %20)
  %22 = load %struct.net_device*, %struct.net_device** %9, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_LOOPBACK, align 4
  %26 = load i32, i32* @IFF_NOARP, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %6
  %31 = load %struct.fwnet_header*, %struct.fwnet_header** %14, align 8
  %32 = getelementptr inbounds %struct.fwnet_header, %struct.fwnet_header* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.net_device*, %struct.net_device** %9, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memset(i32 %33, i32 0, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %9, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %61

41:                                               ; preds = %6
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.fwnet_header*, %struct.fwnet_header** %14, align 8
  %46 = getelementptr inbounds %struct.fwnet_header, %struct.fwnet_header* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.net_device*, %struct.net_device** %9, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %47, i8* %48, i32 %51)
  %53 = load %struct.net_device*, %struct.net_device** %9, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  br label %61

56:                                               ; preds = %41
  %57 = load %struct.net_device*, %struct.net_device** %9, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %56, %44, %30
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @put_unaligned_be16(i16 zeroext, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
