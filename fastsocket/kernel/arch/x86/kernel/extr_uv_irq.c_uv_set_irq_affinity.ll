; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_irq.c_uv_set_irq_affinity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_irq.c_uv_set_irq_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cpumask = type { i32 }
%struct.irq_desc = type { %struct.irq_cfg* }
%struct.irq_cfg = type { i64, i32 }
%struct.uv_IO_APIC_route_entry = type { i32, i64, i64, i64, i32, i32, i32 }

@apic = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cpumask*)* @uv_set_irq_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_set_irq_affinity(i32 %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca %struct.irq_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.uv_IO_APIC_route_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.irq_desc* @irq_to_desc(i32 %13)
  store %struct.irq_desc* %14, %struct.irq_desc** %6, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 0
  %17 = load %struct.irq_cfg*, %struct.irq_cfg** %16, align 8
  store %struct.irq_cfg* %17, %struct.irq_cfg** %7, align 8
  %18 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %19 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %20 = call i64 @set_desc_affinity(%struct.irq_desc* %18, %struct.cpumask* %19, i32* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

23:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  %24 = bitcast i64* %9 to %struct.uv_IO_APIC_route_entry*
  store %struct.uv_IO_APIC_route_entry* %24, %struct.uv_IO_APIC_route_entry** %10, align 8
  %25 = load %struct.irq_cfg*, %struct.irq_cfg** %7, align 8
  %26 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %10, align 8
  %29 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %10, align 8
  %34 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %10, align 8
  %39 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %10, align 8
  %41 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %10, align 8
  %43 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %10, align 8
  %45 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %10, align 8
  %48 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @uv_irq_2_mmr_info(i32 %49, i64* %11, i32* %12)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %66

53:                                               ; preds = %23
  %54 = load i32, i32* %12, align 4
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @uv_write_global_mmr64(i32 %54, i64 %55, i64 %56)
  %58 = load %struct.irq_cfg*, %struct.irq_cfg** %7, align 8
  %59 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load %struct.irq_cfg*, %struct.irq_cfg** %7, align 8
  %64 = call i32 @send_cleanup_vector(%struct.irq_cfg* %63)
  br label %65

65:                                               ; preds = %62, %53
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %52, %22
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i64 @set_desc_affinity(%struct.irq_desc*, %struct.cpumask*, i32*) #1

declare dso_local i64 @uv_irq_2_mmr_info(i32, i64*, i32*) #1

declare dso_local i32 @uv_write_global_mmr64(i32, i64, i64) #1

declare dso_local i32 @send_cleanup_vector(%struct.irq_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
