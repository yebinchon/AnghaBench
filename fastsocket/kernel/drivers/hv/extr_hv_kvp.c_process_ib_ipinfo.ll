; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_process_ib_ipinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_process_ib_ipinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_kvp_ip_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i64, i64, i64, i64 }
%struct.hv_kvp_msg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i64, i64, i64, i64 }

@MAX_IP_ADDR_SIZE = common dso_local global i32 0, align 4
@UTF16_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@MAX_GATEWAY_SIZE = common dso_local global i32 0, align 4
@MAX_ADAPTER_ID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @process_ib_ipinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ib_ipinfo(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hv_kvp_ip_msg*, align 8
  %8 = alloca %struct.hv_kvp_msg*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.hv_kvp_ip_msg*
  store %struct.hv_kvp_ip_msg* %10, %struct.hv_kvp_ip_msg** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.hv_kvp_msg*
  store %struct.hv_kvp_msg* %12, %struct.hv_kvp_msg** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %83 [
    i32 128, label %14
  ]

14:                                               ; preds = %3
  %15 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %7, align 8
  %16 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %21 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %22 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %23 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %29 = call i32 @utf16s_to_utf8s(i32* %19, i32 %20, i32 %21, i32* %27, i32 %28)
  %30 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %7, align 8
  %31 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %36 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %37 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %38 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %44 = call i32 @utf16s_to_utf8s(i32* %34, i32 %35, i32 %36, i32* %42, i32 %43)
  %45 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %7, align 8
  %46 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = load i32, i32* @MAX_GATEWAY_SIZE, align 4
  %51 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %52 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %53 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* @MAX_GATEWAY_SIZE, align 4
  %59 = call i32 @utf16s_to_utf8s(i32* %49, i32 %50, i32 %51, i32* %57, i32 %58)
  %60 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %7, align 8
  %61 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %66 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %67 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %68 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %74 = call i32 @utf16s_to_utf8s(i32* %64, i32 %65, i32 %66, i32* %72, i32 %73)
  %75 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %7, align 8
  %76 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %80 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 8
  br label %83

83:                                               ; preds = %3, %14
  %84 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %7, align 8
  %85 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load i32, i32* @MAX_ADAPTER_ID_SIZE, align 4
  %90 = load i32, i32* @UTF16_LITTLE_ENDIAN, align 4
  %91 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %92 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = load i32, i32* @MAX_ADAPTER_ID_SIZE, align 4
  %98 = call i32 @utf16s_to_utf8s(i32* %88, i32 %89, i32 %90, i32* %96, i32 %97)
  %99 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %7, align 8
  %100 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %104 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 8
  br label %107

107:                                              ; preds = %83
  ret void
}

declare dso_local i32 @utf16s_to_utf8s(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
