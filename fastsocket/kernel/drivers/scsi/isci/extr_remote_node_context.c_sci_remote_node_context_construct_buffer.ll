; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_context.c_sci_remote_node_context_construct_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_node_context.c_sci_remote_node_context_construct_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_context = type { i32 }
%struct.isci_remote_device = type { i32, %struct.TYPE_4__*, i32, %struct.domain_device* }
%struct.TYPE_4__ = type { i32, %struct.isci_host* }
%struct.isci_host = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.domain_device = type { i32 }
%union.scu_remote_node_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i32, i32, i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sci_remote_node_context*)* @sci_remote_node_context_construct_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_remote_node_context_construct_buffer(%struct.sci_remote_node_context* %0) #0 {
  %2 = alloca %struct.sci_remote_node_context*, align 8
  %3 = alloca %struct.isci_remote_device*, align 8
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.scu_remote_node_context*, align 8
  %7 = alloca %struct.isci_host*, align 8
  %8 = alloca i32, align 4
  store %struct.sci_remote_node_context* %0, %struct.sci_remote_node_context** %2, align 8
  %9 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %10 = call %struct.isci_remote_device* @rnc_to_dev(%struct.sci_remote_node_context* %9)
  store %struct.isci_remote_device* %10, %struct.isci_remote_device** %3, align 8
  %11 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %12 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %11, i32 0, i32 3
  %13 = load %struct.domain_device*, %struct.domain_device** %12, align 8
  store %struct.domain_device* %13, %struct.domain_device** %4, align 8
  %14 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %2, align 8
  %15 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %18 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.isci_host*, %struct.isci_host** %20, align 8
  store %struct.isci_host* %21, %struct.isci_host** %7, align 8
  %22 = load %struct.isci_host*, %struct.isci_host** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %union.scu_remote_node_context* @sci_rnc_by_id(%struct.isci_host* %22, i32 %23)
  store %union.scu_remote_node_context* %24, %union.scu_remote_node_context** %6, align 8
  %25 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %26 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %27 = call i32 @sci_remote_device_node_count(%struct.isci_remote_device* %26)
  %28 = sext i32 %27 to i64
  %29 = mul i64 104, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(%union.scu_remote_node_context* %25, i32 0, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %34 = bitcast %union.scu_remote_node_context* %33 to %struct.TYPE_6__*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %37 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %40 = bitcast %union.scu_remote_node_context* %39 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 17
  store i32 %38, i32* %41, align 4
  %42 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %43 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %48 = bitcast %union.scu_remote_node_context* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 16
  store i32 %46, i32* %49, align 8
  %50 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %51 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @SAS_ADDR(i32 %52)
  %54 = call i32 @cpu_to_le64(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @upper_32_bits(i32 %55)
  %57 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %58 = bitcast %union.scu_remote_node_context* %57 to %struct.TYPE_6__*
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 15
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @lower_32_bits(i32 %60)
  %62 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %63 = bitcast %union.scu_remote_node_context* %62 to %struct.TYPE_6__*
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 14
  store i32 %61, i32* %64, align 8
  %65 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %66 = bitcast %union.scu_remote_node_context* %65 to %struct.TYPE_6__*
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %69 = bitcast %union.scu_remote_node_context* %68 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %72 = bitcast %union.scu_remote_node_context* %71 to %struct.TYPE_6__*
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32 0, i32* %73, align 4
  %74 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %75 = bitcast %union.scu_remote_node_context* %74 to %struct.TYPE_6__*
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  store i32 1, i32* %76, align 8
  %77 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %78 = bitcast %union.scu_remote_node_context* %77 to %struct.TYPE_6__*
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 13
  store i64 0, i64* %79, align 8
  %80 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %81 = bitcast %union.scu_remote_node_context* %80 to %struct.TYPE_6__*
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 12
  store i64 0, i64* %82, align 8
  %83 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %84 = call i64 @dev_is_sata(%struct.domain_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %1
  %87 = load %struct.isci_host*, %struct.isci_host** %7, align 8
  %88 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %92 = bitcast %union.scu_remote_node_context* %91 to %struct.TYPE_6__*
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 11
  store i32 %90, i32* %93, align 4
  %94 = load %struct.isci_host*, %struct.isci_host** %7, align 8
  %95 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %99 = bitcast %union.scu_remote_node_context* %98 to %struct.TYPE_6__*
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 10
  store i32 %97, i32* %100, align 8
  br label %116

101:                                              ; preds = %1
  %102 = load %struct.isci_host*, %struct.isci_host** %7, align 8
  %103 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %107 = bitcast %union.scu_remote_node_context* %106 to %struct.TYPE_6__*
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 11
  store i32 %105, i32* %108, align 4
  %109 = load %struct.isci_host*, %struct.isci_host** %7, align 8
  %110 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %114 = bitcast %union.scu_remote_node_context* %113 to %struct.TYPE_6__*
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 10
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %101, %86
  %117 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %118 = bitcast %union.scu_remote_node_context* %117 to %struct.TYPE_6__*
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 9
  store i64 0, i64* %119, align 8
  %120 = load %struct.isci_remote_device*, %struct.isci_remote_device** %3, align 8
  %121 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %124 = bitcast %union.scu_remote_node_context* %123 to %struct.TYPE_6__*
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 8
  store i32 %122, i32* %125, align 8
  %126 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %127 = bitcast %union.scu_remote_node_context* %126 to %struct.TYPE_6__*
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 7
  store i64 0, i64* %128, align 8
  %129 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %130 = bitcast %union.scu_remote_node_context* %129 to %struct.TYPE_6__*
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 6
  store i64 0, i64* %131, align 8
  %132 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %6, align 8
  %133 = bitcast %union.scu_remote_node_context* %132 to %struct.TYPE_6__*
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  ret void
}

declare dso_local %struct.isci_remote_device* @rnc_to_dev(%struct.sci_remote_node_context*) #1

declare dso_local %union.scu_remote_node_context* @sci_rnc_by_id(%struct.isci_host*, i32) #1

declare dso_local i32 @memset(%union.scu_remote_node_context*, i32, i32) #1

declare dso_local i32 @sci_remote_device_node_count(%struct.isci_remote_device*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
