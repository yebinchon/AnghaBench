; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_monreader_thaw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_monreader_thaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mon_private = type { i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MON_MSGLIM = common dso_local global i32 0, align 4
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@monreader_iucv_handler = common dso_local global i32 0, align 4
@MON_SERVICE = common dso_local global i32 0, align 4
@user_data_connect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Connecting to the z/VM *MONITOR system service failed with rc=%i\0A\00", align 1
@mon_conn_wait_queue = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @monreader_thaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monreader_thaw(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mon_private*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.mon_private* @dev_get_drvdata(%struct.device* %6)
  store %struct.mon_private* %7, %struct.mon_private** %4, align 8
  %8 = load %struct.mon_private*, %struct.mon_private** %4, align 8
  %9 = icmp ne %struct.mon_private* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @MON_MSGLIM, align 4
  %15 = load i32, i32* @IUCV_IPRMDATA, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @iucv_path_alloc(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.mon_private*, %struct.mon_private** %4, align 8
  %19 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.mon_private*, %struct.mon_private** %4, align 8
  %21 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %11
  br label %68

25:                                               ; preds = %11
  %26 = load %struct.mon_private*, %struct.mon_private** %4, align 8
  %27 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @MON_SERVICE, align 4
  %30 = load i32, i32* @user_data_connect, align 4
  %31 = load %struct.mon_private*, %struct.mon_private** %4, align 8
  %32 = call i32 @iucv_path_connect(i32* %28, i32* @monreader_iucv_handler, i32 %29, i32* null, i32 %30, %struct.mon_private* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %59

38:                                               ; preds = %25
  %39 = load i32, i32* @mon_conn_wait_queue, align 4
  %40 = load %struct.mon_private*, %struct.mon_private** %4, align 8
  %41 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %40, i32 0, i32 2
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load %struct.mon_private*, %struct.mon_private** %4, align 8
  %46 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %45, i32 0, i32 0
  %47 = call i64 @atomic_read(i32* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i1 [ true, %38 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @wait_event(i32 %39, i32 %51)
  %53 = load %struct.mon_private*, %struct.mon_private** %4, align 8
  %54 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %53, i32 0, i32 0
  %55 = call i64 @atomic_read(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %59

58:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %73

59:                                               ; preds = %57, %35
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  %62 = load %struct.mon_private*, %struct.mon_private** %4, align 8
  %63 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @iucv_path_free(i32* %64)
  %66 = load %struct.mon_private*, %struct.mon_private** %4, align 8
  %67 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %59, %24
  %69 = load %struct.mon_private*, %struct.mon_private** %4, align 8
  %70 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %69, i32 0, i32 0
  %71 = call i32 @atomic_set(i32* %70, i32 1)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %58, %10
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.mon_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32* @iucv_path_alloc(i32, i32, i32) #1

declare dso_local i32 @iucv_path_connect(i32*, i32*, i32, i32*, i32, %struct.mon_private*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @iucv_path_free(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
