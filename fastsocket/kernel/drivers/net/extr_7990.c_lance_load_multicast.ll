; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_lance_load_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_lance_load_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }
%struct.lance_private = type { %struct.lance_init_block* }
%struct.lance_init_block = type { i32* }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lance_load_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_load_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca %struct.lance_init_block*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dev_mc_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.lance_private* @netdev_priv(%struct.net_device* %10)
  store %struct.lance_private* %11, %struct.lance_private** %3, align 8
  %12 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %13 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %12, i32 0, i32 0
  %14 = load %struct.lance_init_block*, %struct.lance_init_block** %13, align 8
  store %struct.lance_init_block* %14, %struct.lance_init_block** %4, align 8
  %15 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %16 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %15, i32 0, i32 0
  %17 = bitcast i32** %16 to i32*
  store i32* %17, i32** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 2
  %20 = load %struct.dev_mc_list*, %struct.dev_mc_list** %19, align 8
  store %struct.dev_mc_list* %20, %struct.dev_mc_list** %6, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_ALLMULTI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %29 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %28, i32 0, i32 0
  %30 = load volatile i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 -1, i32* %31, align 4
  %32 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %33 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %32, i32 0, i32 0
  %34 = load volatile i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 -1, i32* %35, align 4
  br label %83

36:                                               ; preds = %1
  %37 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %38 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %37, i32 0, i32 0
  %39 = load volatile i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %42 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %41, i32 0, i32 0
  %43 = load volatile i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 0, i32* %44, align 4
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %79, %36
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %45
  %52 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %53 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %7, align 8
  %55 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %56 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %55, i32 0, i32 1
  %57 = load %struct.dev_mc_list*, %struct.dev_mc_list** %56, align 8
  store %struct.dev_mc_list* %57, %struct.dev_mc_list** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %51
  br label %79

64:                                               ; preds = %51
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @ether_crc_le(i32 6, i8* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = ashr i32 %67, 26
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 15
  %71 = shl i32 1, %70
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load volatile i32, i32* %76, align 4
  %78 = or i32 %77, %71
  store volatile i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %64, %63
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %45

82:                                               ; preds = %45
  br label %83

83:                                               ; preds = %82, %27
  ret void
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_crc_le(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
