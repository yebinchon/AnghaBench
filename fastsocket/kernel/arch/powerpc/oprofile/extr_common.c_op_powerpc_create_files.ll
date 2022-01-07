; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_common.c_op_powerpc_create_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_common.c_op_powerpc_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }

@model = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@ctr = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"unit_mask\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"enable_kernel\00", align 1
@sys = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"enable_user\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.dentry*)* @op_powerpc_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_powerpc_create_files(%struct.super_block* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca [4 x i8], align 1
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %70, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @model, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %73

14:                                               ; preds = %8
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snprintf(i8* %15, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %21 = call %struct.dentry* @oprofilefs_mkdir(%struct.super_block* %18, %struct.dentry* %19, i8* %20)
  store %struct.dentry* %21, %struct.dentry** %6, align 8
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @oprofilefs_create_ulong(%struct.super_block* %22, %struct.dentry* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %28)
  %30 = load %struct.super_block*, %struct.super_block** %3, align 8
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = call i32 @oprofilefs_create_ulong(%struct.super_block* %30, %struct.dentry* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %36)
  %38 = load %struct.super_block*, %struct.super_block** %3, align 8
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = call i32 @oprofilefs_create_ulong(%struct.super_block* %38, %struct.dentry* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %44)
  %46 = load %struct.super_block*, %struct.super_block** %3, align 8
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = call i32 @oprofilefs_create_ulong(%struct.super_block* %46, %struct.dentry* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %52)
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = call i32 @oprofilefs_create_ulong(%struct.super_block* %54, %struct.dentry* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %60)
  %62 = load %struct.super_block*, %struct.super_block** %3, align 8
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctr, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 5
  %69 = call i32 @oprofilefs_create_ulong(%struct.super_block* %62, %struct.dentry* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %68)
  br label %70

70:                                               ; preds = %14
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %8

73:                                               ; preds = %8
  %74 = load %struct.super_block*, %struct.super_block** %3, align 8
  %75 = load %struct.dentry*, %struct.dentry** %4, align 8
  %76 = call i32 @oprofilefs_create_ulong(%struct.super_block* %74, %struct.dentry* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sys, i32 0, i32 4))
  %77 = load %struct.super_block*, %struct.super_block** %3, align 8
  %78 = load %struct.dentry*, %struct.dentry** %4, align 8
  %79 = call i32 @oprofilefs_create_ulong(%struct.super_block* %77, %struct.dentry* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sys, i32 0, i32 5))
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sys, i32 0, i32 4), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sys, i32 0, i32 5), align 4
  ret i32 0
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @oprofilefs_mkdir(%struct.super_block*, %struct.dentry*, i8*) #1

declare dso_local i32 @oprofilefs_create_ulong(%struct.super_block*, %struct.dentry*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
