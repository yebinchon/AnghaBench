; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_pd_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_pd_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnet_partial_datagram = type { i32, i32, i32, i32*, i32, i32 }
%struct.net_device = type { i32 }
%struct.fwnet_peer = type { i32 }
%struct.fwnet_fragment_info = type { i32, i32, i32, i32*, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwnet_partial_datagram* (%struct.net_device*, %struct.fwnet_peer*, i32, i32, i8*, i32, i32)* @fwnet_pd_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwnet_partial_datagram* @fwnet_pd_new(%struct.net_device* %0, %struct.fwnet_peer* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.fwnet_partial_datagram*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.fwnet_peer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fwnet_partial_datagram*, align 8
  %17 = alloca %struct.fwnet_fragment_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %9, align 8
  store %struct.fwnet_peer* %1, %struct.fwnet_peer** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.fwnet_partial_datagram* @kmalloc(i32 32, i32 %18)
  store %struct.fwnet_partial_datagram* %19, %struct.fwnet_partial_datagram** %16, align 8
  %20 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %21 = icmp ne %struct.fwnet_partial_datagram* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  br label %95

23:                                               ; preds = %7
  %24 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %25 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %24, i32 0, i32 5
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call %struct.fwnet_partial_datagram* @fwnet_frag_new(%struct.fwnet_partial_datagram* %27, i32 %28, i32 %29)
  %31 = bitcast %struct.fwnet_partial_datagram* %30 to %struct.fwnet_fragment_info*
  store %struct.fwnet_fragment_info* %31, %struct.fwnet_fragment_info** %17, align 8
  %32 = load %struct.fwnet_fragment_info*, %struct.fwnet_fragment_info** %17, align 8
  %33 = icmp eq %struct.fwnet_fragment_info* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %92

35:                                               ; preds = %23
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %38 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %41 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %42, %45
  %47 = add i32 %46, 15
  %48 = zext i32 %47 to i64
  %49 = call i32* @dev_alloc_skb(i64 %48)
  %50 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %51 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %50, i32 0, i32 3
  store i32* %49, i32** %51, align 8
  %52 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %53 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  br label %88

57:                                               ; preds = %35
  %58 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %59 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %9, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 15
  %65 = and i32 %64, -16
  %66 = call i32 @skb_reserve(i32* %60, i32 %65)
  %67 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %68 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @skb_put(i32* %69, i32 %70)
  %72 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %73 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %75 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add i32 %76, %77
  %79 = load i8*, i8** %13, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @memcpy(i32 %78, i8* %79, i32 %80)
  %82 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %83 = getelementptr inbounds %struct.fwnet_partial_datagram, %struct.fwnet_partial_datagram* %82, i32 0, i32 2
  %84 = load %struct.fwnet_peer*, %struct.fwnet_peer** %10, align 8
  %85 = getelementptr inbounds %struct.fwnet_peer, %struct.fwnet_peer* %84, i32 0, i32 0
  %86 = call i32 @list_add_tail(i32* %83, i32* %85)
  %87 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  store %struct.fwnet_partial_datagram* %87, %struct.fwnet_partial_datagram** %8, align 8
  br label %97

88:                                               ; preds = %56
  %89 = load %struct.fwnet_fragment_info*, %struct.fwnet_fragment_info** %17, align 8
  %90 = bitcast %struct.fwnet_fragment_info* %89 to %struct.fwnet_partial_datagram*
  %91 = call i32 @kfree(%struct.fwnet_partial_datagram* %90)
  br label %92

92:                                               ; preds = %88, %34
  %93 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %16, align 8
  %94 = call i32 @kfree(%struct.fwnet_partial_datagram* %93)
  br label %95

95:                                               ; preds = %92, %22
  %96 = call i32 @fw_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.fwnet_partial_datagram* null, %struct.fwnet_partial_datagram** %8, align 8
  br label %97

97:                                               ; preds = %95, %57
  %98 = load %struct.fwnet_partial_datagram*, %struct.fwnet_partial_datagram** %8, align 8
  ret %struct.fwnet_partial_datagram* %98
}

declare dso_local %struct.fwnet_partial_datagram* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.fwnet_partial_datagram* @fwnet_frag_new(%struct.fwnet_partial_datagram*, i32, i32) #1

declare dso_local i32* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(i32*, i32) #1

declare dso_local i32 @skb_put(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.fwnet_partial_datagram*) #1

declare dso_local i32 @fw_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
