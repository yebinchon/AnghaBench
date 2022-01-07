; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_axnet_cs.c_make_mc_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_axnet_cs.c_make_mc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.net_device*)* @make_mc_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_mc_bits(i32* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  store %struct.dev_mc_list* %9, %struct.dev_mc_list** %5, align 8
  br label %10

10:                                               ; preds = %30, %2
  %11 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %12 = icmp ne %struct.dev_mc_list* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %16 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ether_crc(i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 26
  %21 = and i32 %20, 7
  %22 = shl i32 1, %21
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 29
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %22
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %13
  %31 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %32 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %31, i32 0, i32 1
  %33 = load %struct.dev_mc_list*, %struct.dev_mc_list** %32, align 8
  store %struct.dev_mc_list* %33, %struct.dev_mc_list** %5, align 8
  br label %10

34:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ether_crc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
