; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_arp_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_utils.c_nes_arp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { %struct.nes_adapter* }
%struct.nes_adapter = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@NES_ARP_ADD = common dso_local global i64 0, align 8
@NES_RESOURCE_ARP = common dso_local global i32 0, align 4
@NES_DBG_NETDEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"nes_alloc_resource returned error = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ADD, arp_index=%d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"MAC for %pI4 not in ARP table - cannot %s\0A\00", align 1
@NES_ARP_RESOLVE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"resolve\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"RESOLVE, arp_index=%d\0A\00", align 1
@NES_ARP_DELETE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"DELETE, arp_index=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nes_arp_table(%struct.nes_device* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nes_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %15 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %14, i32 0, i32 0
  %16 = load %struct.nes_adapter*, %struct.nes_adapter** %15, align 8
  store %struct.nes_adapter* %16, %struct.nes_adapter** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %37, %4
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %21 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %26 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %40

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %17

40:                                               ; preds = %35, %17
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @NES_ARP_ADD, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %97

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %48 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %157

52:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  %53 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %54 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %55 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %58 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = bitcast i32* %11 to i64*
  %62 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %63 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %62, i32 0, i32 3
  %64 = load i32, i32* @NES_RESOURCE_ARP, align 4
  %65 = call i32 @nes_alloc_resource(%struct.nes_adapter* %53, i32 %56, i32 %60, i64* %61, i32* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %52
  %69 = load i32, i32* @NES_DBG_NETDEV, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %5, align 4
  br label %157

73:                                               ; preds = %52
  %74 = load i32, i32* @NES_DBG_NETDEV, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %79 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %77, i64* %84, align 8
  %85 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %86 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* @ETH_ALEN, align 4
  %95 = call i32 @memcpy(i32 %92, i32* %93, i32 %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %157

97:                                               ; preds = %40
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %101 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @cpu_to_be32(i64 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* @NES_DBG_NETDEV, align 4
  %108 = ptrtoint i32* %13 to i32
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* @NES_ARP_RESOLVE, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %114 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %108, i8* %113)
  store i32 -1, i32* %5, align 4
  br label %157

115:                                              ; preds = %97
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @NES_ARP_RESOLVE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i32, i32* @NES_DBG_NETDEV, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %5, align 4
  br label %157

124:                                              ; preds = %115
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* @NES_ARP_DELETE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %124
  %129 = load i32, i32* @NES_DBG_NETDEV, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 (i32, i8*, i32, ...) @nes_debug(i32 %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %130)
  %132 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %133 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %140 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @ETH_ALEN, align 4
  %148 = call i32 @memset(i32 %146, i32 0, i32 %147)
  %149 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %150 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %151 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @nes_free_resource(%struct.nes_adapter* %149, i32 %152, i32 %153)
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %5, align 4
  br label %157

156:                                              ; preds = %124
  store i32 -1, i32* %5, align 4
  br label %157

157:                                              ; preds = %156, %128, %119, %104, %73, %68, %51
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @nes_alloc_resource(%struct.nes_adapter*, i32, i32, i64*, i32*, i32) #1

declare dso_local i32 @nes_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @nes_free_resource(%struct.nes_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
