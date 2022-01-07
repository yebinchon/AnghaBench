; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_lpar_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_lpar_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type opaque

@LPAR_NAME_LEN = common dso_local global i32 0, align 4
@diag204_info_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.super_block*, %struct.dentry*, i8*)* @hypfs_create_lpar_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hypfs_create_lpar_files(%struct.super_block* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @LPAR_NAME_LEN, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @diag204_info_type, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @part_hdr__part_name(i32 %21, i8* %22, i8* %20)
  %24 = load i32, i32* @LPAR_NAME_LEN, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = bitcast %struct.dentry* %28 to i8*
  %30 = call i8* @hypfs_mkdir(%struct.super_block* %27, i8* %29, i8* %20)
  %31 = bitcast i8* %30 to %struct.dentry*
  store %struct.dentry* %31, %struct.dentry** %9, align 8
  %32 = load %struct.dentry*, %struct.dentry** %9, align 8
  %33 = bitcast %struct.dentry* %32 to i8*
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load %struct.dentry*, %struct.dentry** %9, align 8
  %38 = bitcast %struct.dentry* %37 to i8*
  store i8* %38, i8** %4, align 8
  store i32 1, i32* %14, align 4
  br label %86

39:                                               ; preds = %3
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = load %struct.dentry*, %struct.dentry** %9, align 8
  %42 = bitcast %struct.dentry* %41 to i8*
  %43 = call i8* @hypfs_mkdir(%struct.super_block* %40, i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = bitcast i8* %43 to %struct.dentry*
  store %struct.dentry* %44, %struct.dentry** %8, align 8
  %45 = load %struct.dentry*, %struct.dentry** %8, align 8
  %46 = bitcast %struct.dentry* %45 to i8*
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = bitcast %struct.dentry* %50 to i8*
  store i8* %51, i8** %4, align 8
  store i32 1, i32* %14, align 4
  br label %86

52:                                               ; preds = %39
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* @diag204_info_type, align 4
  %55 = call i32 @part_hdr__size(i32 %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %53, i64 %56
  store i8* %57, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %81, %52
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @diag204_info_type, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @part_hdr__rcpus(i32 %60, i8* %61)
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = load %struct.dentry*, %struct.dentry** %8, align 8
  %67 = bitcast %struct.dentry* %66 to i8*
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @hypfs_create_cpu_files(%struct.super_block* %65, i8* %67, i8* %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* %15, align 4
  %74 = call i8* @ERR_PTR(i32 %73)
  store i8* %74, i8** %4, align 8
  store i32 1, i32* %14, align 4
  br label %86

75:                                               ; preds = %64
  %76 = load i32, i32* @diag204_info_type, align 4
  %77 = call i32 @cpu_info__size(i32 %76)
  %78 = load i8*, i8** %12, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr i8, i8* %78, i64 %79
  store i8* %80, i8** %12, align 8
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load i8*, i8** %12, align 8
  store i8* %85, i8** %4, align 8
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %84, %72, %49, %36
  %87 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i8*, i8** %4, align 8
  ret i8* %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @part_hdr__part_name(i32, i8*, i8*) #2

declare dso_local i8* @hypfs_mkdir(%struct.super_block*, i8*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @part_hdr__size(i32) #2

declare dso_local i32 @part_hdr__rcpus(i32, i8*) #2

declare dso_local i32 @hypfs_create_cpu_files(%struct.super_block*, i8*, i8*) #2

declare dso_local i8* @ERR_PTR(i32) #2

declare dso_local i32 @cpu_info__size(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
