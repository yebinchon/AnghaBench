; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_open_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handler = type { %struct.file_operations* }
%struct.file_operations = type { i32 (%struct.inode*, %struct.file.0*)* }
%struct.inode = type { i32 }
%struct.file.0 = type opaque
%struct.file = type { %struct.file_operations* }

@input_table = common dso_local global %struct.input_handler** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @input_open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_open_file(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.input_handler*, align 8
  %6 = alloca %struct.file_operations*, align 8
  %7 = alloca %struct.file_operations*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.file_operations* null, %struct.file_operations** %7, align 8
  %9 = call i32 (...) @lock_kernel()
  %10 = load %struct.input_handler**, %struct.input_handler*** @input_table, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call i32 @iminor(%struct.inode* %11)
  %13 = ashr i32 %12, 5
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.input_handler*, %struct.input_handler** %10, i64 %14
  %16 = load %struct.input_handler*, %struct.input_handler** %15, align 8
  store %struct.input_handler* %16, %struct.input_handler** %5, align 8
  %17 = load %struct.input_handler*, %struct.input_handler** %5, align 8
  %18 = icmp ne %struct.input_handler* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.input_handler*, %struct.input_handler** %5, align 8
  %21 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %20, i32 0, i32 0
  %22 = load %struct.file_operations*, %struct.file_operations** %21, align 8
  %23 = call i8* @fops_get(%struct.file_operations* %22)
  %24 = bitcast i8* %23 to %struct.file_operations*
  store %struct.file_operations* %24, %struct.file_operations** %7, align 8
  %25 = icmp ne %struct.file_operations* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19, %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %68

29:                                               ; preds = %19
  %30 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %31 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %30, i32 0, i32 0
  %32 = load i32 (%struct.inode*, %struct.file.0*)*, i32 (%struct.inode*, %struct.file.0*)** %31, align 8
  %33 = icmp ne i32 (%struct.inode*, %struct.file.0*)* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %36 = call i32 @fops_put(%struct.file_operations* %35)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %68

39:                                               ; preds = %29
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  %42 = load %struct.file_operations*, %struct.file_operations** %41, align 8
  store %struct.file_operations* %42, %struct.file_operations** %6, align 8
  %43 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %44 = load %struct.file*, %struct.file** %4, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  store %struct.file_operations* %43, %struct.file_operations** %45, align 8
  %46 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %47 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %46, i32 0, i32 0
  %48 = load i32 (%struct.inode*, %struct.file.0*)*, i32 (%struct.inode*, %struct.file.0*)** %47, align 8
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = bitcast %struct.file* %50 to %struct.file.0*
  %52 = call i32 %48(%struct.inode* %49, %struct.file.0* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %39
  %56 = load %struct.file*, %struct.file** %4, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  %58 = load %struct.file_operations*, %struct.file_operations** %57, align 8
  %59 = call i32 @fops_put(%struct.file_operations* %58)
  %60 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %61 = call i8* @fops_get(%struct.file_operations* %60)
  %62 = bitcast i8* %61 to %struct.file_operations*
  %63 = load %struct.file*, %struct.file** %4, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  store %struct.file_operations* %62, %struct.file_operations** %64, align 8
  br label %65

65:                                               ; preds = %55, %39
  %66 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %67 = call i32 @fops_put(%struct.file_operations* %66)
  br label %68

68:                                               ; preds = %65, %34, %26
  %69 = call i32 (...) @unlock_kernel()
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i8* @fops_get(%struct.file_operations*) #1

declare dso_local i32 @fops_put(%struct.file_operations*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
