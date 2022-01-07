; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_path_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_iucv.c_hvc_iucv_path_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_iucv_private = type { i64, i32, i32, %struct.iucv_path*, i32 }
%struct.iucv_path = type { i32, i32 }

@hvc_iucv_devices = common dso_local global i32 0, align 4
@hvc_iucv_table = common dso_local global %struct.hvc_iucv_private** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@hvc_iucv_filter_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"A connection request from z/VM user ID %s was refused\0A\00", align 1
@IUCV_DISCONN = common dso_local global i64 0, align 8
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@hvc_iucv_handler = common dso_local global i32 0, align 4
@IUCV_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iucv_path*, i64*, i64*)* @hvc_iucv_path_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_iucv_path_pending(%struct.iucv_path* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iucv_path*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.hvc_iucv_private*, align 8
  %9 = alloca [16 x i64], align 16
  %10 = alloca [9 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.hvc_iucv_private* null, %struct.hvc_iucv_private** %8, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %42, %3
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @hvc_iucv_devices, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load %struct.hvc_iucv_private**, %struct.hvc_iucv_private*** @hvc_iucv_table, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %18, i64 %20
  %22 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %21, align 8
  %23 = icmp ne %struct.hvc_iucv_private* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = load %struct.hvc_iucv_private**, %struct.hvc_iucv_private*** @hvc_iucv_table, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %25, i64 %27
  %29 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %28, align 8
  %30 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = call i64 @memcmp(i32 %31, i64* %32, i32 8)
  %34 = icmp eq i64 0, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.hvc_iucv_private**, %struct.hvc_iucv_private*** @hvc_iucv_table, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %36, i64 %38
  %40 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %39, align 8
  store %struct.hvc_iucv_private* %40, %struct.hvc_iucv_private** %8, align 8
  br label %45

41:                                               ; preds = %24, %17
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %13

45:                                               ; preds = %35, %13
  %46 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %47 = icmp ne %struct.hvc_iucv_private* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %128

51:                                               ; preds = %45
  %52 = call i32 @read_lock(i32* @hvc_iucv_filter_lock)
  %53 = load i64*, i64** %6, align 8
  %54 = call i32 @hvc_iucv_filter_connreq(i64* %53)
  store i32 %54, i32* %12, align 4
  %55 = call i32 @read_unlock(i32* @hvc_iucv_filter_lock)
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = call i32 @iucv_path_sever(%struct.iucv_path* %59, i64* %60)
  %62 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %63 = call i32 @iucv_path_free(%struct.iucv_path* %62)
  %64 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 0
  %65 = load i64*, i64** %6, align 8
  %66 = call i32 @memcpy(i64* %64, i64* %65, i32 8)
  %67 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 8
  store i64 0, i64* %67, align 16
  %68 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 0
  %69 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64* %68)
  store i32 0, i32* %4, align 4
  br label %128

70:                                               ; preds = %51
  %71 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %72 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %71, i32 0, i32 1
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %75 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IUCV_DISCONN, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = call i32 @iucv_path_sever(%struct.iucv_path* %80, i64* %81)
  %83 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %84 = call i32 @iucv_path_free(%struct.iucv_path* %83)
  br label %124

85:                                               ; preds = %70
  %86 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 0
  %87 = load i64*, i64** %7, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 8
  %89 = call i32 @memcpy(i64* %86, i64* %88, i32 8)
  %90 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 0
  %91 = getelementptr inbounds i64, i64* %90, i64 8
  %92 = load i64*, i64** %7, align 8
  %93 = call i32 @memcpy(i64* %91, i64* %92, i32 8)
  %94 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %95 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %94, i32 0, i32 0
  store i32 65535, i32* %95, align 4
  %96 = load i32, i32* @IUCV_IPRMDATA, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %99 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %103 = getelementptr inbounds [16 x i64], [16 x i64]* %9, i64 0, i64 0
  %104 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %105 = call i32 @iucv_path_accept(%struct.iucv_path* %102, i32* @hvc_iucv_handler, i64* %103, %struct.hvc_iucv_private* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %85
  %109 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %110 = load i64*, i64** %7, align 8
  %111 = call i32 @iucv_path_sever(%struct.iucv_path* %109, i64* %110)
  %112 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %113 = call i32 @iucv_path_free(%struct.iucv_path* %112)
  br label %124

114:                                              ; preds = %85
  %115 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %116 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %117 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %116, i32 0, i32 3
  store %struct.iucv_path* %115, %struct.iucv_path** %117, align 8
  %118 = load i64, i64* @IUCV_CONNECTED, align 8
  %119 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %120 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %122 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %121, i32 0, i32 2
  %123 = call i32 @schedule_delayed_work(i32* %122, i32 5)
  br label %124

124:                                              ; preds = %114, %108, %79
  %125 = load %struct.hvc_iucv_private*, %struct.hvc_iucv_private** %8, align 8
  %126 = getelementptr inbounds %struct.hvc_iucv_private, %struct.hvc_iucv_private* %125, i32 0, i32 1
  %127 = call i32 @spin_unlock(i32* %126)
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %124, %58, %48
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i64 @memcmp(i32, i64*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @hvc_iucv_filter_connreq(i64*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @iucv_path_sever(%struct.iucv_path*, i64*) #1

declare dso_local i32 @iucv_path_free(%struct.iucv_path*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @pr_info(i8*, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iucv_path_accept(%struct.iucv_path*, i32*, i64*, %struct.hvc_iucv_private*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
