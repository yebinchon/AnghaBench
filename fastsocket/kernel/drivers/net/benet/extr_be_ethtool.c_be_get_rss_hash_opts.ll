; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_rss_hash_opts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_rss_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }

@RSS_ENABLE_IPV4 = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RSS_ENABLE_TCP_IPV4 = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@RSS_ENABLE_UDP_IPV4 = common dso_local global i32 0, align 4
@RSS_ENABLE_IPV6 = common dso_local global i32 0, align 4
@RSS_ENABLE_TCP_IPV6 = common dso_local global i32 0, align 4
@RSS_ENABLE_UDP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, i32)* @be_get_rss_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_rss_hash_opts(%struct.be_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %115 [
    i32 131, label %7
    i32 129, label %34
    i32 130, label %61
    i32 128, label %88
  ]

7:                                                ; preds = %2
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RSS_ENABLE_IPV4, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  %15 = load i32, i32* @RXH_IP_DST, align 4
  %16 = load i32, i32* @RXH_IP_SRC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %14, %7
  %21 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RSS_ENABLE_TCP_IPV4, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @RXH_L4_B_0_1, align 4
  %29 = load i32, i32* @RXH_L4_B_2_3, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %20
  br label %115

34:                                               ; preds = %2
  %35 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RSS_ENABLE_IPV4, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* @RXH_IP_DST, align 4
  %43 = load i32, i32* @RXH_IP_SRC, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RSS_ENABLE_UDP_IPV4, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @RXH_L4_B_0_1, align 4
  %56 = load i32, i32* @RXH_L4_B_2_3, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %47
  br label %115

61:                                               ; preds = %2
  %62 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RSS_ENABLE_IPV6, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* @RXH_IP_DST, align 4
  %70 = load i32, i32* @RXH_IP_SRC, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RSS_ENABLE_TCP_IPV6, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* @RXH_L4_B_0_1, align 4
  %83 = load i32, i32* @RXH_L4_B_2_3, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %74
  br label %115

88:                                               ; preds = %2
  %89 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RSS_ENABLE_IPV6, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* @RXH_IP_DST, align 4
  %97 = load i32, i32* @RXH_IP_SRC, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %95, %88
  %102 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RSS_ENABLE_UDP_IPV6, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* @RXH_L4_B_0_1, align 4
  %110 = load i32, i32* @RXH_L4_B_2_3, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %108, %101
  br label %115

115:                                              ; preds = %2, %114, %87, %60, %33
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
