; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_oprofilefs.c___oprofilefs_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_oprofilefs.c___oprofilefs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.file_operations = type { i32 }
%struct.inode = type { %struct.file_operations* }

@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.dentry*, i8*, %struct.file_operations*, i32, i8*)* @__oprofilefs_create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__oprofilefs_create_file(%struct.super_block* %0, %struct.dentry* %1, i8* %2, %struct.file_operations* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.file_operations* %3, %struct.file_operations** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load %struct.dentry*, %struct.dentry** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call %struct.dentry* @d_alloc_name(%struct.dentry* %16, i8* %17)
  store %struct.dentry* %18, %struct.dentry** %14, align 8
  %19 = load %struct.dentry*, %struct.dentry** %14, align 8
  %20 = icmp ne %struct.dentry* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %49

24:                                               ; preds = %6
  %25 = load %struct.super_block*, %struct.super_block** %8, align 8
  %26 = load i32, i32* @S_IFREG, align 4
  %27 = load i32, i32* %12, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.inode* @oprofilefs_get_inode(%struct.super_block* %25, i32 %28)
  store %struct.inode* %29, %struct.inode** %15, align 8
  %30 = load %struct.inode*, %struct.inode** %15, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load %struct.dentry*, %struct.dentry** %14, align 8
  %34 = call i32 @dput(%struct.dentry* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %49

37:                                               ; preds = %24
  %38 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %39 = load %struct.inode*, %struct.inode** %15, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  store %struct.file_operations* %38, %struct.file_operations** %40, align 8
  %41 = load %struct.dentry*, %struct.dentry** %14, align 8
  %42 = load %struct.inode*, %struct.inode** %15, align 8
  %43 = call i32 @d_add(%struct.dentry* %41, %struct.inode* %42)
  %44 = load i8*, i8** %13, align 8
  %45 = load %struct.dentry*, %struct.dentry** %14, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i8* %44, i8** %48, align 8
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %37, %32, %21
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local %struct.inode* @oprofilefs_get_inode(%struct.super_block*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
