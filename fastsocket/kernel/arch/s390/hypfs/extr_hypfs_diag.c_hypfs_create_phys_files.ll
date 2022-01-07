; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_phys_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_hypfs_create_phys_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type opaque

@.str = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@diag204_info_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.super_block*, %struct.dentry*, i8*)* @hypfs_create_phys_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hypfs_create_phys_files(%struct.super_block* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = bitcast %struct.dentry* %13 to i8*
  %15 = call i8* @hypfs_mkdir(%struct.super_block* %12, i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = bitcast i8* %15 to %struct.dentry*
  store %struct.dentry* %16, %struct.dentry** %10, align 8
  %17 = load %struct.dentry*, %struct.dentry** %10, align 8
  %18 = bitcast %struct.dentry* %17 to i8*
  %19 = call i64 @IS_ERR(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.dentry*, %struct.dentry** %10, align 8
  %23 = bitcast %struct.dentry* %22 to i8*
  store i8* %23, i8** %4, align 8
  br label %58

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @diag204_info_type, align 4
  %27 = call i32 @phys_hdr__size(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %25, i64 %28
  store i8* %29, i8** %9, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %53, %24
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @diag204_info_type, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @phys_hdr__cpus(i32 %32, i8* %33)
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = load %struct.dentry*, %struct.dentry** %10, align 8
  %39 = bitcast %struct.dentry* %38 to i8*
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @hypfs_create_phys_cpu_files(%struct.super_block* %37, i8* %39, i8* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %11, align 4
  %46 = call i8* @ERR_PTR(i32 %45)
  store i8* %46, i8** %4, align 8
  br label %58

47:                                               ; preds = %36
  %48 = load i32, i32* @diag204_info_type, align 4
  %49 = call i32 @phys_cpu__size(i32 %48)
  %50 = load i8*, i8** %9, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr i8, i8* %50, i64 %51
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %30

56:                                               ; preds = %30
  %57 = load i8*, i8** %9, align 8
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %56, %44, %21
  %59 = load i8*, i8** %4, align 8
  ret i8* %59
}

declare dso_local i8* @hypfs_mkdir(%struct.super_block*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @phys_hdr__size(i32) #1

declare dso_local i32 @phys_hdr__cpus(i32, i8*) #1

declare dso_local i32 @hypfs_create_phys_cpu_files(%struct.super_block*, i8*, i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @phys_cpu__size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
