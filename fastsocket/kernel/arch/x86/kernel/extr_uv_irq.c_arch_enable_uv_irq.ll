; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_irq.c_arch_enable_uv_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_irq.c_arch_enable_uv_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpumask*)*, i32, i32 }
%struct.cpumask = type { i32 }
%struct.irq_desc = type { i32 }
%struct.irq_cfg = type { i64, i32 }
%struct.uv_IO_APIC_route_entry = type { i32, i64, i64, i64, i32, i32, i32 }

@UV_AFFINITY_CPU = common dso_local global i32 0, align 4
@IRQ_NO_BALANCING = common dso_local global i32 0, align 4
@IRQ_MOVE_PCNTXT = common dso_local global i32 0, align 4
@uv_irq_chip = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@apic = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i64, i32)* @arch_enable_uv_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arch_enable_uv_irq(i8* %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cpumask*, align 8
  %15 = alloca %struct.irq_desc*, align 8
  %16 = alloca %struct.irq_cfg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.uv_IO_APIC_route_entry*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.cpumask* @cpumask_of(i32 %21)
  store %struct.cpumask* %22, %struct.cpumask** %14, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.irq_desc* @irq_to_desc(i32 %23)
  store %struct.irq_desc* %24, %struct.irq_desc** %15, align 8
  %25 = call i32 @BUILD_BUG_ON(i32 1)
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.irq_cfg* @irq_cfg(i32 %26)
  store %struct.irq_cfg* %27, %struct.irq_cfg** %16, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.irq_cfg*, %struct.irq_cfg** %16, align 8
  %30 = load %struct.cpumask*, %struct.cpumask** %14, align 8
  %31 = call i32 @assign_irq_vector(i32 %28, %struct.irq_cfg* %29, %struct.cpumask* %30)
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %20, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %20, align 4
  store i32 %35, i32* %7, align 4
  br label %101

36:                                               ; preds = %6
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @UV_AFFINITY_CPU, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @IRQ_NO_BALANCING, align 4
  %42 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %43 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %52

46:                                               ; preds = %36
  %47 = load i32, i32* @IRQ_MOVE_PCNTXT, align 4
  %48 = load %struct.irq_desc*, %struct.irq_desc** %15, align 8
  %49 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @handle_percpu_irq, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @set_irq_chip_and_handler_name(i32 %53, i32* @uv_irq_chip, i32 %54, i8* %55)
  store i64 0, i64* %18, align 8
  %57 = bitcast i64* %18 to %struct.uv_IO_APIC_route_entry*
  store %struct.uv_IO_APIC_route_entry* %57, %struct.uv_IO_APIC_route_entry** %19, align 8
  %58 = load %struct.irq_cfg*, %struct.irq_cfg** %16, align 8
  %59 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %19, align 8
  %62 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %19, align 8
  %67 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %19, align 8
  %72 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %19, align 8
  %74 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %19, align 8
  %76 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %19, align 8
  %78 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.cpumask*)*, i32 (%struct.cpumask*)** %80, align 8
  %82 = load %struct.cpumask*, %struct.cpumask** %14, align 8
  %83 = call i32 %81(%struct.cpumask* %82)
  %84 = load %struct.uv_IO_APIC_route_entry*, %struct.uv_IO_APIC_route_entry** %19, align 8
  %85 = getelementptr inbounds %struct.uv_IO_APIC_route_entry, %struct.uv_IO_APIC_route_entry* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @uv_blade_to_pnode(i32 %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %18, align 8
  %91 = call i32 @uv_write_global_mmr64(i32 %88, i64 %89, i64 %90)
  %92 = load %struct.irq_cfg*, %struct.irq_cfg** %16, align 8
  %93 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %52
  %97 = load %struct.irq_cfg*, %struct.irq_cfg** %16, align 8
  %98 = call i32 @send_cleanup_vector(%struct.irq_cfg* %97)
  br label %99

99:                                               ; preds = %96, %52
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %99, %34
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local %struct.cpumask* @cpumask_of(i32) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.irq_cfg* @irq_cfg(i32) #1

declare dso_local i32 @assign_irq_vector(i32, %struct.irq_cfg*, %struct.cpumask*) #1

declare dso_local i32 @set_irq_chip_and_handler_name(i32, i32*, i32, i8*) #1

declare dso_local i32 @uv_blade_to_pnode(i32) #1

declare dso_local i32 @uv_write_global_mmr64(i32, i64, i64) #1

declare dso_local i32 @send_cleanup_vector(%struct.irq_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
