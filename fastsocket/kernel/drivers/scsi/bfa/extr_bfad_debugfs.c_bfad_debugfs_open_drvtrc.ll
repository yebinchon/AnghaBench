; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_debugfs.c_bfad_debugfs_open_drvtrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_debugfs.c_bfad_debugfs_open_drvtrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.bfad_port_s* }
%struct.bfad_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i64 }
%struct.file = type { %struct.bfad_debug_info* }
%struct.bfad_debug_info = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @bfad_debugfs_open_drvtrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_debugfs_open_drvtrc(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.bfad_port_s*, align 8
  %7 = alloca %struct.bfad_s*, align 8
  %8 = alloca %struct.bfad_debug_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.bfad_port_s*, %struct.bfad_port_s** %10, align 8
  store %struct.bfad_port_s* %11, %struct.bfad_port_s** %6, align 8
  %12 = load %struct.bfad_port_s*, %struct.bfad_port_s** %6, align 8
  %13 = getelementptr inbounds %struct.bfad_port_s, %struct.bfad_port_s* %12, i32 0, i32 0
  %14 = load %struct.bfad_s*, %struct.bfad_s** %13, align 8
  store %struct.bfad_s* %14, %struct.bfad_s** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.bfad_debug_info* @kzalloc(i32 16, i32 %15)
  store %struct.bfad_debug_info* %16, %struct.bfad_debug_info** %8, align 8
  %17 = load %struct.bfad_debug_info*, %struct.bfad_debug_info** %8, align 8
  %18 = icmp ne %struct.bfad_debug_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %24 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.bfad_debug_info*, %struct.bfad_debug_info** %8, align 8
  %28 = getelementptr inbounds %struct.bfad_debug_info, %struct.bfad_debug_info* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.bfad_debug_info*, %struct.bfad_debug_info** %8, align 8
  %30 = getelementptr inbounds %struct.bfad_debug_info, %struct.bfad_debug_info* %29, i32 0, i32 0
  store i32 4, i32* %30, align 8
  %31 = load %struct.bfad_debug_info*, %struct.bfad_debug_info** %8, align 8
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  store %struct.bfad_debug_info* %31, %struct.bfad_debug_info** %33, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.bfad_debug_info* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
