; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_apm-emulation.c_apm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_apm-emulation.c_apm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.apm_user* }
%struct.apm_user = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@user_list_lock = common dso_local global i32 0, align 4
@apm_user_list = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @apm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.apm_user*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = call i32 (...) @lock_kernel()
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.apm_user* @kzalloc(i32 16, i32 %7)
  store %struct.apm_user* %8, %struct.apm_user** %5, align 8
  %9 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %10 = icmp ne %struct.apm_user* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %2
  %12 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %13 = call i32 @capable(i32 %12)
  %14 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %15 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FMODE_WRITE, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @FMODE_WRITE, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %25 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FMODE_READ, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @FMODE_READ, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %35 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = call i32 @down_write(i32* @user_list_lock)
  %37 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %38 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %37, i32 0, i32 2
  %39 = call i32 @list_add(i32* %38, i32* @apm_user_list)
  %40 = call i32 @up_write(i32* @user_list_lock)
  %41 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %42 = load %struct.file*, %struct.file** %4, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 1
  store %struct.apm_user* %41, %struct.apm_user** %43, align 8
  br label %44

44:                                               ; preds = %11, %2
  %45 = call i32 (...) @unlock_kernel()
  %46 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %47 = icmp ne %struct.apm_user* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ 0, %48 ], [ %51, %49 ]
  ret i32 %53
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.apm_user* @kzalloc(i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
