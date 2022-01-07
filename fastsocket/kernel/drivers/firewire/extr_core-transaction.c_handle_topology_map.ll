; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_handle_topology_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_handle_topology_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.fw_card = type { i32* }
%struct.fw_request = type { i32 }

@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@topology_map_region = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i32, i64, i8*, i64, i8*)* @handle_topology_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_topology_map(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i8* %8, i64 %9, i8* %10) #0 {
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
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
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @TCODE_IS_READ_REQUEST(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %11
  %31 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %32 = load %struct.fw_request*, %struct.fw_request** %13, align 8
  %33 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  %34 = call i32 @fw_send_response(%struct.fw_card* %31, %struct.fw_request* %32, i32 %33)
  br label %91

35:                                               ; preds = %11
  %36 = load i64, i64* %19, align 8
  %37 = and i64 %36, 3
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %21, align 8
  %41 = and i64 %40, 3
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %35
  %44 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %45 = load %struct.fw_request*, %struct.fw_request** %13, align 8
  %46 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  %47 = call i32 @fw_send_response(%struct.fw_card* %44, %struct.fw_request* %45, i32 %46)
  br label %91

48:                                               ; preds = %39
  %49 = load i64, i64* %19, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topology_map_region, i32 0, i32 0), align 8
  %51 = sub i64 %49, %50
  %52 = udiv i64 %51, 4
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %24, align 4
  %54 = load i32, i32* %24, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %21, align 8
  %57 = udiv i64 %56, 4
  %58 = add i64 %55, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %25, align 4
  %60 = load i8*, i8** %20, align 8
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %26, align 8
  store i32 0, i32* %23, align 4
  br label %62

62:                                               ; preds = %83, %48
  %63 = load i32, i32* %23, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %21, align 8
  %66 = udiv i64 %65, 4
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %70 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %24, align 4
  %73 = load i32, i32* %23, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cpu_to_be32(i32 %77)
  %79 = load i32*, i32** %26, align 8
  %80 = load i32, i32* %23, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %23, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %23, align 4
  br label %62

86:                                               ; preds = %62
  %87 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %88 = load %struct.fw_request*, %struct.fw_request** %13, align 8
  %89 = load i32, i32* @RCODE_COMPLETE, align 4
  %90 = call i32 @fw_send_response(%struct.fw_card* %87, %struct.fw_request* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %43, %30
  ret void
}

declare dso_local i32 @TCODE_IS_READ_REQUEST(i32) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
