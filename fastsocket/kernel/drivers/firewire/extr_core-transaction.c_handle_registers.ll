; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_handle_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_handle_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.fw_card*)* }
%struct.fw_request = type { i32 }

@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@BROADCAST_CHANNEL_VALID = common dso_local global i32 0, align 4
@BROADCAST_CHANNEL_INITIAL = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i32, i64, i8*, i64, i8*)* @handle_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_registers(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i8* %8, i64 %9, i8* %10) #0 {
  %12 = alloca %struct.fw_card*, align 8
  %13 = alloca %struct.fw_request*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %12, align 8
  store %struct.fw_request* %1, %struct.fw_request** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  store i8* %10, i8** %22, align 8
  %27 = load i64, i64* %19, align 8
  %28 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %29 = xor i64 %28, -1
  %30 = and i64 %27, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %23, align 4
  %32 = load i8*, i8** %20, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %25, align 8
  %34 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %34, i32* %26, align 4
  %35 = load i32, i32* %23, align 4
  switch i32 %35, label %97 [
    i32 128, label %36
    i32 131, label %36
    i32 134, label %65
    i32 132, label %94
    i32 135, label %94
    i32 130, label %94
    i32 129, label %94
    i32 133, label %96
  ]

36:                                               ; preds = %11, %11
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @TCODE_IS_READ_REQUEST(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* %21, align 8
  %42 = icmp ne i64 %41, 4
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %36
  %44 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %44, i32* %26, align 4
  br label %99

45:                                               ; preds = %40
  %46 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %47 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64 (%struct.fw_card*)*, i64 (%struct.fw_card*)** %49, align 8
  %51 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %52 = call i64 %50(%struct.fw_card* %51)
  store i64 %52, i64* %24, align 8
  %53 = load i32, i32* %23, align 4
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i64, i64* %24, align 8
  %57 = call i32 @cpu_to_be32(i64 %56)
  %58 = load i32*, i32** %25, align 8
  store i32 %57, i32* %58, align 4
  br label %64

59:                                               ; preds = %45
  %60 = load i64, i64* %24, align 8
  %61 = lshr i64 %60, 25
  %62 = call i32 @cpu_to_be32(i64 %61)
  %63 = load i32*, i32** %25, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %55
  br label %99

65:                                               ; preds = %11
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %71 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @cpu_to_be32(i64 %72)
  %74 = load i32*, i32** %25, align 8
  store i32 %73, i32* %74, align 4
  br label %93

75:                                               ; preds = %65
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i32*, i32** %25, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = load i32, i32* @BROADCAST_CHANNEL_VALID, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @BROADCAST_CHANNEL_INITIAL, align 4
  %86 = or i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %89 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %92

90:                                               ; preds = %75
  %91 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %91, i32* %26, align 4
  br label %92

92:                                               ; preds = %90, %79
  br label %93

93:                                               ; preds = %92, %69
  br label %99

94:                                               ; preds = %11, %11, %11, %11
  %95 = call i32 (...) @BUG()
  br label %99

96:                                               ; preds = %11
  br label %97

97:                                               ; preds = %11, %96
  %98 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %98, i32* %26, align 4
  br label %99

99:                                               ; preds = %97, %94, %93, %64, %43
  %100 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %101 = load %struct.fw_request*, %struct.fw_request** %13, align 8
  %102 = load i32, i32* %26, align 4
  %103 = call i32 @fw_send_response(%struct.fw_card* %100, %struct.fw_request* %101, i32 %102)
  ret void
}

declare dso_local i32 @TCODE_IS_READ_REQUEST(i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
