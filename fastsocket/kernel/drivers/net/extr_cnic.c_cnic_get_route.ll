; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_get_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_get_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i32, i32, i64, i32, i32*, i32, %struct.cnic_dev* }
%struct.cnic_dev = type { %struct.net_device*, %struct.cnic_local* }
%struct.net_device = type { i32 }
%struct.cnic_local = type { i32 }
%struct.cnic_sockaddr = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.dst_entry = type { i64 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SK_F_IPV6 = common dso_local global i32 0, align 4
@CNIC_LOCAL_PORT_MIN = common dso_local global i32 0, align 4
@CNIC_LOCAL_PORT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_sock*, %struct.cnic_sockaddr*)* @cnic_get_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_get_route(%struct.cnic_sock* %0, %struct.cnic_sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_sock*, align 8
  %5 = alloca %struct.cnic_sockaddr*, align 8
  %6 = alloca %struct.cnic_dev*, align 8
  %7 = alloca %struct.cnic_local*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %4, align 8
  store %struct.cnic_sockaddr* %1, %struct.cnic_sockaddr** %5, align 8
  %15 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %16 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %15, i32 0, i32 6
  %17 = load %struct.cnic_dev*, %struct.cnic_dev** %16, align 8
  store %struct.cnic_dev* %17, %struct.cnic_dev** %6, align 8
  %18 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %19 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %18, i32 0, i32 1
  %20 = load %struct.cnic_local*, %struct.cnic_local** %19, align 8
  store %struct.cnic_local* %20, %struct.cnic_local** %7, align 8
  store i32 0, i32* %9, align 4
  store %struct.dst_entry* null, %struct.dst_entry** %10, align 8
  %21 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %22 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_INET6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %30 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_INET6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %58

37:                                               ; preds = %28, %2
  %38 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %39 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %47 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF_INET, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %57

54:                                               ; preds = %45, %37
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %200

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* @SK_F_IPV6, align 4
  %60 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %61 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %60, i32 0, i32 5
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %58
  %66 = load i32, i32* @SK_F_IPV6, align 4
  %67 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %68 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %67, i32 0, i32 5
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  %70 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %71 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = call i32 @cnic_get_v6_route(%struct.TYPE_13__* %72, %struct.dst_entry** %10)
  %74 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %75 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %79 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = call i32 @memcpy(i32* %77, i32* %81, i32 4)
  %83 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %84 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %89 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %91 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %12, align 4
  br label %122

95:                                               ; preds = %58
  %96 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %97 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = call i32 @cnic_get_v4_route(%struct.TYPE_14__* %98, %struct.dst_entry** %10)
  %100 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %101 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %107 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %105, i32* %109, align 4
  %110 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %111 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %116 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %118 = getelementptr inbounds %struct.cnic_sockaddr, %struct.cnic_sockaddr* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %95, %65
  %123 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %124 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  %125 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %126 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %125, i32 0, i32 0
  %127 = load %struct.net_device*, %struct.net_device** %126, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %131 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %133 = icmp ne %struct.dst_entry* %132, null
  br i1 %133, label %134, label %158

134:                                              ; preds = %122
  %135 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %136 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %134
  %140 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %141 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @cnic_get_vlan(i64 %142, %struct.net_device** %11)
  store i64 %143, i64* %14, align 8
  %144 = load %struct.net_device*, %struct.net_device** %11, align 8
  %145 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %146 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %145, i32 0, i32 0
  %147 = load %struct.net_device*, %struct.net_device** %146, align 8
  %148 = icmp eq %struct.net_device* %144, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %139
  %150 = load i64, i64* %14, align 8
  %151 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %152 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  %153 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %154 = call i32 @dst_mtu(%struct.dst_entry* %153)
  %155 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %156 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %149, %139
  br label %158

158:                                              ; preds = %157, %134, %122
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @be16_to_cpu(i32 %159)
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @CNIC_LOCAL_PORT_MIN, align 4
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %158
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @CNIC_LOCAL_PORT_MAX, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  %170 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %169, i32 0, i32 0
  %171 = load i32, i32* %13, align 4
  %172 = call i64 @cnic_alloc_id(i32* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i32 0, i32* %13, align 4
  br label %175

175:                                              ; preds = %174, %168
  br label %177

176:                                              ; preds = %164, %158
  store i32 0, i32* %13, align 4
  br label %177

177:                                              ; preds = %176, %175
  %178 = load i32, i32* %13, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %192, label %180

180:                                              ; preds = %177
  %181 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  %182 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %181, i32 0, i32 0
  %183 = call i32 @cnic_alloc_new_id(i32* %182)
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %9, align 4
  br label %196

189:                                              ; preds = %180
  %190 = load i32, i32* %13, align 4
  %191 = call i32 @cpu_to_be16(i32 %190)
  store i32 %191, i32* %12, align 4
  br label %192

192:                                              ; preds = %189, %177
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %195 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %192, %186
  %197 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %198 = call i32 @dst_release(%struct.dst_entry* %197)
  %199 = load i32, i32* %9, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %196, %54
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cnic_get_v6_route(%struct.TYPE_13__*, %struct.dst_entry**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cnic_get_v4_route(%struct.TYPE_14__*, %struct.dst_entry**) #1

declare dso_local i64 @cnic_get_vlan(i64, %struct.net_device**) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @cnic_alloc_id(i32*, i32) #1

declare dso_local i32 @cnic_alloc_new_id(i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
