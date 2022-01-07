; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_pull_remote_cachelines_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_pull_remote_cachelines_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, i32 }

@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@xpSuccess = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"xp_remote_memcpy() from partition %d failed, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_partition*, i8*, i64, i64)* @xpc_pull_remote_cachelines_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_pull_remote_cachelines_sn2(%struct.xpc_partition* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xpc_partition*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.xpc_partition* %0, %struct.xpc_partition** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @L1_CACHE_ALIGN(i64 %12)
  %14 = icmp ne i64 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @DBUG_ON(i32 %15)
  %17 = load i8*, i8** %7, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i8*, i8** %7, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = call i64 @L1_CACHE_ALIGN(i64 %20)
  %22 = icmp ne i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @DBUG_ON(i32 %23)
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @L1_CACHE_ALIGN(i64 %26)
  %28 = icmp ne i64 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @DBUG_ON(i32 %29)
  %31 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %32 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %38 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %5, align 4
  br label %57

40:                                               ; preds = %4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @xp_pa(i8* %41)
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @xp_remote_memcpy(i32 %42, i64 %43, i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @xpSuccess, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* @xpc_chan, align 4
  %51 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %52 = call i32 @XPC_PARTID(%struct.xpc_partition* %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %40
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %36
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i64 @L1_CACHE_ALIGN(i64) #1

declare dso_local i32 @xp_remote_memcpy(i32, i64, i64) #1

declare dso_local i32 @xp_pa(i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @XPC_PARTID(%struct.xpc_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
