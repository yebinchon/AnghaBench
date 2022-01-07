; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_fw_core_handle_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_fw_core_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_packet = type { i64, i64*, i32, i32 }
%struct.fw_address_handler = type { i32, i32 (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i32, i64, i32, i32, i32)* }
%struct.fw_request = type { i32, i32 }

@ACK_PENDING = common dso_local global i64 0, align 8
@ACK_COMPLETE = common dso_local global i64 0, align 8
@address_handler_lock = common dso_local global i32 0, align 4
@address_handler_list = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_core_handle_request(%struct.fw_card* %0, %struct.fw_packet* %1) #0 {
  %3 = alloca %struct.fw_card*, align 8
  %4 = alloca %struct.fw_packet*, align 8
  %5 = alloca %struct.fw_address_handler*, align 8
  %6 = alloca %struct.fw_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %3, align 8
  store %struct.fw_packet* %1, %struct.fw_packet** %4, align 8
  %12 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %13 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ACK_PENDING, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %19 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ACK_COMPLETE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %104

24:                                               ; preds = %17, %2
  %25 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %26 = call %struct.fw_request* @allocate_request(%struct.fw_packet* %25)
  store %struct.fw_request* %26, %struct.fw_request** %6, align 8
  %27 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %28 = icmp eq %struct.fw_request* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %104

30:                                               ; preds = %24
  %31 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %32 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @HEADER_GET_OFFSET_HIGH(i64 %35)
  %37 = shl i64 %36, 32
  %38 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %39 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  %43 = or i64 %37, %42
  store i64 %43, i64* %7, align 8
  %44 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %45 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @HEADER_GET_TCODE(i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %51 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @HEADER_GET_DESTINATION(i64 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %57 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @HEADER_GET_SOURCE(i64 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_lock_irqsave(i32* @address_handler_lock, i64 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %66 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.fw_address_handler* @lookup_enclosing_address_handler(i32* @address_handler_list, i64 %64, i32 %67)
  store %struct.fw_address_handler* %68, %struct.fw_address_handler** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* @address_handler_lock, i64 %69)
  %71 = load %struct.fw_address_handler*, %struct.fw_address_handler** %5, align 8
  %72 = icmp eq %struct.fw_address_handler* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %30
  %74 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %75 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %76 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  %77 = call i32 @fw_send_response(%struct.fw_card* %74, %struct.fw_request* %75, i32 %76)
  br label %104

78:                                               ; preds = %30
  %79 = load %struct.fw_address_handler*, %struct.fw_address_handler** %5, align 8
  %80 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %79, i32 0, i32 1
  %81 = load i32 (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i32, i64, i32, i32, i32)*, i32 (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i32, i64, i32, i32, i32)** %80, align 8
  %82 = load %struct.fw_card*, %struct.fw_card** %3, align 8
  %83 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %88 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fw_packet*, %struct.fw_packet** %4, align 8
  %91 = getelementptr inbounds %struct.fw_packet, %struct.fw_packet* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %95 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fw_request*, %struct.fw_request** %6, align 8
  %98 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.fw_address_handler*, %struct.fw_address_handler** %5, align 8
  %101 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %81(%struct.fw_card* %82, %struct.fw_request* %83, i32 %84, i32 %85, i32 %86, i32 %89, i32 %92, i64 %93, i32 %96, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %23, %29, %78, %73
  ret void
}

declare dso_local %struct.fw_request* @allocate_request(%struct.fw_packet*) #1

declare dso_local i64 @HEADER_GET_OFFSET_HIGH(i64) #1

declare dso_local i32 @HEADER_GET_TCODE(i64) #1

declare dso_local i32 @HEADER_GET_DESTINATION(i64) #1

declare dso_local i32 @HEADER_GET_SOURCE(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.fw_address_handler* @lookup_enclosing_address_handler(i32*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
