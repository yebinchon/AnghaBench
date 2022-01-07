; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_alloc_cell.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_alloc_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_cell = type { i32*, %struct.mapped_device*, i32, i32, %struct.hash_cell*, i32* }
%struct.mapped_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hash_cell* (i8*, i8*, %struct.mapped_device*)* @alloc_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hash_cell* @alloc_cell(i8* %0, i8* %1, %struct.mapped_device* %2) #0 {
  %4 = alloca %struct.hash_cell*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca %struct.hash_cell*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mapped_device* %2, %struct.mapped_device** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hash_cell* @kmalloc(i32 40, i32 %9)
  store %struct.hash_cell* %10, %struct.hash_cell** %8, align 8
  %11 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %12 = icmp ne %struct.hash_cell* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.hash_cell* null, %struct.hash_cell** %4, align 8
  br label %66

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kstrdup(i8* %15, i32 %16)
  %18 = bitcast i8* %17 to %struct.hash_cell*
  %19 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %20 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %19, i32 0, i32 4
  store %struct.hash_cell* %18, %struct.hash_cell** %20, align 8
  %21 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %22 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %21, i32 0, i32 4
  %23 = load %struct.hash_cell*, %struct.hash_cell** %22, align 8
  %24 = icmp ne %struct.hash_cell* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %27 = call i32 @kfree(%struct.hash_cell* %26)
  store %struct.hash_cell* null, %struct.hash_cell** %4, align 8
  br label %66

28:                                               ; preds = %14
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %33 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %32, i32 0, i32 5
  store i32* null, i32** %33, align 8
  br label %53

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kstrdup(i8* %35, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %40 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %39, i32 0, i32 5
  store i32* %38, i32** %40, align 8
  %41 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %42 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %34
  %46 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %47 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %46, i32 0, i32 4
  %48 = load %struct.hash_cell*, %struct.hash_cell** %47, align 8
  %49 = call i32 @kfree(%struct.hash_cell* %48)
  %50 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %51 = call i32 @kfree(%struct.hash_cell* %50)
  store %struct.hash_cell* null, %struct.hash_cell** %4, align 8
  br label %66

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %31
  %54 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %55 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %54, i32 0, i32 3
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %58 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %57, i32 0, i32 2
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %61 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %62 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %61, i32 0, i32 1
  store %struct.mapped_device* %60, %struct.mapped_device** %62, align 8
  %63 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %64 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  store %struct.hash_cell* %65, %struct.hash_cell** %4, align 8
  br label %66

66:                                               ; preds = %53, %45, %25, %13
  %67 = load %struct.hash_cell*, %struct.hash_cell** %4, align 8
  ret %struct.hash_cell* %67
}

declare dso_local %struct.hash_cell* @kmalloc(i32, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.hash_cell*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
