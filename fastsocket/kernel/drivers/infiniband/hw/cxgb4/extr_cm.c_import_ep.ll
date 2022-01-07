; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_cm.c_import_ep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_cm.c_import_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { i32, i32, i32, i64, i64, i32, i8*, i32, i8* }
%struct.dst_entry = type { i32 }
%struct.c4iw_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32 }
%struct.neighbour = type { %struct.net_device* }
%struct.net_device = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_ep*, i32, %struct.dst_entry*, %struct.c4iw_dev*, i32)* @import_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @import_ep(%struct.c4iw_ep* %0, i32 %1, %struct.dst_entry* %2, %struct.c4iw_dev* %3, i32 %4) #0 {
  %6 = alloca %struct.c4iw_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.c4iw_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.neighbour*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  store %struct.c4iw_ep* %0, %struct.c4iw_ep** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dst_entry* %2, %struct.dst_entry** %8, align 8
  store %struct.c4iw_dev* %3, %struct.c4iw_dev** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %17 = call %struct.neighbour* @dst_get_neighbour_noref(%struct.dst_entry* %16)
  store %struct.neighbour* %17, %struct.neighbour** %11, align 8
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %21 = icmp ne %struct.neighbour* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  br label %220

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  %26 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %27 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %26, i32 0, i32 0
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_LOOPBACK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %122

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.net_device* @ip_dev_find(i32* @init_net, i32 %35)
  store %struct.net_device* %36, %struct.net_device** %14, align 8
  %37 = load %struct.net_device*, %struct.net_device** %14, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %12, align 4
  br label %220

42:                                               ; preds = %34
  %43 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %44 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %49 = load %struct.net_device*, %struct.net_device** %14, align 8
  %50 = call i8* @cxgb4_l2t_get(i32 %47, %struct.neighbour* %48, %struct.net_device* %49, i32 0)
  %51 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %52 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %54 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %53, i32 0, i32 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %42
  br label %220

58:                                               ; preds = %42
  %59 = load %struct.net_device*, %struct.net_device** %14, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %63 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  %64 = load %struct.net_device*, %struct.net_device** %14, align 8
  %65 = call i8* @cxgb4_port_chan(%struct.net_device* %64)
  %66 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %67 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load %struct.net_device*, %struct.net_device** %14, align 8
  %69 = call i32 @cxgb4_port_viid(%struct.net_device* %68)
  %70 = and i32 %69, 127
  %71 = shl i32 %70, 1
  %72 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %73 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %75 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %80 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %78, %83
  store i32 %84, i32* %13, align 4
  %85 = load %struct.net_device*, %struct.net_device** %14, align 8
  %86 = call i32 @cxgb4_port_idx(%struct.net_device* %85)
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %90 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %92 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %97 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %95, %100
  store i32 %101, i32* %13, align 4
  %102 = load %struct.net_device*, %struct.net_device** %14, align 8
  %103 = call i32 @cxgb4_port_idx(%struct.net_device* %102)
  %104 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %105 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %107 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.net_device*, %struct.net_device** %14, align 8
  %112 = call i32 @cxgb4_port_idx(%struct.net_device* %111)
  %113 = load i32, i32* %13, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %110, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %119 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  %120 = load %struct.net_device*, %struct.net_device** %14, align 8
  %121 = call i32 @dev_put(%struct.net_device* %120)
  br label %219

122:                                              ; preds = %23
  %123 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %124 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %129 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %130 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %129, i32 0, i32 0
  %131 = load %struct.net_device*, %struct.net_device** %130, align 8
  %132 = call i8* @cxgb4_l2t_get(i32 %127, %struct.neighbour* %128, %struct.net_device* %131, i32 0)
  %133 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %134 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %133, i32 0, i32 8
  store i8* %132, i8** %134, align 8
  %135 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %136 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %135, i32 0, i32 8
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %122
  br label %220

140:                                              ; preds = %122
  %141 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %142 = call i32 @dst_mtu(%struct.dst_entry* %141)
  %143 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %144 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 8
  %145 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %146 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %145, i32 0, i32 0
  %147 = load %struct.net_device*, %struct.net_device** %146, align 8
  %148 = call i8* @cxgb4_port_chan(%struct.net_device* %147)
  %149 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %150 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %149, i32 0, i32 6
  store i8* %148, i8** %150, align 8
  %151 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %152 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %151, i32 0, i32 0
  %153 = load %struct.net_device*, %struct.net_device** %152, align 8
  %154 = call i32 @cxgb4_port_viid(%struct.net_device* %153)
  %155 = and i32 %154, 127
  %156 = shl i32 %155, 1
  %157 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %158 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %160 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %165 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sdiv i32 %163, %168
  store i32 %169, i32* %13, align 4
  %170 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %171 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %170, i32 0, i32 0
  %172 = load %struct.net_device*, %struct.net_device** %171, align 8
  %173 = call i32 @cxgb4_port_idx(%struct.net_device* %172)
  %174 = load i32, i32* %13, align 4
  %175 = mul nsw i32 %173, %174
  %176 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %177 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %179 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %178, i32 0, i32 0
  %180 = load %struct.net_device*, %struct.net_device** %179, align 8
  %181 = call i32 @cxgb4_port_idx(%struct.net_device* %180)
  %182 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %183 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %185 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %190 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sdiv i32 %188, %193
  store i32 %194, i32* %13, align 4
  %195 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  %196 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %201 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %200, i32 0, i32 0
  %202 = load %struct.net_device*, %struct.net_device** %201, align 8
  %203 = call i32 @cxgb4_port_idx(%struct.net_device* %202)
  %204 = load i32, i32* %13, align 4
  %205 = mul nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %199, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %210 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %140
  %214 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %215 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %214, i32 0, i32 4
  store i64 0, i64* %215, align 8
  %216 = load %struct.c4iw_ep*, %struct.c4iw_ep** %6, align 8
  %217 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %216, i32 0, i32 3
  store i64 0, i64* %217, align 8
  br label %218

218:                                              ; preds = %213, %140
  br label %219

219:                                              ; preds = %218, %58
  store i32 0, i32* %12, align 4
  br label %220

220:                                              ; preds = %219, %139, %57, %39, %22
  %221 = call i32 (...) @rcu_read_unlock()
  %222 = load i32, i32* %12, align 4
  ret i32 %222
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.neighbour* @dst_get_neighbour_noref(%struct.dst_entry*) #1

declare dso_local %struct.net_device* @ip_dev_find(i32*, i32) #1

declare dso_local i8* @cxgb4_l2t_get(i32, %struct.neighbour*, %struct.net_device*, i32) #1

declare dso_local i8* @cxgb4_port_chan(%struct.net_device*) #1

declare dso_local i32 @cxgb4_port_viid(%struct.net_device*) #1

declare dso_local i32 @cxgb4_port_idx(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
