; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_common_newlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_common_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64, i32, %struct.macvlan_port* }
%struct.macvlan_port = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type opaque
%struct.sk_buff.0 = type opaque
%struct.macvlan_dev = type { i32 (%struct.sk_buff.1*)*, i32 (%struct.net_device*, %struct.sk_buff.2*)*, i64, i32, %struct.macvlan_port*, %struct.net_device*, %struct.net_device* }
%struct.sk_buff.1 = type opaque
%struct.sk_buff.2 = type opaque
%struct.net = type { i32 }
%struct.TYPE_2__ = type { %struct.net* }

@IFLA_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8
@IFLA_ADDRESS = common dso_local global i64 0, align 8
@MACVLAN_MODE_VEPA = common dso_local global i64 0, align 8
@IFLA_MACVLAN_MODE = common dso_local global i64 0, align 8
@MACVLAN_MODE_PASSTHRU = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @macvlan_common_newlink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, i32 (%struct.sk_buff*)* %3, i32 (%struct.net_device*, %struct.sk_buff.0*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca i32 (%struct.sk_buff*)*, align 8
  %11 = alloca i32 (%struct.net_device*, %struct.sk_buff.0*)*, align 8
  %12 = alloca %struct.macvlan_dev*, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.macvlan_port*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.macvlan_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store i32 (%struct.sk_buff*)* %3, i32 (%struct.sk_buff*)** %10, align 8
  store i32 (%struct.net_device*, %struct.sk_buff.0*)* %4, i32 (%struct.net_device*, %struct.sk_buff.0*)** %11, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %18)
  store %struct.macvlan_dev* %19, %struct.macvlan_dev** %12, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.net*, %struct.net** %22, align 8
  store %struct.net* %23, %struct.net** %13, align 8
  %24 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %25 = load i64, i64* @IFLA_LINK, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %196

32:                                               ; preds = %5
  %33 = load %struct.net*, %struct.net** %13, align 8
  %34 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %35 = load i64, i64* @IFLA_LINK, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i64 @nla_get_u32(%struct.nlattr* %37)
  %39 = call %struct.net_device* @__dev_get_by_index(%struct.net* %33, i64 %38)
  store %struct.net_device* %39, %struct.net_device** %15, align 8
  %40 = load %struct.net_device*, %struct.net_device** %15, align 8
  %41 = icmp eq %struct.net_device* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %196

45:                                               ; preds = %32
  %46 = load %struct.net_device*, %struct.net_device** %15, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.net_device*, %struct.net_device** %15, align 8
  %55 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %54)
  store %struct.macvlan_dev* %55, %struct.macvlan_dev** %17, align 8
  %56 = load %struct.macvlan_dev*, %struct.macvlan_dev** %17, align 8
  %57 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %56, i32 0, i32 6
  %58 = load %struct.net_device*, %struct.net_device** %57, align 8
  store %struct.net_device* %58, %struct.net_device** %15, align 8
  br label %59

59:                                               ; preds = %53, %45
  %60 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %61 = load i64, i64* @IFLA_MTU, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.net_device*, %struct.net_device** %15, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  br label %83

71:                                               ; preds = %59
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %15, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %196

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %65
  %84 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %85 = load i64, i64* @IFLA_ADDRESS, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = icmp ne %struct.nlattr* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %83
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @random_ether_addr(i32 %92)
  br label %94

