; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_create_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_create_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@REG_FILE_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @hypfs_create_str(%struct.super_block* %0, %struct.dentry* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = add nsw i64 %13, 2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i64 %14, i32 %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.dentry* @ERR_PTR(i32 %21)
  store %struct.dentry* %22, %struct.dentry** %5, align 8
  br label %48

23:                                               ; preds = %4
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @S_IFREG, align 4
  %32 = load i32, i32* @REG_FILE_MODE, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.dentry* @hypfs_create_file(%struct.super_block* %27, %struct.dentry* %28, i8* %29, i8* %30, i32 %33)
  store %struct.dentry* %34, %struct.dentry** %11, align 8
  %35 = load %struct.dentry*, %struct.dentry** %11, align 8
  %36 = call i64 @IS_ERR(%struct.dentry* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %23
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @kfree(i8* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.dentry* @ERR_PTR(i32 %42)
  store %struct.dentry* %43, %struct.dentry** %5, align 8
  br label %48

44:                                               ; preds = %23
  %45 = load %struct.dentry*, %struct.dentry** %11, align 8
  %46 = call i32 @hypfs_add_dentry(%struct.dentry* %45)
  %47 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %47, %struct.dentry** %5, align 8
  br label %48

48:                                               ; preds = %44, %38, %19
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %49
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.dentry* @hypfs_create_file(%struct.super_block*, %struct.dentry*, i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @hypfs_add_dentry(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
