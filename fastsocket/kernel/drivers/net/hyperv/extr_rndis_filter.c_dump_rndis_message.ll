; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_dump_rndis_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_rndis_filter.c_dump_rndis_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.rndis_message = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.netvsc_device = type { %struct.net_device* }

@.str = private unnamed_addr constant [118 x i8] c"RNDIS_MSG_PACKET (len %u, data offset %u data len %u, # oob %u, oob offset %u, oob len %u, pkt offset %u, pkt len %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [135 x i8] c"RNDIS_MSG_INIT_C (len %u, id 0x%x, status 0x%x, major %d, minor %d, device flags %d, max xfer size 0x%x, max pkts %u, pkt aligned %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"RNDIS_MSG_QUERY_C (len %u, id 0x%x, status 0x%x, buf len %u, buf offset %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"RNDIS_MSG_SET_C (len %u, id 0x%x, status 0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"RNDIS_MSG_INDICATE (len %u, status 0x%x, buf len %u, buf offset %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"0x%x (len %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.rndis_message*)* @dump_rndis_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_rndis_message(%struct.hv_device* %0, %struct.rndis_message* %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.rndis_message*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store %struct.rndis_message* %1, %struct.rndis_message** %4, align 8
  %7 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %8 = call %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device* %7)
  store %struct.netvsc_device* %8, %struct.netvsc_device** %6, align 8
  %9 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %10 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %13 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %165 [
    i32 130, label %15
    i32 131, label %56
    i32 129, label %102
    i32 128, label %128
    i32 132, label %144
  ]

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %18 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %21 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %26 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %31 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %36 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %41 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %46 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %51 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %16, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24, i32 %29, i32 %34, i32 %39, i32 %44, i32 %49, i32 %54)
  br label %174

56:                                               ; preds = %2
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %59 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %62 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %67 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %72 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %77 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %82 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %87 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %92 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %97 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %57, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %65, i32 %70, i32 %75, i32 %80, i32 %85, i32 %90, i32 %95, i32 %100)
  br label %174

102:                                              ; preds = %2
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %105 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %108 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %113 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %118 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %123 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %103, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %111, i32 %116, i32 %121, i32 %126)
  br label %174

128:                                              ; preds = %2
  %129 = load %struct.net_device*, %struct.net_device** %5, align 8
  %130 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %131 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %134 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %139 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %129, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %132, i32 %137, i32 %142)
  br label %174

144:                                              ; preds = %2
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %147 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %150 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %155 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %160 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %145, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %148, i32 %153, i32 %158, i32 %163)
  br label %174

165:                                              ; preds = %2
  %166 = load %struct.net_device*, %struct.net_device** %5, align 8
  %167 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %168 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %171 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (%struct.net_device*, i8*, i32, i32, ...) @netdev_dbg(%struct.net_device* %166, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %165, %144, %128, %102, %56, %15
  ret void
}

declare dso_local %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
