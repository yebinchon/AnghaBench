; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_phys_cpu_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_phys_cpu_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type opaque

@TMP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@diag204_info_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"mgmtime\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.dentry*, i8*)* @hypfs_create_phys_cpu_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_create_phys_cpu_files(%struct.super_block* %0, %struct.dentry* %1, i8* %2) #0 {
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
  %18 = load i32, i32* @diag204_info_type, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @phys_cpu__cpu_addr(i32 %18, i8* %19)
  %21 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = bitcast %struct.dentry* %23 to i8*
  %25 = call i8* @hypfs_mkdir(%struct.super_block* %22, i8* %24, i8* %16)
  %26 = bitcast i8* %25 to %struct.dentry*
  store %struct.dentry* %26, %struct.dentry** %8, align 8
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = bitcast %struct.dentry* %27 to i8*
  %29 = call i64 @IS_ERR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.dentry*, %struct.dentry** %8, align 8
  %33 = bitcast %struct.dentry* %32 to i8*
  %34 = call i32 @PTR_ERR(i8* %33)
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %65

35:                                               ; preds = %3
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = load %struct.dentry*, %struct.dentry** %8, align 8
  %38 = bitcast %struct.dentry* %37 to i8*
  %39 = load i32, i32* @diag204_info_type, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @phys_cpu__mgm_time(i32 %39, i8* %40)
  %42 = call i8* @hypfs_create_u64(%struct.super_block* %36, i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @PTR_ERR(i8* %47)
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %65

49:                                               ; preds = %35
  %50 = load i32, i32* @diag204_info_type, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @phys_cpu__ctidx(i32 %50, i8* %51)
  %53 = call i32 @diag224_idx2name(i32 %52, i8* %16)
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = load %struct.dentry*, %struct.dentry** %8, align 8
  %56 = bitcast %struct.dentry* %55 to i8*
  %57 = call i8* @hypfs_create_str(%struct.super_block* %54, i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @PTR_ERR(i8* %62)
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %65

64:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %61, %46, %31
  %66 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @phys_cpu__cpu_addr(i32, i8*) #2

declare dso_local i8* @hypfs_mkdir(%struct.super_block*, i8*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i8* @hypfs_create_u64(%struct.super_block*, i8*, i8*, i32) #2

declare dso_local i32 @phys_cpu__mgm_time(i32, i8*) #2

declare dso_local i32 @diag224_idx2name(i32, i8*) #2

declare dso_local i32 @phys_cpu__ctidx(i32, i8*) #2

declare dso_local i8* @hypfs_create_str(%struct.super_block*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
