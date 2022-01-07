; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_create_u64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_create_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { i32 }

@TMP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@REG_FILE_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @hypfs_create_u64(%struct.super_block* %0, %struct.dentry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @TMP_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @TMP_SIZE, align 4
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kstrdup(i8* %18, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.dentry* @ERR_PTR(i32 %28)
  store %struct.dentry* %29, %struct.dentry** %5, align 8
  store i32 1, i32* %14, align 4
  br label %52

30:                                               ; preds = %4
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* @S_IFREG, align 4
  %36 = load i32, i32* @REG_FILE_MODE, align 4
  %37 = or i32 %35, %36
  %38 = call %struct.dentry* @hypfs_create_file(%struct.super_block* %31, %struct.dentry* %32, i8* %33, i8* %34, i32 %37)
  store %struct.dentry* %38, %struct.dentry** %13, align 8
  %39 = load %struct.dentry*, %struct.dentry** %13, align 8
  %40 = call i64 @IS_ERR(%struct.dentry* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @kfree(i8* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.dentry* @ERR_PTR(i32 %46)
  store %struct.dentry* %47, %struct.dentry** %5, align 8
  store i32 1, i32* %14, align 4
  br label %52

48:                                               ; preds = %30
  %49 = load %struct.dentry*, %struct.dentry** %13, align 8
  %50 = call i32 @hypfs_add_dentry(%struct.dentry* %49)
  %51 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %51, %struct.dentry** %5, align 8
  store i32 1, i32* %14, align 4
  br label %52

52:                                               ; preds = %48, %42, %26
  %53 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #2

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local %struct.dentry* @ERR_PTR(i32) #2

declare dso_local %struct.dentry* @hypfs_create_file(%struct.super_block*, %struct.dentry*, i8*, i8*, i32) #2

declare dso_local i64 @IS_ERR(%struct.dentry*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @hypfs_add_dentry(%struct.dentry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
