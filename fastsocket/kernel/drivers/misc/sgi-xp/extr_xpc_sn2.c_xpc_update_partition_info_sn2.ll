; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_update_partition_info_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_update_partition_info_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xpc_partition_sn2 }
%struct.xpc_partition_sn2 = type { i64, i64, i64, i64, i64, i64 }
%struct.xpc_vars_sn2 = type { i64, i64, i64, i64, i64, i64 }

@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"  remote_rp_version = 0x%016x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"  remote_rp_ts_jiffies = 0x%016lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"  remote_rp_pa = 0x%016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  remote_vars_pa = 0x%016lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"  last_heartbeat = 0x%016llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"  remote_vars_part_pa = 0x%016lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"  activate_IRQ_nasid = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"  activate_IRQ_phys_cpuid = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"  remote_amos_page_pa = 0x%lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"  remote_vars_version = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*, i64, i64*, i64, i64, %struct.xpc_vars_sn2*)* @xpc_update_partition_info_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_update_partition_info_sn2(%struct.xpc_partition* %0, i64 %1, i64* %2, i64 %3, i64 %4, %struct.xpc_vars_sn2* %5) #0 {
  %7 = alloca %struct.xpc_partition*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xpc_vars_sn2*, align 8
  %13 = alloca %struct.xpc_partition_sn2*, align 8
  store %struct.xpc_partition* %0, %struct.xpc_partition** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.xpc_vars_sn2* %5, %struct.xpc_vars_sn2** %12, align 8
  %14 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %15 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.xpc_partition_sn2* %16, %struct.xpc_partition_sn2** %13, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %19 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @xpc_part, align 4
  %21 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %22 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %28 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @xpc_part, align 4
  %30 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %31 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %36 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @xpc_part, align 4
  %38 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %39 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %44 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @xpc_part, align 4
  %46 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %47 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %12, align 8
  %51 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %52, 1
  %54 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %55 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @xpc_part, align 4
  %57 = load %struct.xpc_partition*, %struct.xpc_partition** %7, align 8
  %58 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %59)
  %61 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %12, align 8
  %62 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %65 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @xpc_part, align 4
  %67 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %68 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %69)
  %71 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %12, align 8
  %72 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %75 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @xpc_part, align 4
  %77 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %78 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %79)
  %81 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %12, align 8
  %82 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %85 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* @xpc_part, align 4
  %87 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %88 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %89)
  %91 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %12, align 8
  %92 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %95 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %94, i32 0, i32 4
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @xpc_part, align 4
  %97 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %98 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64 %99)
  %101 = load %struct.xpc_vars_sn2*, %struct.xpc_vars_sn2** %12, align 8
  %102 = getelementptr inbounds %struct.xpc_vars_sn2, %struct.xpc_vars_sn2* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %105 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %104, i32 0, i32 5
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* @xpc_part, align 4
  %107 = load %struct.xpc_partition_sn2*, %struct.xpc_partition_sn2** %13, align 8
  %108 = getelementptr inbounds %struct.xpc_partition_sn2, %struct.xpc_partition_sn2* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @dev_dbg(i32 %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i64 %109)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