94:                                               ; preds = %89, %83
  %95 = load %struct.net_device*, %struct.net_device** %15, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 3
  %97 = load %struct.macvlan_port*, %struct.macvlan_port** %96, align 8
  %98 = icmp eq %struct.macvlan_port* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.net_device*, %struct.net_device** %15, align 8
  %101 = call i32 @macvlan_port_create(%struct.net_device* %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %6, align 4
  br label %196

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %94
  %108 = load %struct.net_device*, %struct.net_device** %15, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 3
  %110 = load %struct.macvlan_port*, %struct.macvlan_port** %109, align 8
  store %struct.macvlan_port* %110, %struct.macvlan_port** %14, align 8
  %111 = load %struct.macvlan_port*, %struct.macvlan_port** %14, align 8
  %112 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %196

118:                                              ; preds = %107
  %119 = load %struct.net_device*, %struct.net_device** %15, align 8
  %120 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %121 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %120, i32 0, i32 6
  store %struct.net_device* %119, %struct.net_device** %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %7, align 8
  %123 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %124 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %123, i32 0, i32 5
  store %struct.net_device* %122, %struct.net_device** %124, align 8
  %125 = load %struct.macvlan_port*, %struct.macvlan_port** %14, align 8
  %126 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %127 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %126, i32 0, i32 4
  store %struct.macvlan_port* %125, %struct.macvlan_port** %127, align 8
  %128 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %10, align 8
  %129 = bitcast i32 (%struct.sk_buff*)* %128 to i32 (%struct.sk_buff.1*)*
  %130 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %131 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %130, i32 0, i32 0
  store i32 (%struct.sk_buff.1*)* %129, i32 (%struct.sk_buff.1*)** %131, align 8
  %132 = load i32 (%struct.net_device*, %struct.sk_buff.0*)*, i32 (%struct.net_device*, %struct.sk_buff.0*)** %11, align 8
  %133 = bitcast i32 (%struct.net_device*, %struct.sk_buff.0*)* %132 to i32 (%struct.net_device*, %struct.sk_buff.2*)*
  %134 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %135 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %134, i32 0, i32 1
  store i32 (%struct.net_device*, %struct.sk_buff.2*)* %133, i32 (%struct.net_device*, %struct.sk_buff.2*)** %135, align 8
  %136 = load i64, i64* @MACVLAN_MODE_VEPA, align 8
  %137 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %138 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %137, i32 0, i32 2
  store i64 %136, i64* %138, align 8
  %139 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %140 = icmp ne %struct.nlattr** %139, null
  br i1 %140, label %141, label %155

141:                                              ; preds = %118
  %142 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %143 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %144 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %142, i64 %143
  %145 = load %struct.nlattr*, %struct.nlattr** %144, align 8
  %146 = icmp ne %struct.nlattr* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  %148 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %149 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %150 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %148, i64 %149
  %151 = load %struct.nlattr*, %struct.nlattr** %150, align 8
  %152 = call i64 @nla_get_u32(%struct.nlattr* %151)
  %153 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %154 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %147, %141, %118
  %156 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %157 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @MACVLAN_MODE_PASSTHRU, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %180

161:                                              ; preds = %155
  %162 = load %struct.macvlan_port*, %struct.macvlan_port** %14, align 8
  %163 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %162, i32 0, i32 1
  %164 = call i32 @list_empty(i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %6, align 4
  br label %196

169:                                              ; preds = %161
  %170 = load %struct.macvlan_port*, %struct.macvlan_port** %14, align 8
  %171 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %170, i32 0, i32 0
  store i32 1, i32* %171, align 4
  %172 = load %struct.net_device*, %struct.net_device** %7, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.net_device*, %struct.net_device** %15, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @ETH_ALEN, align 4
  %179 = call i32 @memcpy(i32 %174, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %169, %155
  %181 = load %struct.net_device*, %struct.net_device** %7, align 8
  %182 = call i32 @register_netdevice(%struct.net_device* %181)
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* %16, align 4
  store i32 %186, i32* %6, align 4
  br label %196

187:                                              ; preds = %180
  %188 = load %struct.macvlan_dev*, %struct.macvlan_dev** %12, align 8
  %189 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %188, i32 0, i32 3
  %190 = load %struct.macvlan_port*, %struct.macvlan_port** %14, align 8
  %191 = getelementptr inbounds %struct.macvlan_port, %struct.macvlan_port* %190, i32 0, i32 1
  %192 = call i32 @list_add_tail_rcu(i32* %189, i32* %191)
  %193 = load %struct.net_device*, %struct.net_device** %15, align 8
  %194 = load %struct.net_device*, %struct.net_device** %7, align 8
  %195 = call i32 @netif_stacked_transfer_operstate(%struct.net_device* %193, %struct.net_device* %194)
  store i32 0, i32* %6, align 4
  br label %196

196:                                              ; preds = %187, %185, %166, %115, %104, %79, %42, %29
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @netdev_extended(%struct.net_device*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @random_ether_addr(i32) #1

declare dso_local i32 @macvlan_port_create(%struct.net_device*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @netif_stacked_transfer_operstate(%struct.net_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
