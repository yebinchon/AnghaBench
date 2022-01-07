; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_fadump.c_crash_fadump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_fadump.c_crash_fadump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i32 }
%struct.fadump_crash_info_header = type { i32, %struct.pt_regs, i32 }

@fw_dump = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@crashing_cpu = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crash_fadump(%struct.pt_regs* %0, i8* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fadump_crash_info_header*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.fadump_crash_info_header* null, %struct.fadump_crash_info_header** %5, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_dump, i32 0, i32 1), align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_dump, i32 0, i32 0), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  br label %39

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_dump, i32 0, i32 0), align 4
  %14 = call %struct.fadump_crash_info_header* @__va(i32 %13)
  store %struct.fadump_crash_info_header* %14, %struct.fadump_crash_info_header** %5, align 8
  %15 = call i32 (...) @smp_processor_id()
  store i32 %15, i32* @crashing_cpu, align 4
  %16 = load i32, i32* @crashing_cpu, align 4
  %17 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %5, align 8
  %18 = getelementptr inbounds %struct.fadump_crash_info_header, %struct.fadump_crash_info_header* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = call i32 (...) @crash_save_vmcoreinfo()
  %20 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %21 = icmp ne %struct.pt_regs* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %5, align 8
  %24 = getelementptr inbounds %struct.fadump_crash_info_header, %struct.fadump_crash_info_header* %23, i32 0, i32 1
  %25 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %26 = bitcast %struct.pt_regs* %24 to i8*
  %27 = bitcast %struct.pt_regs* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  br label %32

28:                                               ; preds = %12
  %29 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %5, align 8
  %30 = getelementptr inbounds %struct.fadump_crash_info_header, %struct.fadump_crash_info_header* %29, i32 0, i32 1
  %31 = call i32 @ppc_save_regs(%struct.pt_regs* %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32*, i32** @cpu_online_mask, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %5, align 8
  %36 = getelementptr inbounds %struct.fadump_crash_info_header, %struct.fadump_crash_info_header* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @rtas_os_term(i8* %37)
  br label %39

39:                                               ; preds = %32, %11
  ret void
}

declare dso_local %struct.fadump_crash_info_header* @__va(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @crash_save_vmcoreinfo(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ppc_save_regs(%struct.pt_regs*) #1

declare dso_local i32 @rtas_os_term(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
