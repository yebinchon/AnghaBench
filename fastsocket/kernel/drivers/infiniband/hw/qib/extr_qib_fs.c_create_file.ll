; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_fs.c_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_fs.c_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file_operations = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.dentry*, %struct.dentry**, %struct.file_operations*, i8*)* @create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_file(i8* %0, i32 %1, %struct.dentry* %2, %struct.dentry** %3, %struct.file_operations* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry**, align 8
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store %struct.dentry** %3, %struct.dentry*** %10, align 8
  store %struct.file_operations* %4, %struct.file_operations** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.dentry**, %struct.dentry*** %10, align 8
  store %struct.dentry* null, %struct.dentry** %14, align 8
  %15 = load %struct.dentry*, %struct.dentry** %9, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.dentry*, %struct.dentry** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call %struct.dentry* @lookup_one_len(i8* %20, %struct.dentry* %21, i32 %23)
  %25 = load %struct.dentry**, %struct.dentry*** %10, align 8
  store %struct.dentry* %24, %struct.dentry** %25, align 8
  %26 = load %struct.dentry**, %struct.dentry*** %10, align 8
  %27 = load %struct.dentry*, %struct.dentry** %26, align 8
  %28 = call i32 @IS_ERR(%struct.dentry* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %6
  %31 = load %struct.dentry*, %struct.dentry** %9, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.dentry**, %struct.dentry*** %10, align 8
  %35 = load %struct.dentry*, %struct.dentry** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 @qibfs_mknod(%struct.TYPE_2__* %33, %struct.dentry* %35, i32 %36, %struct.file_operations* %37, i8* %38)
  store i32 %39, i32* %13, align 4
  br label %44

40:                                               ; preds = %6
  %41 = load %struct.dentry**, %struct.dentry*** %10, align 8
  %42 = load %struct.dentry*, %struct.dentry** %41, align 8
  %43 = call i32 @PTR_ERR(%struct.dentry* %42)
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %40, %30
  %45 = load %struct.dentry*, %struct.dentry** %9, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %13, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @qibfs_mknod(%struct.TYPE_2__*, %struct.dentry*, i32, %struct.file_operations*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
