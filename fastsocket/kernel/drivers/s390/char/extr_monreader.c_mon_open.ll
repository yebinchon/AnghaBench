; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.mon_private* }
%struct.mon_private = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@MON_IN_USE = common dso_local global i32 0, align 4
@mon_in_use = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MON_MSGLIM = common dso_local global i32 0, align 4
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@monreader_iucv_handler = common dso_local global i32 0, align 4
@MON_SERVICE = common dso_local global i32 0, align 4
@user_data_connect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Connecting to the z/VM *MONITOR system service failed with rc=%i\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@mon_conn_wait_queue = common dso_local global i32 0, align 4
@monreader_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mon_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.mon_private*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = call i32 (...) @lock_kernel()
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @MON_IN_USE, align 4
  %12 = call i64 @test_and_set_bit(i32 %11, i32* @mon_in_use)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %99

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = call %struct.mon_private* (...) @mon_alloc_mem()
  store %struct.mon_private* %18, %struct.mon_private** %6, align 8
  %19 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %20 = icmp ne %struct.mon_private* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %96

22:                                               ; preds = %15
  %23 = load i32, i32* @MON_MSGLIM, align 4
  %24 = load i32, i32* @IUCV_IPRMDATA, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @iucv_path_alloc(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %28 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %30 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %93

34:                                               ; preds = %22
  %35 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %36 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MON_SERVICE, align 4
  %39 = load i32, i32* @user_data_connect, align 4
  %40 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %41 = call i32 @iucv_path_connect(i32 %37, i32* @monreader_iucv_handler, i32 %38, i32* null, i32 %39, %struct.mon_private* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %88

49:                                               ; preds = %34
  %50 = load i32, i32* @mon_conn_wait_queue, align 4
  %51 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %52 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %51, i32 0, i32 1
  %53 = call i64 @atomic_read(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %57 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %56, i32 0, i32 2
  %58 = call i64 @atomic_read(i32* %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %55, %49
  %61 = phi i1 [ true, %49 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @wait_event(i32 %50, i32 %62)
  %64 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %65 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %64, i32 0, i32 2
  %66 = call i64 @atomic_read(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %70 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %69, i32 0, i32 2
  %71 = call i32 @atomic_set(i32* %70, i32 0)
  %72 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %73 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %72, i32 0, i32 1
  %74 = call i32 @atomic_set(i32* %73, i32 0)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %88

77:                                               ; preds = %60
  %78 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  store %struct.mon_private* %78, %struct.mon_private** %80, align 8
  %81 = load i32, i32* @monreader_device, align 4
  %82 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %83 = call i32 @dev_set_drvdata(i32 %81, %struct.mon_private* %82)
  %84 = call i32 (...) @unlock_kernel()
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = load %struct.file*, %struct.file** %5, align 8
  %87 = call i32 @nonseekable_open(%struct.inode* %85, %struct.file* %86)
  store i32 %87, i32* %3, align 4
  br label %102

88:                                               ; preds = %68, %44
  %89 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %90 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @iucv_path_free(i32 %91)
  br label %93

93:                                               ; preds = %88, %33
  %94 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %95 = call i32 @mon_free_mem(%struct.mon_private* %94)
  br label %96

96:                                               ; preds = %93, %21
  %97 = load i32, i32* @MON_IN_USE, align 4
  %98 = call i32 @clear_bit(i32 %97, i32* @mon_in_use)
  br label %99

99:                                               ; preds = %96, %14
  %100 = call i32 (...) @unlock_kernel()
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %77
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.mon_private* @mon_alloc_mem(...) #1

declare dso_local i32 @iucv_path_alloc(i32, i32, i32) #1

declare dso_local i32 @iucv_path_connect(i32, i32*, i32, i32*, i32, %struct.mon_private*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.mon_private*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @iucv_path_free(i32) #1

declare dso_local i32 @mon_free_mem(%struct.mon_private*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
