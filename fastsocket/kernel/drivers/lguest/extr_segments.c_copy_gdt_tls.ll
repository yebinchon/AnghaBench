; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_segments.c_copy_gdt_tls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_segments.c_copy_gdt_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.desc_struct* }
%struct.desc_struct = type { i32 }

@GDT_ENTRY_TLS_MIN = common dso_local global i32 0, align 4
@GDT_ENTRY_TLS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_gdt_tls(%struct.lg_cpu* %0, %struct.desc_struct* %1) #0 {
  %3 = alloca %struct.lg_cpu*, align 8
  %4 = alloca %struct.desc_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.lg_cpu* %0, %struct.lg_cpu** %3, align 8
  store %struct.desc_struct* %1, %struct.desc_struct** %4, align 8
  %6 = load i32, i32* @GDT_ENTRY_TLS_MIN, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GDT_ENTRY_TLS_MAX, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load %struct.desc_struct*, %struct.desc_struct** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %12, i64 %14
  %16 = load %struct.lg_cpu*, %struct.lg_cpu** %3, align 8
  %17 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.desc_struct*, %struct.desc_struct** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %19, i64 %21
  %23 = bitcast %struct.desc_struct* %15 to i8*
  %24 = bitcast %struct.desc_struct* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  br label %25

25:                                               ; preds = %11
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %7

28:                                               ; preds = %7
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
