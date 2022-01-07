; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_setup_ucode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_setup_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32 }
%struct.cb = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.firmware = type { i64* }

@UCODE_SIZE = common dso_local global i32 0, align 4
@INTDELAY = common dso_local global i32 0, align 4
@BUNDLEMAX = common dso_local global i32 0, align 4
@BUNDLESMALL = common dso_local global i64 0, align 8
@cb_ucode = common dso_local global i32 0, align 4
@cb_el = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nic*, %struct.cb*, %struct.sk_buff*)* @e100_setup_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_setup_ucode(%struct.nic* %0, %struct.cb* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nic*, align 8
  %5 = alloca %struct.cb*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nic* %0, %struct.nic** %4, align 8
  store %struct.cb* %1, %struct.cb** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = bitcast %struct.sk_buff* %11 to i8*
  %13 = bitcast i8* %12 to %struct.firmware*
  store %struct.firmware* %13, %struct.firmware** %7, align 8
  %14 = load %struct.cb*, %struct.cb** %5, align 8
  %15 = getelementptr inbounds %struct.cb, %struct.cb* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.cb*, %struct.cb** %5, align 8
  %17 = getelementptr inbounds %struct.cb, %struct.cb* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.firmware*, %struct.firmware** %7, align 8
  %21 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* @UCODE_SIZE, align 4
  %24 = mul nsw i32 %23, 4
  %25 = call i32 @memcpy(i32* %19, i64* %22, i32 %24)
  %26 = load %struct.firmware*, %struct.firmware** %7, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* @UCODE_SIZE, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load %struct.firmware*, %struct.firmware** %7, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* @UCODE_SIZE, align 4
  %38 = mul nsw i32 %37, 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %36, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load %struct.firmware*, %struct.firmware** %7, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* @UCODE_SIZE, align 4
  %47 = mul nsw i32 %46, 4
  %48 = add nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  %52 = call i32 @cpu_to_le32(i32 -65536)
  %53 = load %struct.cb*, %struct.cb** %5, align 8
  %54 = getelementptr inbounds %struct.cb, %struct.cb* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %52
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @INTDELAY, align 4
  %62 = call i32 @cpu_to_le32(i32 %61)
  %63 = load %struct.cb*, %struct.cb** %5, align 8
  %64 = getelementptr inbounds %struct.cb, %struct.cb* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %62
  store i32 %70, i32* %68, align 4
  %71 = call i32 @cpu_to_le32(i32 -65536)
  %72 = load %struct.cb*, %struct.cb** %5, align 8
  %73 = getelementptr inbounds %struct.cb, %struct.cb* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %71
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @BUNDLEMAX, align 4
  %81 = call i32 @cpu_to_le32(i32 %80)
  %82 = load %struct.cb*, %struct.cb** %5, align 8
  %83 = getelementptr inbounds %struct.cb, %struct.cb* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %81
  store i32 %89, i32* %87, align 4
  %90 = call i32 @cpu_to_le32(i32 -65536)
  %91 = load %struct.cb*, %struct.cb** %5, align 8
  %92 = getelementptr inbounds %struct.cb, %struct.cb* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %90
  store i32 %98, i32* %96, align 4
  %99 = load i64, i64* @BUNDLESMALL, align 8
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 65535, i32 65408
  %103 = call i32 @cpu_to_le32(i32 %102)
  %104 = load %struct.cb*, %struct.cb** %5, align 8
  %105 = getelementptr inbounds %struct.cb, %struct.cb* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %103
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @cb_ucode, align 4
  %113 = load i32, i32* @cb_el, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @cpu_to_le16(i32 %114)
  %116 = load %struct.cb*, %struct.cb** %5, align 8
  %117 = getelementptr inbounds %struct.cb, %struct.cb* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
