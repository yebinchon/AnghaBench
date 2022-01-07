; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_sun4v_log_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_sun4v_log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.sun4v_error_entry = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s: Reporting on cpu %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"%s: err_handle[%llx] err_stick[%llx] err_type[%08x:%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: err_attrs[%08x:%s %s %s %s %s %s %s %s]\0A\00", align 1
@SUN4V_ERR_ATTRS_PROCESSOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SUN4V_ERR_ATTRS_MEMORY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@SUN4V_ERR_ATTRS_PIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"pio\00", align 1
@SUN4V_ERR_ATTRS_INT_REGISTERS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"integer-regs\00", align 1
@SUN4V_ERR_ATTRS_FPU_REGISTERS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"fpu-regs\00", align 1
@SUN4V_ERR_ATTRS_USER_MODE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@SUN4V_ERR_ATTRS_PRIV_MODE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"privileged\00", align 1
@SUN4V_ERR_ATTRS_RES_QUEUE_FULL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"queue-full\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"%s: err_raddr[%016llx] err_size[%u] err_cpu[%u]\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"%s: Queue overflowed %d times.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.sun4v_error_entry*, i32, i8*, i32*)* @sun4v_log_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4v_log_error(%struct.pt_regs* %0, %struct.sun4v_error_entry* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.sun4v_error_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %6, align 8
  store %struct.sun4v_error_entry* %1, %struct.sun4v_error_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13)
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %17 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %20 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %23 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %26 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sun4v_err_type_to_str(i32 %27)
  %29 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %18, i32 %21, i32 %24, i32 %28)
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %32 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %35 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SUN4V_ERR_ATTRS_PROCESSOR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %42 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %43 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SUN4V_ERR_ATTRS_MEMORY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %50 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %51 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SUN4V_ERR_ATTRS_PIO, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %58 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %59 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SUN4V_ERR_ATTRS_INT_REGISTERS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %66 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %67 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SUN4V_ERR_ATTRS_FPU_REGISTERS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %74 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %75 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SUN4V_ERR_ATTRS_USER_MODE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %82 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %83 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SUN4V_ERR_ATTRS_PRIV_MODE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %90 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %91 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SUN4V_ERR_ATTRS_RES_QUEUE_FULL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %98 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 %33, i8* %41, i8* %49, i8* %57, i8* %65, i8* %73, i8* %81, i8* %89, i8* %97)
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %101 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %104 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %107 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* %99, i32 %102, i32 %105, i32 %108)
  %110 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %111 = call i32 @show_regs(%struct.pt_regs* %110)
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @atomic_read(i32* %112)
  store i32 %113, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %5
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @atomic_set(i32* %116, i32 0)
  %118 = call i32 (...) @wmb()
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %119, i32 %120)
  br label %122

122:                                              ; preds = %115, %5
  ret void
}

declare dso_local i32 @printk(i8*, i8*, i32, ...) #1

declare dso_local i32 @sun4v_err_type_to_str(i32) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
