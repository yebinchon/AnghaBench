; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_handle_local_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_handle_local_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.context, %struct.context }
%struct.fw_packet = type { i64*, i32, i32 (%struct.fw_packet*, i32*, i32)* }

@ACK_PENDING = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i32 0, align 4
@CSR_CONFIG_ROM = common dso_local global i32 0, align 4
@CSR_CONFIG_ROM_END = common dso_local global i32 0, align 4
@ACK_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.fw_packet*)* @handle_local_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_local_request(%struct.context* %0, %struct.fw_packet* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.fw_packet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.fw_packet* %1, %struct.fw_packet** %4, align 8
  %7 = load %struct.context*, %struct.context** %3, align 8
  %8 = load %struct.context*, %struct.context** %3, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = icmp eq %struct.context* %7, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load i32, i32* @ACK_PENDING, align 4
  %15 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %16 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %18 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %17, i32 0, i32 2
  %19 = load i32 (%struct.fw_packet*, i32*, i32)*, i32 (%struct.fw_packet*, i32*, i32)** %18, align 8
  %20 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %21 = load %struct.context*, %struct.context** %3, align 8
  %22 = getelementptr inbounds %struct.context, %struct.context* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %26 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %19(%struct.fw_packet* %20, i32* %24, i32 %27)
  br label %29

29:                                               ; preds = %13, %2
  %30 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %31 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @HEADER_GET_OFFSET_HIGH(i64 %34)
  %36 = shl i64 %35, 32
  %37 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %38 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load i64, i64* %40, align 8
  %42 = or i64 %36, %41
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 %43, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @CSR_CONFIG_ROM, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %29
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @CSR_CONFIG_ROM_END, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.context*, %struct.context** %3, align 8
  %57 = getelementptr inbounds %struct.context, %struct.context* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @handle_local_rom(%struct.TYPE_3__* %58, %struct.fw_packet* %59, i32 %60)
  br label %94

62:                                               ; preds = %51, %29
  %63 = load i32, i32* %6, align 4
  switch i32 %63, label %71 [
    i32 130, label %64
    i32 131, label %64
    i32 129, label %64
    i32 128, label %64
  ]

64:                                               ; preds = %62, %62, %62, %62
  %65 = load %struct.context*, %struct.context** %3, align 8
  %66 = getelementptr inbounds %struct.context, %struct.context* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @handle_local_lock(%struct.TYPE_3__* %67, %struct.fw_packet* %68, i32 %69)
  br label %93

71:                                               ; preds = %62
  %72 = load %struct.context*, %struct.context** %3, align 8
  %73 = load %struct.context*, %struct.context** %3, align 8
  %74 = getelementptr inbounds %struct.context, %struct.context* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = icmp eq %struct.context* %72, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.context*, %struct.context** %3, align 8
  %80 = getelementptr inbounds %struct.context, %struct.context* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %84 = call i32 @fw_core_handle_request(i32* %82, %struct.fw_packet* %83)
  br label %92

85:                                               ; preds = %71
  %86 = load %struct.context*, %struct.context** %3, align 8
  %87 = getelementptr inbounds %struct.context, %struct.context* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %91 = call i32 @fw_core_handle_response(i32* %89, %struct.fw_packet* %90)
  br label %92

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %92, %64
  br label %94

94:                                               ; preds = %93, %55
  %95 = load %struct.context*, %struct.context** %3, align 8
  %96 = load %struct.context*, %struct.context** %3, align 8
  %97 = getelementptr inbounds %struct.context, %struct.context* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = icmp eq %struct.context* %95, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %94
  %102 = load i32, i32* @ACK_COMPLETE, align 4
  %103 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %104 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %106 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %105, i32 0, i32 2
  %107 = load i32 (%struct.fw_packet*, i32*, i32)*, i32 (%struct.fw_packet*, i32*, i32)** %106, align 8
  %108 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %109 = load %struct.context*, %struct.context** %3, align 8
  %110 = getelementptr inbounds %struct.context, %struct.context* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %114 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 %107(%struct.fw_packet* %108, i32* %112, i32 %115)
  br label %117

117:                                              ; preds = %101, %94
  ret void
}

declare dso_local i64 @HEADER_GET_OFFSET_HIGH(i64) #1

declare dso_local i32 @handle_local_rom(%struct.TYPE_3__*, %struct.fw_packet*, i32) #1

declare dso_local i32 @handle_local_lock(%struct.TYPE_3__*, %struct.fw_packet*, i32) #1

declare dso_local i32 @fw_core_handle_request(i32*, %struct.fw_packet*) #1

declare dso_local i32 @fw_core_handle_response(i32*, %struct.fw_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
