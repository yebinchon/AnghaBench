; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_nmi_int.c_nmi_create_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_nmi_int.c_nmi_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }

@model = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@counter_config = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"unit_mask\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"extra\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.dentry*)* @nmi_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmi_create_files(%struct.super_block* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca [4 x i8], align 1
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %84, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @model, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %87

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @op_x86_virt_to_phys(i32 %15)
  %17 = call i32 @avail_to_resrv_perfctr_nmi_bit(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %84

20:                                               ; preds = %14
  %21 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @snprintf(i8* %21, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %27 = call %struct.dentry* @oprofilefs_mkdir(%struct.super_block* %24, %struct.dentry* %25, i8* %26)
  store %struct.dentry* %27, %struct.dentry** %6, align 8
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  %35 = call i32 @oprofilefs_create_ulong(%struct.super_block* %28, %struct.dentry* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  %36 = load %struct.super_block*, %struct.super_block** %3, align 8
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = call i32 @oprofilefs_create_ulong(%struct.super_block* %36, %struct.dentry* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %42)
  %44 = load %struct.super_block*, %struct.super_block** %3, align 8
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = call i32 @oprofilefs_create_ulong(%struct.super_block* %44, %struct.dentry* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %50)
  %52 = load %struct.super_block*, %struct.super_block** %3, align 8
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = call i32 @oprofilefs_create_ulong(%struct.super_block* %52, %struct.dentry* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %58)
  %60 = load %struct.super_block*, %struct.super_block** %3, align 8
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = call i32 @oprofilefs_create_ulong(%struct.super_block* %60, %struct.dentry* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %66)
  %68 = load %struct.super_block*, %struct.super_block** %3, align 8
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = call i32 @oprofilefs_create_ulong(%struct.super_block* %68, %struct.dentry* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %74)
  %76 = load %struct.super_block*, %struct.super_block** %3, align 8
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @counter_config, align 8
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i32 @oprofilefs_create_ulong(%struct.super_block* %76, %struct.dentry* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %82)
  br label %84

84:                                               ; preds = %20, %19
  %85 = load i32, i32* %5, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %8

87:                                               ; preds = %8
  ret i32 0
}

declare dso_local i32 @avail_to_resrv_perfctr_nmi_bit(i32) #1

declare dso_local i32 @op_x86_virt_to_phys(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @oprofilefs_mkdir(%struct.super_block*, %struct.dentry*, i8*) #1

declare dso_local i32 @oprofilefs_create_ulong(%struct.super_block*, %struct.dentry*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
