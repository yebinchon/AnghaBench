; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_diag_create_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_diag_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type opaque
%struct.x_info_blk_hdr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"systems\00", align 1
@diag204_info_type = common dso_local global i32 0, align 4
@LPAR_PHYS_FLG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"hyp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LPAR Hypervisor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hypfs_diag_create_files(%struct.super_block* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %14 = call i8* (...) @diag204_store()
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %12, align 8
  %20 = call i32 @PTR_ERR(i8* %19)
  store i32 %20, i32* %3, align 4
  br label %114

21:                                               ; preds = %2
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = bitcast %struct.dentry* %23 to i8*
  %25 = call i8* @hypfs_mkdir(%struct.super_block* %22, i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = bitcast i8* %25 to %struct.dentry*
  store %struct.dentry* %26, %struct.dentry** %6, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = bitcast %struct.dentry* %27 to i8*
  %29 = call i64 @IS_ERR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = bitcast %struct.dentry* %32 to i8*
  %34 = call i32 @PTR_ERR(i8* %33)
  store i32 %34, i32* %11, align 4
  br label %112

35:                                               ; preds = %21
  %36 = load i8*, i8** %12, align 8
  %37 = bitcast i8* %36 to %struct.x_info_blk_hdr*
  %38 = bitcast %struct.x_info_blk_hdr* %37 to i8*
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @diag204_info_type, align 4
  %41 = call i32 @info_blk_hdr__size(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %39, i64 %42
  store i8* %43, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %63, %35
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @diag204_info_type, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @info_blk_hdr__npar(i32 %46, i8* %47)
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.super_block*, %struct.super_block** %4, align 8
  %52 = load %struct.dentry*, %struct.dentry** %6, align 8
  %53 = bitcast %struct.dentry* %52 to i8*
  %54 = load i8*, i8** %9, align 8
  %55 = call i8* @hypfs_create_lpar_files(%struct.super_block* %51, i8* %53, i8* %54)
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  store i32 %61, i32* %11, align 4
  br label %112

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load i32, i32* @diag204_info_type, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @info_blk_hdr__flags(i32 %67, i8* %68)
  %70 = load i32, i32* @LPAR_PHYS_FLG, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load %struct.super_block*, %struct.super_block** %4, align 8
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = bitcast %struct.dentry* %75 to i8*
  %77 = load i8*, i8** %9, align 8
  %78 = call i8* @hypfs_create_phys_files(%struct.super_block* %74, i8* %76, i8* %77)
  store i8* %78, i8** %13, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = call i64 @IS_ERR(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @PTR_ERR(i8* %83)
  store i32 %84, i32* %11, align 4
  br label %112

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %66
  %87 = load %struct.super_block*, %struct.super_block** %4, align 8
  %88 = load %struct.dentry*, %struct.dentry** %5, align 8
  %89 = bitcast %struct.dentry* %88 to i8*
  %90 = call i8* @hypfs_mkdir(%struct.super_block* %87, i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %91 = bitcast i8* %90 to %struct.dentry*
  store %struct.dentry* %91, %struct.dentry** %7, align 8
  %92 = load %struct.dentry*, %struct.dentry** %7, align 8
  %93 = bitcast %struct.dentry* %92 to i8*
  %94 = call i64 @IS_ERR(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load %struct.dentry*, %struct.dentry** %7, align 8
  %98 = bitcast %struct.dentry* %97 to i8*
  %99 = call i32 @PTR_ERR(i8* %98)
  store i32 %99, i32* %11, align 4
  br label %112

100:                                              ; preds = %86
  %101 = load %struct.super_block*, %struct.super_block** %4, align 8
  %102 = load %struct.dentry*, %struct.dentry** %7, align 8
  %103 = bitcast %struct.dentry* %102 to i8*
  %104 = call i8* @hypfs_create_str(%struct.super_block* %101, i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %104, i8** %13, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i64 @IS_ERR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i8*, i8** %13, align 8
  %110 = call i32 @PTR_ERR(i8* %109)
  store i32 %110, i32* %11, align 4
  br label %112

111:                                              ; preds = %100
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %111, %108, %96, %82, %59, %31
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %18
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i8* @diag204_store(...) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @hypfs_mkdir(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @info_blk_hdr__size(i32) #1

declare dso_local i32 @info_blk_hdr__npar(i32, i8*) #1

declare dso_local i8* @hypfs_create_lpar_files(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @info_blk_hdr__flags(i32, i8*) #1

declare dso_local i8* @hypfs_create_phys_files(%struct.super_block*, i8*, i8*) #1

declare dso_local i8* @hypfs_create_str(%struct.super_block*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
