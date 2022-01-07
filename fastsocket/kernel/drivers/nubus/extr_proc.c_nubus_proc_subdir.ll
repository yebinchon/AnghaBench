; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_proc.c_nubus_proc_subdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/nubus/extr_proc.c_nubus_proc_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_dev = type { i32 }
%struct.proc_dir_entry = type { i32 }
%struct.nubus_dir = type { i32 }
%struct.nubus_dirent = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nubus_dev*, %struct.proc_dir_entry*, %struct.nubus_dir*)* @nubus_proc_subdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nubus_proc_subdir(%struct.nubus_dev* %0, %struct.proc_dir_entry* %1, %struct.nubus_dir* %2) #0 {
  %4 = alloca %struct.nubus_dev*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.nubus_dir*, align 8
  %7 = alloca %struct.nubus_dirent, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca %struct.proc_dir_entry*, align 8
  store %struct.nubus_dev* %0, %struct.nubus_dev** %4, align 8
  store %struct.proc_dir_entry* %1, %struct.proc_dir_entry** %5, align 8
  store %struct.nubus_dir* %2, %struct.nubus_dir** %6, align 8
  br label %10

10:                                               ; preds = %30, %3
  %11 = load %struct.nubus_dir*, %struct.nubus_dir** %6, align 8
  %12 = call i32 @nubus_readdir(%struct.nubus_dir* %11, %struct.nubus_dirent* %7)
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %16 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %7, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %20 = load i32, i32* @S_IFREG, align 4
  %21 = load i32, i32* @S_IRUGO, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @S_IWUSR, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %26 = call %struct.proc_dir_entry* @create_proc_entry(i8* %19, i32 %24, %struct.proc_dir_entry* %25)
  store %struct.proc_dir_entry* %26, %struct.proc_dir_entry** %9, align 8
  %27 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %28 = icmp ne %struct.proc_dir_entry* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %14
  br label %31

30:                                               ; preds = %14
  br label %10

31:                                               ; preds = %29, %10
  ret void
}

declare dso_local i32 @nubus_readdir(%struct.nubus_dir*, %struct.nubus_dirent*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @create_proc_entry(i8*, i32, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
