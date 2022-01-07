; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_raw_cmd_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_raw_cmd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floppy_raw_cmd = type { %struct.floppy_raw_cmd*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.floppy_raw_cmd**)* @raw_cmd_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_cmd_free(%struct.floppy_raw_cmd** %0) #0 {
  %2 = alloca %struct.floppy_raw_cmd**, align 8
  %3 = alloca %struct.floppy_raw_cmd*, align 8
  %4 = alloca %struct.floppy_raw_cmd*, align 8
  store %struct.floppy_raw_cmd** %0, %struct.floppy_raw_cmd*** %2, align 8
  %5 = load %struct.floppy_raw_cmd**, %struct.floppy_raw_cmd*** %2, align 8
  %6 = load %struct.floppy_raw_cmd*, %struct.floppy_raw_cmd** %5, align 8
  store %struct.floppy_raw_cmd* %6, %struct.floppy_raw_cmd** %4, align 8
  %7 = load %struct.floppy_raw_cmd**, %struct.floppy_raw_cmd*** %2, align 8
  store %struct.floppy_raw_cmd* null, %struct.floppy_raw_cmd** %7, align 8
  br label %8

8:                                                ; preds = %26, %1
  %9 = load %struct.floppy_raw_cmd*, %struct.floppy_raw_cmd** %4, align 8
  %10 = icmp ne %struct.floppy_raw_cmd* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load %struct.floppy_raw_cmd*, %struct.floppy_raw_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.floppy_raw_cmd, %struct.floppy_raw_cmd* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.floppy_raw_cmd*, %struct.floppy_raw_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.floppy_raw_cmd, %struct.floppy_raw_cmd* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.floppy_raw_cmd*, %struct.floppy_raw_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.floppy_raw_cmd, %struct.floppy_raw_cmd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @fd_dma_mem_free(i64 %19, i64 %22)
  %24 = load %struct.floppy_raw_cmd*, %struct.floppy_raw_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.floppy_raw_cmd, %struct.floppy_raw_cmd* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %16, %11
  %27 = load %struct.floppy_raw_cmd*, %struct.floppy_raw_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.floppy_raw_cmd, %struct.floppy_raw_cmd* %27, i32 0, i32 0
  %29 = load %struct.floppy_raw_cmd*, %struct.floppy_raw_cmd** %28, align 8
  store %struct.floppy_raw_cmd* %29, %struct.floppy_raw_cmd** %3, align 8
  %30 = load %struct.floppy_raw_cmd*, %struct.floppy_raw_cmd** %4, align 8
  %31 = call i32 @kfree(%struct.floppy_raw_cmd* %30)
  %32 = load %struct.floppy_raw_cmd*, %struct.floppy_raw_cmd** %3, align 8
  store %struct.floppy_raw_cmd* %32, %struct.floppy_raw_cmd** %4, align 8
  br label %8

33:                                               ; preds = %8
  ret void
}

declare dso_local i32 @fd_dma_mem_free(i64, i64) #1

declare dso_local i32 @kfree(%struct.floppy_raw_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
