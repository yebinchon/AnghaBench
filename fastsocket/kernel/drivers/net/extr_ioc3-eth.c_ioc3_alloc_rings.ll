; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ioc3_private = type { i64*, i32, i64, i64, %struct.ioc3_etxd*, i64, %struct.sk_buff** }
%struct.ioc3_etxd = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ioc3_erxbuf = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ioc3_alloc_rings(): get_zeroed_page() failed!\0A\00", align 1
@RX_BUFFS = common dso_local global i32 0, align 4
@RX_BUF_ALLOC_SIZE = common dso_local global i32 0, align 4
@RX_OFFSET = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"ioc3_alloc_rings(): __get_free_pages() failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ioc3_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_alloc_rings(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ioc3_private*, align 8
  %4 = alloca %struct.ioc3_erxbuf*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ioc3_private* %9, %struct.ioc3_private** %3, align 8
  %10 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %11 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %14, label %75

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call i64 @get_zeroed_page(i32 %15)
  %17 = inttoptr i64 %16 to i64*
  %18 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %19 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %18, i32 0, i32 0
  store i64* %17, i64** %19, align 8
  %20 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %21 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %5, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  %26 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %14
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RX_BUFFS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load i32, i32* @RX_BUF_ALLOC_SIZE, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.sk_buff* @ioc3_alloc_skb(i32 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = call i32 (...) @show_free_areas()
  br label %66

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %43 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %42, i32 0, i32 6
  %44 = load %struct.sk_buff**, %struct.sk_buff*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %44, i64 %46
  store %struct.sk_buff* %41, %struct.sk_buff** %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load i64, i64* @RX_OFFSET, align 8
  %50 = add nsw i64 1664, %49
  %51 = call i32 @skb_put(%struct.sk_buff* %48, i64 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.ioc3_erxbuf*
  store %struct.ioc3_erxbuf* %55, %struct.ioc3_erxbuf** %4, align 8
  %56 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %4, align 8
  %57 = call i32 @ioc3_map(%struct.ioc3_erxbuf* %56, i32 1)
  %58 = call i64 @cpu_to_be64(i32 %57)
  %59 = load i64*, i64** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %58, i64* %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load i64, i64* @RX_OFFSET, align 8
  %65 = call i32 @skb_reserve(%struct.sk_buff* %63, i64 %64)
  br label %66

66:                                               ; preds = %40, %38
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %28

69:                                               ; preds = %28
  %70 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %71 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @RX_BUFFS, align 4
  %73 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %74 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %69, %1
  %76 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %77 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %76, i32 0, i32 4
  %78 = load %struct.ioc3_etxd*, %struct.ioc3_etxd** %77, align 8
  %79 = icmp eq %struct.ioc3_etxd* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i64 @__get_free_pages(i32 %81, i32 2)
  %83 = inttoptr i64 %82 to %struct.ioc3_etxd*
  %84 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %85 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %84, i32 0, i32 4
  store %struct.ioc3_etxd* %83, %struct.ioc3_etxd** %85, align 8
  %86 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %87 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %86, i32 0, i32 4
  %88 = load %struct.ioc3_etxd*, %struct.ioc3_etxd** %87, align 8
  %89 = icmp ne %struct.ioc3_etxd* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %80
  %91 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %80
  %93 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %94 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %96 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %75
  ret void
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.sk_buff* @ioc3_alloc_skb(i32, i32) #1

declare dso_local i32 @show_free_areas(...) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @ioc3_map(%struct.ioc3_erxbuf*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
