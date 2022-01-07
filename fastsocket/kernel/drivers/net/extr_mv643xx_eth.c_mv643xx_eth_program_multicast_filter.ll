; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_program_multicast_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_program_multicast_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.dev_addr_list* }
%struct.dev_addr_list = type { i32*, %struct.dev_addr_list* }
%struct.mv643xx_eth_private = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\01\00^\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mv643xx_eth_program_multicast_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv643xx_eth_program_multicast_filter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dev_addr_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %13)
  store %struct.mv643xx_eth_private* %14, %struct.mv643xx_eth_private** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = load i32, i32* @IFF_ALLMULTI, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %57, %23
  %25 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %26 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  store i32 16843009, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %48, %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @SPECIAL_MCAST_TABLE(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @wrl(%struct.mv643xx_eth_private* %32, i64 %37, i32 %38)
  %40 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @OTHER_MCAST_TABLE(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @wrl(%struct.mv643xx_eth_private* %40, i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 4
  store i32 %50, i32* %7, align 4
  br label %28

51:                                               ; preds = %28
  br label %144

52:                                               ; preds = %1
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call i32* @kmalloc(i32 512, i32 %53)
  store i32* %54, i32** %4, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %24

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 64
  store i32* %60, i32** %5, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @memset(i32* %61, i32 0, i32 256)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @memset(i32* %63, i32 0, i32 256)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = load %struct.dev_addr_list*, %struct.dev_addr_list** %66, align 8
  store %struct.dev_addr_list* %67, %struct.dev_addr_list** %6, align 8
  br label %68

68:                                               ; preds = %99, %58
  %69 = load %struct.dev_addr_list*, %struct.dev_addr_list** %6, align 8
  %70 = icmp ne %struct.dev_addr_list* %69, null
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load %struct.dev_addr_list*, %struct.dev_addr_list** %6, align 8
  %73 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i64 @memcmp(i32* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i32*, i32** %4, align 8
  store i32* %79, i32** %11, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %12, align 4
  br label %87

83:                                               ; preds = %71
  %84 = load i32*, i32** %5, align 8
  store i32* %84, i32** %11, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @addr_crc(i32* %85)
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %12, align 4
  %89 = and i32 %88, 3
  %90 = mul nsw i32 8, %89
  %91 = shl i32 1, %90
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = ashr i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %91
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %87
  %100 = load %struct.dev_addr_list*, %struct.dev_addr_list** %6, align 8
  %101 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %100, i32 0, i32 1
  %102 = load %struct.dev_addr_list*, %struct.dev_addr_list** %101, align 8
  store %struct.dev_addr_list* %102, %struct.dev_addr_list** %6, align 8
  br label %68

103:                                              ; preds = %68
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %138, %103
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 256
  br i1 %106, label %107, label %141

107:                                              ; preds = %104
  %108 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %109 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %110 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @SPECIAL_MCAST_TABLE(i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %7, align 4
  %118 = ashr i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @wrl(%struct.mv643xx_eth_private* %108, i64 %115, i32 %121)
  %123 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %124 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %125 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @OTHER_MCAST_TABLE(i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* %7, align 4
  %133 = ashr i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @wrl(%struct.mv643xx_eth_private* %123, i64 %130, i32 %136)
  br label %138

138:                                              ; preds = %107
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %7, align 4
  br label %104

141:                                              ; preds = %104
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @kfree(i32* %142)
  br label %144

144:                                              ; preds = %141, %51
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wrl(%struct.mv643xx_eth_private*, i64, i32) #1

declare dso_local i64 @SPECIAL_MCAST_TABLE(i32) #1

declare dso_local i64 @OTHER_MCAST_TABLE(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @addr_crc(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
