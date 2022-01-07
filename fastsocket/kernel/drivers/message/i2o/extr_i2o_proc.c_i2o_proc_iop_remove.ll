; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_proc_iop_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_proc_iop_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32, %struct.i2o_controller*, %struct.proc_dir_entry*, %struct.proc_dir_entry* }
%struct.i2o_controller = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"removing IOP /proc/i2o/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc_dir_entry*, %struct.i2o_controller*)* @i2o_proc_iop_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2o_proc_iop_remove(%struct.proc_dir_entry* %0, %struct.i2o_controller* %1) #0 {
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.i2o_controller*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %3, align 8
  store %struct.i2o_controller* %1, %struct.i2o_controller** %4, align 8
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %8 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %7, i32 0, i32 3
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  store %struct.proc_dir_entry* %9, %struct.proc_dir_entry** %5, align 8
  br label %10

10:                                               ; preds = %30, %2
  %11 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %12 = icmp ne %struct.proc_dir_entry* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %15 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %14, i32 0, i32 2
  %16 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %15, align 8
  store %struct.proc_dir_entry* %16, %struct.proc_dir_entry** %6, align 8
  %17 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %18 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %17, i32 0, i32 1
  %19 = load %struct.i2o_controller*, %struct.i2o_controller** %18, align 8
  %20 = load %struct.i2o_controller*, %struct.i2o_controller** %4, align 8
  %21 = icmp eq %struct.i2o_controller* %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %24 = call i32 @i2o_proc_subdir_remove(%struct.proc_dir_entry* %23)
  %25 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %26 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %29 = call i32 @remove_proc_entry(i32 %27, %struct.proc_dir_entry* %28)
  br label %30

30:                                               ; preds = %22, %13
  %31 = load %struct.i2o_controller*, %struct.i2o_controller** %4, align 8
  %32 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @osm_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  store %struct.proc_dir_entry* %35, %struct.proc_dir_entry** %5, align 8
  br label %10

36:                                               ; preds = %10
  ret void
}

declare dso_local i32 @i2o_proc_subdir_remove(%struct.proc_dir_entry*) #1

declare dso_local i32 @remove_proc_entry(i32, %struct.proc_dir_entry*) #1

declare dso_local i32 @osm_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
