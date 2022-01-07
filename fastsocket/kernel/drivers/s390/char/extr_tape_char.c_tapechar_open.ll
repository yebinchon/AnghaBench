; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_char.c_tapechar_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_char.c_tapechar_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.tape_device*, %struct.TYPE_4__ }
%struct.tape_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"TCHAR:open: %i:%i\0A\00", align 1
@tapechar_major = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@TAPE_MINORS_PER_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"TCHAR:open: tape_get_device() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tapechar_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tapechar_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.tape_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @imajor(i32 %14)
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @iminor(i32 %21)
  %23 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %22)
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @imajor(i32 %29)
  %31 = load i64, i64* @tapechar_major, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %75

36:                                               ; preds = %2
  %37 = call i32 (...) @lock_kernel()
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @iminor(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TAPE_MINORS_PER_DEV, align 4
  %47 = sdiv i32 %45, %46
  %48 = call %struct.tape_device* @tape_get_device(i32 %47)
  store %struct.tape_device* %48, %struct.tape_device** %6, align 8
  %49 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %50 = call i64 @IS_ERR(%struct.tape_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %36
  %53 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %55 = call i32 @PTR_ERR(%struct.tape_device* %54)
  store i32 %55, i32* %8, align 4
  br label %72

56:                                               ; preds = %36
  %57 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %58 = call i32 @tape_open(%struct.tape_device* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %63 = load %struct.file*, %struct.file** %5, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  store %struct.tape_device* %62, %struct.tape_device** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = call i32 @nonseekable_open(%struct.inode* %65, %struct.file* %66)
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %56
  %69 = load %struct.tape_device*, %struct.tape_device** %6, align 8
  %70 = call i32 @tape_put_device(%struct.tape_device* %69)
  br label %71

71:                                               ; preds = %68, %61
  br label %72

72:                                               ; preds = %71, %52
  %73 = call i32 (...) @unlock_kernel()
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %33
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @DBF_EVENT(i32, i8*, ...) #1

declare dso_local i64 @imajor(i32) #1

declare dso_local i32 @iminor(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.tape_device* @tape_get_device(i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_device*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_device*) #1

declare dso_local i32 @tape_open(%struct.tape_device*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @tape_put_device(%struct.tape_device*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
