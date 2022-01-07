; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_segments.c_setup_guest_gdt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_segments.c_setup_guest_gdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.lg_cpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@GDT_ENTRY_KERNEL_CS = common dso_local global i64 0, align 8
@FULL_EXEC_SEGMENT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GDT_ENTRY_KERNEL_DS = common dso_local global i64 0, align 8
@FULL_SEGMENT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GUEST_PL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_guest_gdt(%struct.lg_cpu* %0) #0 {
  %2 = alloca %struct.lg_cpu*, align 8
  store %struct.lg_cpu* %0, %struct.lg_cpu** %2, align 8
  %3 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %4 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = load i64, i64* @GDT_ENTRY_KERNEL_CS, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i64 %7
  %9 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_5__* @FULL_EXEC_SEGMENT to i8*), i64 4, i1 false)
  %10 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %11 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i64, i64* @GDT_ENTRY_KERNEL_DS, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %14
  %16 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_5__* @FULL_SEGMENT to i8*), i64 4, i1 false)
  %17 = load i32, i32* @GUEST_PL, align 4
  %18 = shl i32 %17, 13
  %19 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %20 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i64, i64* @GDT_ENTRY_KERNEL_CS, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %18
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @GUEST_PL, align 4
  %29 = shl i32 %28, 13
  %30 = load %struct.lg_cpu*, %struct.lg_cpu** %2, align 8
  %31 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i64, i64* @GDT_ENTRY_KERNEL_DS, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %29
  store i32 %38, i32* %36, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
