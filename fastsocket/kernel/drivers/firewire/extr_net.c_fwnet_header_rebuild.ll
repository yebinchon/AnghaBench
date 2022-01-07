; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_header_rebuild.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_header_rebuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.fwnet_header = type { i32, i32 }

@ETH_P_IP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"%s: unable to resolve type %04x addresses\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @fwnet_header_rebuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwnet_header_rebuild(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.fwnet_header*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.fwnet_header*
  store %struct.fwnet_header* %8, %struct.fwnet_header** %4, align 8
  %9 = load %struct.fwnet_header*, %struct.fwnet_header** %4, align 8
  %10 = getelementptr inbounds %struct.fwnet_header, %struct.fwnet_header* %9, i32 0, i32 0
  %11 = call i64 @get_unaligned_be16(i32* %10)
  %12 = load i64, i64* @ETH_P_IP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.fwnet_header*, %struct.fwnet_header** %4, align 8
  %16 = getelementptr inbounds %struct.fwnet_header, %struct.fwnet_header* %15, i32 0, i32 1
  %17 = bitcast i32* %16 to i8*
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 @arp_find(i8* %17, %struct.sk_buff* %18)
  store i32 %19, i32* %2, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fwnet_header*, %struct.fwnet_header** %4, align 8
  %27 = getelementptr inbounds %struct.fwnet_header, %struct.fwnet_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be16_to_cpu(i32 %28)
  %30 = call i32 @fw_notify(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %20, %14
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @get_unaligned_be16(i32*) #1

declare dso_local i32 @arp_find(i8*, %struct.sk_buff*) #1

declare dso_local i32 @fw_notify(i8*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
