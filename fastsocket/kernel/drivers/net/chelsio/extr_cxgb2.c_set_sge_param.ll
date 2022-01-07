; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_set_sge_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_set_sge_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.adapter* }
%struct.adapter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i32* }
%struct.ethtool_ringparam = type { i64, i64, i32, i64 }

@MAX_RX_BUFFERS = common dso_local global i64 0, align 8
@MAX_RX_JUMBO_BUFFERS = common dso_local global i64 0, align 8
@MAX_CMDQ_ENTRIES = common dso_local global i32 0, align 4
@MIN_FL_ENTRIES = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FULL_INIT_DONE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MAX_CMDQ1_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @set_sge_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sge_param(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.adapter*, %struct.adapter** %9, align 8
  store %struct.adapter* %10, %struct.adapter** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %6, align 8
  %12 = call i64 @t1_is_T1B(%struct.adapter* %11)
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MAX_RX_BUFFERS, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %63, label %21

21:                                               ; preds = %2
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %21
  %27 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MAX_RX_JUMBO_BUFFERS, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %63, label %32

32:                                               ; preds = %26
  %33 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MAX_CMDQ_ENTRIES, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %63, label %38

38:                                               ; preds = %32
  %39 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MIN_FL_ENTRIES, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %63, label %44

44:                                               ; preds = %38
  %45 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MIN_FL_ENTRIES, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %63, label %50

50:                                               ; preds = %44
  %51 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.adapter*, %struct.adapter** %6, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %60 = add nsw i32 %59, 1
  %61 = mul nsw i32 %58, %60
  %62 = icmp slt i32 %53, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %50, %44, %38, %32, %26, %21, %2
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %130

66:                                               ; preds = %50
  %67 = load %struct.adapter*, %struct.adapter** %6, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FULL_INIT_DONE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %130

76:                                               ; preds = %66
  %77 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.adapter*, %struct.adapter** %6, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %84, i64 %89
  store i64 %79, i64* %90, align 8
  %91 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.adapter*, %struct.adapter** %6, align 8
  %95 = getelementptr inbounds %struct.adapter, %struct.adapter* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 %93, i64* %101, align 8
  %102 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.adapter*, %struct.adapter** %6, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %104, i32* %110, align 4
  %111 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %112 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MAX_CMDQ1_ENTRIES, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %76
  %117 = load i32, i32* @MAX_CMDQ1_ENTRIES, align 4
  br label %122

118:                                              ; preds = %76
  %119 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  br label %122

122:                                              ; preds = %118, %116
  %123 = phi i32 [ %117, %116 ], [ %121, %118 ]
  %124 = load %struct.adapter*, %struct.adapter** %6, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %123, i32* %129, align 4
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %122, %73, %63
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @t1_is_T1B(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
