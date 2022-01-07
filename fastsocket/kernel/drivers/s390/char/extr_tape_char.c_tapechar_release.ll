; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_char.c_tapechar_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_char.c_tapechar_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.tape_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"TCHAR:release: %x\0A\00", align 1
@MTREW = common dso_local global i32 0, align 4
@MTWEOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tapechar_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tapechar_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.tape_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call i32 @iminor(%struct.inode* %6)
  %8 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.tape_device*
  store %struct.tape_device* %12, %struct.tape_device** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call i32 @iminor(%struct.inode* %13)
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %19 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %24 = call i32 @tape_std_terminate_write(%struct.tape_device* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %27 = load i32, i32* @MTREW, align 4
  %28 = call i64 @tape_mtop(%struct.tape_device* %26, i32 %27, i32 1)
  br label %46

29:                                               ; preds = %2
  %30 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %31 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %36 = load i32, i32* @MTWEOF, align 4
  %37 = call i64 @tape_mtop(%struct.tape_device* %35, i32 %36, i32 1)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %41 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %48 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %54 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @idal_buffer_free(i32* %56)
  %58 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %59 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %52, %46
  %62 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %63 = call i32 @tape_release(%struct.tape_device* %62)
  %64 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %65 = call i64 @tape_put_device(%struct.tape_device* %64)
  %66 = load %struct.file*, %struct.file** %4, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  ret i32 0
}

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @tape_std_terminate_write(%struct.tape_device*) #1

declare dso_local i64 @tape_mtop(%struct.tape_device*, i32, i32) #1

declare dso_local i32 @idal_buffer_free(i32*) #1

declare dso_local i32 @tape_release(%struct.tape_device*) #1

declare dso_local i64 @tape_put_device(%struct.tape_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
