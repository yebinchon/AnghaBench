; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmcp.c_vmcp_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmcp.c_vmcp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.vmcp_session* }
%struct.vmcp_session = type { i32, i64, i32*, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vmcp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmcp_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vmcp_session*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %8 = call i32 @capable(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EPERM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.vmcp_session* @kmalloc(i32 32, i32 %14)
  store %struct.vmcp_session* %15, %struct.vmcp_session** %6, align 8
  %16 = load %struct.vmcp_session*, %struct.vmcp_session** %6, align 8
  %17 = icmp ne %struct.vmcp_session* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %13
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load %struct.vmcp_session*, %struct.vmcp_session** %6, align 8
  %24 = getelementptr inbounds %struct.vmcp_session, %struct.vmcp_session* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.vmcp_session*, %struct.vmcp_session** %6, align 8
  %26 = getelementptr inbounds %struct.vmcp_session, %struct.vmcp_session* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.vmcp_session*, %struct.vmcp_session** %6, align 8
  %28 = getelementptr inbounds %struct.vmcp_session, %struct.vmcp_session* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.vmcp_session*, %struct.vmcp_session** %6, align 8
  %30 = getelementptr inbounds %struct.vmcp_session, %struct.vmcp_session* %29, i32 0, i32 0
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.vmcp_session*, %struct.vmcp_session** %6, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  store %struct.vmcp_session* %32, %struct.vmcp_session** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = call i32 @nonseekable_open(%struct.inode* %35, %struct.file* %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %21, %18, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.vmcp_session* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
