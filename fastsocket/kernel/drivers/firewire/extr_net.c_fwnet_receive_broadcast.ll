; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_receive_broadcast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_net.c_fwnet_receive_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_context = type { i32 }
%struct.fwnet_device = type { i64, i64, i64, i32, i32, i32, i32**, %struct.fw_card* }
%struct.fw_card = type { i32 }
%struct.fw_iso_packet = type { i64, i32, i32, i64, i64, i64 }

@IANA_SPECIFIER_ID = common dso_local global i32 0, align 4
@RFC2734_SW_VERSION = common dso_local global i32 0, align 4
@IEEE1394_GASP_HDR_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"requeue failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* @fwnet_receive_broadcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwnet_receive_broadcast(%struct.fw_iso_context* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.fw_iso_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.fwnet_device*, align 8
  %12 = alloca %struct.fw_iso_packet, align 8
  %13 = alloca %struct.fw_card*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.fw_iso_context* %0, %struct.fw_iso_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to %struct.fwnet_device*
  store %struct.fwnet_device* %24, %struct.fwnet_device** %11, align 8
  %25 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %26 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %25, i32 0, i32 7
  %27 = load %struct.fw_card*, %struct.fw_card** %26, align 8
  store %struct.fw_card* %27, %struct.fw_card** %13, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @be16_to_cpup(i32* %30)
  store i32 %31, i32* %17, align 4
  %32 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %33 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %32, i32 0, i32 3
  %34 = load i64, i64* %22, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %37 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %40 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %38, %41
  store i64 %42, i64* %21, align 8
  %43 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %44 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %43, i32 0, i32 6
  %45 = load i32**, i32*** %44, align 8
  %46 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %47 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds i32*, i32** %45, i64 %48
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %15, align 8
  %52 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %53 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %56 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %5
  %60 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %61 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %5
  %63 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %64 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %63, i32 0, i32 3
  %65 = load i64, i64* %22, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32*, i32** %15, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be32_to_cpu(i32 %69)
  %71 = and i32 %70, 65535
  %72 = shl i32 %71, 8
  %73 = load i32*, i32** %15, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  %77 = and i32 %76, -16777216
  %78 = lshr i32 %77, 24
  %79 = or i32 %72, %78
  store i32 %79, i32* %19, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @be32_to_cpu(i32 %82)
  %84 = and i32 %83, 16777215
  store i32 %84, i32* %20, align 4
  %85 = load i32*, i32** %15, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @be32_to_cpu(i32 %87)
  %89 = ashr i32 %88, 16
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* @IANA_SPECIFIER_ID, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %62
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* @RFC2734_SW_VERSION, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load i32*, i32** %15, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32* %99, i32** %15, align 8
  %100 = load i64, i64* @IEEE1394_GASP_HDR_SIZE, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %17, align 4
  %105 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %18, align 4
  %109 = call i32 @fwnet_incoming_packet(%struct.fwnet_device* %105, i32* %106, i32 %107, i32 %108, i32 -1, i32 1)
  br label %110

110:                                              ; preds = %97, %93, %62
  %111 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %112 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %12, i32 0, i32 0
  store i64 %113, i64* %114, align 8
  %115 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %12, i32 0, i32 1
  store i32 1, i32* %115, align 8
  %116 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %12, i32 0, i32 5
  store i64 0, i64* %116, align 8
  %117 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %12, i32 0, i32 2
  store i32 3, i32* %117, align 4
  %118 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %12, i32 0, i32 4
  store i64 0, i64* %118, align 8
  %119 = load i64, i64* @IEEE1394_GASP_HDR_SIZE, align 8
  %120 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %12, i32 0, i32 3
  store i64 %119, i64* %120, align 8
  %121 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %122 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %121, i32 0, i32 3
  %123 = load i64, i64* %22, align 8
  %124 = call i32 @spin_lock_irqsave(i32* %122, i64 %123)
  %125 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %126 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %129 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %128, i32 0, i32 4
  %130 = load i64, i64* %21, align 8
  %131 = call i32 @fw_iso_context_queue(i32 %127, %struct.fw_iso_packet* %12, i32* %129, i64 %130)
  store i32 %131, i32* %16, align 4
  %132 = load %struct.fwnet_device*, %struct.fwnet_device** %11, align 8
  %133 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %132, i32 0, i32 3
  %134 = load i64, i64* %22, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  %136 = load i32, i32* %16, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %110
  %139 = call i32 @fw_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %110
  ret void
}

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @fwnet_incoming_packet(%struct.fwnet_device*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @fw_iso_context_queue(i32, %struct.fw_iso_packet*, i32*, i64) #1

declare dso_local i32 @fw_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
