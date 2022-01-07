; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_cpu_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_cpu_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { i32 }

@TMP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@diag204_info_type = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"mgmtime\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cputime\00", align 1
@INFO_EXT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"onlinetime\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.dentry*, i8*)* @hypfs_create_cpu_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_create_cpu_files(%struct.super_block* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @TMP_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @TMP_SIZE, align 4
  %18 = load i64, i64* @diag204_info_type, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @cpu_info__cpu_addr(i64 %18, i8* %19)
  %21 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = call %struct.dentry* @hypfs_mkdir(%struct.super_block* %22, %struct.dentry* %23, i8* %16)
  store %struct.dentry* %24, %struct.dentry** %8, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = load %struct.dentry*, %struct.dentry** %8, align 8
  %27 = load i64, i64* @diag204_info_type, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @cpu_info__acc_time(i64 %27, i8* %28)
  %30 = load i64, i64* @diag204_info_type, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @cpu_info__lp_time(i64 %30, i8* %31)
  %33 = sub nsw i64 %29, %32
  %34 = call i8* @hypfs_create_u64(%struct.super_block* %25, %struct.dentry* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %87

41:                                               ; preds = %3
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = load i64, i64* @diag204_info_type, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @cpu_info__lp_time(i64 %44, i8* %45)
  %47 = call i8* @hypfs_create_u64(%struct.super_block* %42, %struct.dentry* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %87

54:                                               ; preds = %41
  %55 = load i64, i64* @diag204_info_type, align 8
  %56 = load i64, i64* @INFO_EXT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = load %struct.dentry*, %struct.dentry** %8, align 8
  %61 = load i64, i64* @diag204_info_type, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @cpu_info__online_time(i64 %61, i8* %62)
  %64 = call i8* @hypfs_create_u64(%struct.super_block* %59, %struct.dentry* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i64 @IS_ERR(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %87

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i64, i64* @diag204_info_type, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @cpu_info__ctidx(i64 %73, i8* %74)
  %76 = call i32 @diag224_idx2name(i32 %75, i8* %16)
  %77 = load %struct.super_block*, %struct.super_block** %5, align 8
  %78 = load %struct.dentry*, %struct.dentry** %8, align 8
  %79 = call i8* @hypfs_create_str(%struct.super_block* %77, %struct.dentry* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  store i8* %79, i8** %11, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = call i64 @IS_ERR(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @PTR_ERR(i8* %84)
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %87

86:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %87

87:                                               ; preds = %86, %83, %68, %51, %38
  %88 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @cpu_info__cpu_addr(i64, i8*) #2

declare dso_local %struct.dentry* @hypfs_mkdir(%struct.super_block*, %struct.dentry*, i8*) #2

declare dso_local i8* @hypfs_create_u64(%struct.super_block*, %struct.dentry*, i8*, i64) #2

declare dso_local i64 @cpu_info__acc_time(i64, i8*) #2

declare dso_local i64 @cpu_info__lp_time(i64, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i64 @cpu_info__online_time(i64, i8*) #2

declare dso_local i32 @diag224_idx2name(i32, i8*) #2

declare dso_local i32 @cpu_info__ctidx(i64, i8*) #2

declare dso_local i8* @hypfs_create_str(%struct.super_block*, %struct.dentry*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
