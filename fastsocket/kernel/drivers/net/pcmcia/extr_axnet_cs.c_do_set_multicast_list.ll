; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_axnet_cs.c_do_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_axnet_cs.c_do_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i64 }
%struct.ei_device = type { i32* }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@E8390_NODMA = common dso_local global i32 0, align 4
@E8390_PAGE1 = common dso_local global i32 0, align 4
@E8390_CMD = common dso_local global i64 0, align 8
@E8390_PAGE0 = common dso_local global i32 0, align 4
@E8390_RXCONFIG = common dso_local global i32 0, align 4
@EN0_RXCR = common dso_local global i64 0, align 8
@E8390_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @do_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ei_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i64 @netdev_priv(%struct.net_device* %9)
  %11 = inttoptr i64 %10 to %struct.ei_device*
  store %struct.ei_device* %11, %struct.ei_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = load i32, i32* @IFF_ALLMULTI, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %1
  %21 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %22 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @memset(i32* %23, i32 0, i32 8)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %31 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @make_mc_bits(i32* %32, %struct.net_device* %33)
  br label %35

35:                                               ; preds = %29, %20
  br label %41

36:                                               ; preds = %1
  %37 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %38 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @memset(i32* %39, i32 255, i32 8)
  br label %41

41:                                               ; preds = %36, %35
  %42 = load i32, i32* @E8390_NODMA, align 4
  %43 = load i32, i32* @E8390_PAGE1, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @E8390_CMD, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb_p(i32 %44, i64 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %65, %41
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %54 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @EN1_MULT_SHIFT(i32 %61)
  %63 = add nsw i64 %60, %62
  %64 = call i32 @outb_p(i32 %59, i64 %63)
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %49

68:                                               ; preds = %49
  %69 = load i32, i32* @E8390_NODMA, align 4
  %70 = load i32, i32* @E8390_PAGE0, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i64, i64* %3, align 8
  %73 = load i64, i64* @E8390_CMD, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outb_p(i32 %71, i64 %74)
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IFF_PROMISC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %68
  %83 = load i32, i32* @E8390_RXCONFIG, align 4
  %84 = or i32 %83, 88
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @EN0_RXCR, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @outb_p(i32 %84, i64 %87)
  br label %116

89:                                               ; preds = %68
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IFF_ALLMULTI, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96, %89
  %102 = load i32, i32* @E8390_RXCONFIG, align 4
  %103 = or i32 %102, 72
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* @EN0_RXCR, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @outb_p(i32 %103, i64 %106)
  br label %115

108:                                              ; preds = %96
  %109 = load i32, i32* @E8390_RXCONFIG, align 4
  %110 = or i32 %109, 64
  %111 = load i64, i64* %3, align 8
  %112 = load i64, i64* @EN0_RXCR, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @outb_p(i32 %110, i64 %113)
  br label %115

115:                                              ; preds = %108, %101
  br label %116

116:                                              ; preds = %115, %82
  %117 = load i32, i32* @E8390_NODMA, align 4
  %118 = load i32, i32* @E8390_PAGE0, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* @E8390_START, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i64, i64* %3, align 8
  %123 = load i64, i64* @E8390_CMD, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @outb_p(i32 %121, i64 %124)
  ret void
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @make_mc_bits(i32*, %struct.net_device*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i64 @EN1_MULT_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
