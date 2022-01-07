; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bfin_mac.c_bfin_mac_multicast_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bfin_mac.c_bfin_mac_multicast_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bfin_mac_multicast_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_mac_multicast_hash(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load %struct.dev_mc_list*, %struct.dev_mc_list** %10, align 8
  store %struct.dev_mc_list* %11, %struct.dev_mc_list** %5, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %53, %1
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %12
  %19 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %20 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %23 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %22, i32 0, i32 1
  %24 = load %struct.dev_mc_list*, %struct.dev_mc_list** %23, align 8
  store %struct.dev_mc_list* %24, %struct.dev_mc_list** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %53

31:                                               ; preds = %18
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @ether_crc(i32 %32, i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 26
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 31
  %43 = shl i32 1, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %31
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 31
  %49 = shl i32 1, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %12

56:                                               ; preds = %12
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @bfin_write_EMAC_HASHHI(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @bfin_write_EMAC_HASHLO(i32 %59)
  ret void
}

declare dso_local i32 @ether_crc(i32, i8*) #1

declare dso_local i32 @bfin_write_EMAC_HASHHI(i32) #1

declare dso_local i32 @bfin_write_EMAC_HASHLO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
