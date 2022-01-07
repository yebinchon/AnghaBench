; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_drv_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.net_device*)* }
%struct.net_device = type { i32, i32, i32*, i64, i32, i32* }
%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.resource = type { i64 }
%struct.sh_eth_private = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32 }
%struct.sh_eth_plat_data = type { i32, i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not allocate device.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@sh_eth_my_cpu_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@sh_eth_netdev_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@POST_RX = common dso_local global i32 0, align 4
@POST_FW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Base address at 0x%x, \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%02X:\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%02X, IRQ %d.\0A\00", align 1
@SH_TSU_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_eth_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.sh_eth_private*, align 8
  %10 = alloca %struct.sh_eth_plat_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  store %struct.net_device* null, %struct.net_device** %8, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @IORESOURCE_MEM, align 4
  %13 = call %struct.resource* @platform_get_resource(%struct.platform_device* %11, i32 %12, i32 0)
  store %struct.resource* %13, %struct.resource** %7, align 8
  %14 = load %struct.resource*, %struct.resource** %7, align 8
  %15 = icmp eq %struct.resource* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = call i32 @dev_err(%struct.TYPE_6__* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %202

25:                                               ; preds = %1
  %26 = call %struct.net_device* @alloc_etherdev(i32 40)
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = call i32 @dev_err(%struct.TYPE_6__* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %202

35:                                               ; preds = %25
  %36 = load %struct.resource*, %struct.resource** %7, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %35
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @platform_get_irq(%struct.platform_device* %50, i32 0)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %195

57:                                               ; preds = %47
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 1
  %64 = call i32 @SET_NETDEV_DEV(%struct.net_device* %61, %struct.TYPE_6__* %63)
  %65 = load %struct.net_device*, %struct.net_device** %8, align 8
  %66 = call i32 @ether_setup(%struct.net_device* %65)
  %67 = load %struct.net_device*, %struct.net_device** %8, align 8
  %68 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %67)
  store %struct.sh_eth_private* %68, %struct.sh_eth_private** %9, align 8
  %69 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %70 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %69, i32 0, i32 7
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.sh_eth_plat_data*
  store %struct.sh_eth_plat_data* %76, %struct.sh_eth_plat_data** %10, align 8
  %77 = load %struct.sh_eth_plat_data*, %struct.sh_eth_plat_data** %10, align 8
  %78 = getelementptr inbounds %struct.sh_eth_plat_data, %struct.sh_eth_plat_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %81 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sh_eth_plat_data*, %struct.sh_eth_plat_data** %10, align 8
  %83 = getelementptr inbounds %struct.sh_eth_plat_data, %struct.sh_eth_plat_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %86 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sh_eth_plat_data*, %struct.sh_eth_plat_data** %10, align 8
  %88 = getelementptr inbounds %struct.sh_eth_plat_data, %struct.sh_eth_plat_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %91 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load %struct.sh_eth_plat_data*, %struct.sh_eth_plat_data** %10, align 8
  %93 = getelementptr inbounds %struct.sh_eth_plat_data, %struct.sh_eth_plat_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %96 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %98 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %97, i32 0, i32 2
  store %struct.TYPE_5__* @sh_eth_my_cpu_data, %struct.TYPE_5__** %98, align 8
  %99 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %100 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = call i32 @sh_eth_set_default_cpu_data(%struct.TYPE_5__* %101)
  %103 = load %struct.net_device*, %struct.net_device** %8, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 5
  store i32* @sh_eth_netdev_ops, i32** %104, align 8
  %105 = load i32, i32* @TX_TIMEOUT, align 4
  %106 = load %struct.net_device*, %struct.net_device** %8, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @POST_RX, align 4
  %109 = load i32, i32* %6, align 4
  %110 = shl i32 %109, 1
  %111 = ashr i32 %108, %110
  %112 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %113 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @POST_FW, align 4
  %115 = load i32, i32* %6, align 4
  %116 = shl i32 %115, 1
  %117 = ashr i32 %114, %116
  %118 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %119 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.net_device*, %struct.net_device** %8, align 8
  %121 = call i32 @read_mac_address(%struct.net_device* %120)
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %57
  %125 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %126 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %125, i32 0, i32 2
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %128, align 8
  %130 = icmp ne i32 (%struct.net_device*)* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %133 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %132, i32 0, i32 2
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %135, align 8
  %137 = load %struct.net_device*, %struct.net_device** %8, align 8
  %138 = call i32 %136(%struct.net_device* %137)
  br label %139

139:                                              ; preds = %131, %124
  br label %140

140:                                              ; preds = %139, %57
  %141 = load %struct.net_device*, %struct.net_device** %8, align 8
  %142 = call i32 @register_netdev(%struct.net_device* %141)
  store i32 %142, i32* %4, align 4
  %143 = load i32, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %195

146:                                              ; preds = %140
  %147 = load %struct.net_device*, %struct.net_device** %8, align 8
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @sh_mdio_init(%struct.net_device* %147, i32 %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %192

155:                                              ; preds = %146
  %156 = load %struct.net_device*, %struct.net_device** %8, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %159)
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %173, %155
  %162 = load i32, i32* %5, align 4
  %163 = icmp slt i32 %162, 5
  br i1 %163, label %164, label %176

164:                                              ; preds = %161
  %165 = load %struct.net_device*, %struct.net_device** %8, align 8
  %166 = getelementptr inbounds %struct.net_device, %struct.net_device* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %164
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  br label %161

176:                                              ; preds = %161
  %177 = load %struct.net_device*, %struct.net_device** %8, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.net_device*, %struct.net_device** %8, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %183, i32 %186)
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = load %struct.net_device*, %struct.net_device** %8, align 8
  %190 = call i32 @platform_set_drvdata(%struct.platform_device* %188, %struct.net_device* %189)
  %191 = load i32, i32* %4, align 4
  store i32 %191, i32* %2, align 4
  br label %204

192:                                              ; preds = %154
  %193 = load %struct.net_device*, %struct.net_device** %8, align 8
  %194 = call i32 @unregister_netdev(%struct.net_device* %193)
  br label %195

195:                                              ; preds = %192, %145, %54
  %196 = load %struct.net_device*, %struct.net_device** %8, align 8
  %197 = icmp ne %struct.net_device* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load %struct.net_device*, %struct.net_device** %8, align 8
  %200 = call i32 @free_netdev(%struct.net_device* %199)
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201, %29, %19
  %203 = load i32, i32* %4, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %202, %176
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sh_eth_set_default_cpu_data(%struct.TYPE_5__*) #1

declare dso_local i32 @read_mac_address(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @sh_mdio_init(%struct.net_device*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
