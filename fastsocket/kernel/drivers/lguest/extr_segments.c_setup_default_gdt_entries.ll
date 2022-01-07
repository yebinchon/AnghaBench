; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_segments.c_setup_default_gdt_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_segments.c_setup_default_gdt_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_struct = type { i32, i32 }
%struct.lguest_ro_state = type { i32, %struct.desc_struct* }

@GDT_ENTRY_LGUEST_CS = common dso_local global i64 0, align 8
@FULL_EXEC_SEGMENT = common dso_local global %struct.desc_struct zeroinitializer, align 4
@GDT_ENTRY_LGUEST_DS = common dso_local global i64 0, align 8
@FULL_SEGMENT = common dso_local global %struct.desc_struct zeroinitializer, align 4
@GDT_ENTRY_TSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_default_gdt_entries(%struct.lguest_ro_state* %0) #0 {
  %2 = alloca %struct.lguest_ro_state*, align 8
  %3 = alloca %struct.desc_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.lguest_ro_state* %0, %struct.lguest_ro_state** %2, align 8
  %5 = load %struct.lguest_ro_state*, %struct.lguest_ro_state** %2, align 8
  %6 = getelementptr inbounds %struct.lguest_ro_state, %struct.lguest_ro_state* %5, i32 0, i32 1
  %7 = load %struct.desc_struct*, %struct.desc_struct** %6, align 8
  store %struct.desc_struct* %7, %struct.desc_struct** %3, align 8
  %8 = load %struct.lguest_ro_state*, %struct.lguest_ro_state** %2, align 8
  %9 = getelementptr inbounds %struct.lguest_ro_state, %struct.lguest_ro_state* %8, i32 0, i32 0
  %10 = ptrtoint i32* %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load %struct.desc_struct*, %struct.desc_struct** %3, align 8
  %12 = load i64, i64* @GDT_ENTRY_LGUEST_CS, align 8
  %13 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %11, i64 %12
  %14 = bitcast %struct.desc_struct* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.desc_struct* @FULL_EXEC_SEGMENT to i8*), i64 8, i1 false)
  %15 = load %struct.desc_struct*, %struct.desc_struct** %3, align 8
  %16 = load i64, i64* @GDT_ENTRY_LGUEST_DS, align 8
  %17 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %15, i64 %16
  %18 = bitcast %struct.desc_struct* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.desc_struct* @FULL_SEGMENT to i8*), i64 8, i1 false)
  %19 = load i64, i64* %4, align 8
  %20 = shl i64 %19, 16
  %21 = or i64 103, %20
  %22 = trunc i64 %21 to i32
  %23 = load %struct.desc_struct*, %struct.desc_struct** %3, align 8
  %24 = load i64, i64* @GDT_ENTRY_TSS, align 8
  %25 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %23, i64 %24
  %26 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load i64, i64* %4, align 8
  %28 = and i64 %27, 4278190080
  %29 = or i64 35072, %28
  %30 = load i64, i64* %4, align 8
  %31 = lshr i64 %30, 16
  %32 = and i64 %31, 255
  %33 = or i64 %29, %32
  %34 = trunc i64 %33 to i32
  %35 = load %struct.desc_struct*, %struct.desc_struct** %3, align 8
  %36 = load i64, i64* @GDT_ENTRY_TSS, align 8
  %37 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %35, i64 %36
  %38 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
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
