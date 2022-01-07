; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_block_ccw_fill_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_block_ccw_fill_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32*, i32 }
%struct.ipl_parameter_block = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@sclp_ipl_info = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@LOADPARM_LEN = common dso_local global i32 0, align 4
@DIAG308_FLAGS_LP_VALID = common dso_local global i32 0, align 4
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@diag308_set_works = common dso_local global i64 0, align 8
@ipl_block = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@DIAG308_VM_FLAGS_VP_VALID = common dso_local global i32 0, align 4
@DIAG308_VMPARM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipl_parameter_block*)* @reipl_block_ccw_fill_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reipl_block_ccw_fill_parms(%struct.ipl_parameter_block* %0) #0 {
  %2 = alloca %struct.ipl_parameter_block*, align 8
  store %struct.ipl_parameter_block* %0, %struct.ipl_parameter_block** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sclp_ipl_info, i32 0, i32 1), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %7 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LOADPARM_LEN, align 4
  %12 = call i32 @memcpy(i32 %10, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sclp_ipl_info, i32 0, i32 0), i32 %11)
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %15 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LOADPARM_LEN, align 4
  %20 = call i32 @memset(i32 %18, i32 64, i32 %19)
  br label %21

21:                                               ; preds = %13, %5
  %22 = load i32, i32* @DIAG308_FLAGS_LP_VALID, align 4
  %23 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %24 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i64, i64* @MACHINE_IS_VM, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %21
  %29 = load i64, i64* @diag308_set_works, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ipl_block, i32 0, i32 0, i32 0, i32 0), align 8
  %33 = load i32, i32* @DIAG308_VM_FLAGS_VP_VALID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load i32, i32* @DIAG308_VM_FLAGS_VP_VALID, align 4
  %38 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %39 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ipl_block, i32 0, i32 0, i32 0, i32 2), align 8
  %45 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %46 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %2, align 8
  %50 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ipl_block, i32 0, i32 0, i32 0, i32 1), align 8
  %55 = load i32, i32* @DIAG308_VMPARM_SIZE, align 4
  %56 = call i32 @memcpy(i32 %53, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %36, %31, %28, %21
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
