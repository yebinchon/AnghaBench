; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_macvlan_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_macvlan_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.vfpf_set_q_filters_tlv = type { i32, %struct.vfpf_q_mac_vlan_filter* }
%struct.vfpf_q_mac_vlan_filter = type { i32, i32, i32 }
%struct.bnx2x_vfop_filters = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFPF_Q_FILTER_DEST_MAC_VALID = common dso_local global i32 0, align 4
@BNX2X_VFOP_FILTER_MAC = common dso_local global i32 0, align 4
@BNX2X_VFOP_FILTER_VLAN = common dso_local global i32 0, align 4
@VFPF_Q_FILTER_SET_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.vfpf_set_q_filters_tlv*, %struct.bnx2x_vfop_filters**, i32)* @bnx2x_vf_mbx_macvlan_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vf_mbx_macvlan_list(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.vfpf_set_q_filters_tlv* %2, %struct.bnx2x_vfop_filters** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.bnx2x_virtf*, align 8
  %9 = alloca %struct.vfpf_set_q_filters_tlv*, align 8
  %10 = alloca %struct.bnx2x_vfop_filters**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bnx2x_vfop_filters*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.vfpf_q_mac_vlan_filter*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %8, align 8
  store %struct.vfpf_set_q_filters_tlv* %2, %struct.vfpf_set_q_filters_tlv** %9, align 8
  store %struct.bnx2x_vfop_filters** %3, %struct.bnx2x_vfop_filters*** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.bnx2x_vfop_filters* null, %struct.bnx2x_vfop_filters** %14, align 8
  %17 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %18 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %21, 16
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %15, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.bnx2x_vfop_filters* @kzalloc(i64 %23, i32 %24)
  store %struct.bnx2x_vfop_filters* %25, %struct.bnx2x_vfop_filters** %14, align 8
  %26 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %27 = icmp ne %struct.bnx2x_vfop_filters* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %140

31:                                               ; preds = %5
  %32 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %33 = getelementptr inbounds %struct.bnx2x_vfop_filters, %struct.bnx2x_vfop_filters* %32, i32 0, i32 0
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %125, %31
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %38 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %128

41:                                               ; preds = %35
  %42 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %43 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %42, i32 0, i32 1
  %44 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %44, i64 %46
  store %struct.vfpf_q_mac_vlan_filter* %47, %struct.vfpf_q_mac_vlan_filter** %16, align 8
  %48 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %16, align 8
  %49 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %125

56:                                               ; preds = %41
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @VFPF_Q_FILTER_DEST_MAC_VALID, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %16, align 8
  %62 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %65 = getelementptr inbounds %struct.bnx2x_vfop_filters, %struct.bnx2x_vfop_filters* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  store i32 %63, i32* %70, align 4
  %71 = load i32, i32* @BNX2X_VFOP_FILTER_MAC, align 4
  %72 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %73 = getelementptr inbounds %struct.bnx2x_vfop_filters, %struct.bnx2x_vfop_filters* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i32 %71, i32* %78, align 4
  br label %98

79:                                               ; preds = %56
  %80 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %16, align 8
  %81 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %84 = getelementptr inbounds %struct.bnx2x_vfop_filters, %struct.bnx2x_vfop_filters* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 %82, i32* %89, align 4
  %90 = load i32, i32* @BNX2X_VFOP_FILTER_VLAN, align 4
  %91 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %92 = getelementptr inbounds %struct.bnx2x_vfop_filters, %struct.bnx2x_vfop_filters* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i32 %90, i32* %97, align 4
  br label %98

98:                                               ; preds = %79, %60
  %99 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %16, align 8
  %100 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @VFPF_Q_FILTER_SET_MAC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  %107 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %108 = getelementptr inbounds %struct.bnx2x_vfop_filters, %struct.bnx2x_vfop_filters* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 %106, i32* %113, align 4
  %114 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %115 = getelementptr inbounds %struct.bnx2x_vfop_filters, %struct.bnx2x_vfop_filters* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %123 = getelementptr inbounds %struct.bnx2x_vfop_filters, %struct.bnx2x_vfop_filters* %122, i32 0, i32 0
  %124 = call i32 @list_add_tail(i32* %121, i32* %123)
  br label %125

125:                                              ; preds = %98, %55
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %35

128:                                              ; preds = %35
  %129 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %130 = getelementptr inbounds %struct.bnx2x_vfop_filters, %struct.bnx2x_vfop_filters* %129, i32 0, i32 0
  %131 = call i64 @list_empty(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %135 = call i32 @kfree(%struct.bnx2x_vfop_filters* %134)
  br label %139

136:                                              ; preds = %128
  %137 = load %struct.bnx2x_vfop_filters*, %struct.bnx2x_vfop_filters** %14, align 8
  %138 = load %struct.bnx2x_vfop_filters**, %struct.bnx2x_vfop_filters*** %10, align 8
  store %struct.bnx2x_vfop_filters* %137, %struct.bnx2x_vfop_filters** %138, align 8
  br label %139

139:                                              ; preds = %136, %133
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %139, %28
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local %struct.bnx2x_vfop_filters* @kzalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.bnx2x_vfop_filters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
