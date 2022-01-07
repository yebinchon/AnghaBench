; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_seq_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_seq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.mdstat_info* }
%struct.mdstat_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@md_seq_ops = common dso_local global i32 0, align 4
@md_event_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @md_seq_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_seq_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdstat_info*, align 8
  %8 = alloca %struct.seq_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mdstat_info* @kmalloc(i32 4, i32 %9)
  store %struct.mdstat_info* %10, %struct.mdstat_info** %7, align 8
  %11 = load %struct.mdstat_info*, %struct.mdstat_info** %7, align 8
  %12 = icmp eq %struct.mdstat_info* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call i32 @seq_open(%struct.file* %17, i32* @md_seq_ops)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.mdstat_info*, %struct.mdstat_info** %7, align 8
  %23 = call i32 @kfree(%struct.mdstat_info* %22)
  br label %34

24:                                               ; preds = %16
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load %struct.seq_file*, %struct.seq_file** %26, align 8
  store %struct.seq_file* %27, %struct.seq_file** %8, align 8
  %28 = load %struct.mdstat_info*, %struct.mdstat_info** %7, align 8
  %29 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %30 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %29, i32 0, i32 0
  store %struct.mdstat_info* %28, %struct.mdstat_info** %30, align 8
  %31 = call i32 @atomic_read(i32* @md_event_count)
  %32 = load %struct.mdstat_info*, %struct.mdstat_info** %7, align 8
  %33 = getelementptr inbounds %struct.mdstat_info, %struct.mdstat_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.mdstat_info* @kmalloc(i32, i32) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local i32 @kfree(%struct.mdstat_info*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
