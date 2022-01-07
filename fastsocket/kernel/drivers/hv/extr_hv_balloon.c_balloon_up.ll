; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_balloon_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_balloon.c_balloon_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.work_struct = type { i32 }
%struct.dm_balloon_response = type { i32, i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }

@dm_device = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@send_buffer = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@DM_BALLOON_RESPONSE = common dso_local global i32 0, align 4
@DM_INITIALIZED = common dso_local global i32 0, align 4
@trans_id = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Balloon response failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @balloon_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balloon_up(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_balloon_response*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dm_device, i32 0, i32 2, i32 0), align 4
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 512, i32* %6, align 4
  br label %12

12:                                               ; preds = %106, %43, %1
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %107

16:                                               ; preds = %12
  %17 = load i64, i64* @send_buffer, align 8
  %18 = inttoptr i64 %17 to %struct.dm_balloon_response*
  store %struct.dm_balloon_response* %18, %struct.dm_balloon_response** %5, align 8
  %19 = load i64, i64* @send_buffer, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i32 @memset(i64 %19, i32 0, i32 %20)
  %22 = load i32, i32* @DM_BALLOON_RESPONSE, align 4
  %23 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %24 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %27 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 32, i32* %28, align 8
  %29 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %30 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @alloc_balloon_pages(%struct.TYPE_10__* @dm_device, i32 %34, %struct.dm_balloon_response* %35, i32 %36, i32* %8)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %16
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %12

44:                                               ; preds = %40, %16
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %44
  %52 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %53 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  store i32 1, i32* %9, align 4
  %54 = load i32, i32* @DM_INITIALIZED, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dm_device, i32 0, i32 1), align 8
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %78, %55
  %57 = call i32 @atomic_inc_return(i32* @trans_id)
  %58 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %59 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dm_device, i32 0, i32 0), align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %65 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %66 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %70 = call i32 @vmbus_sendpacket(i32 %63, %struct.dm_balloon_response* %64, i32 %68, i64 0, i32 %69, i32 0)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %56
  %76 = call i32 @msleep(i32 20)
  br label %77

77:                                               ; preds = %75, %56
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %56, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %102, %86
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %91 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %96 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @free_balloon_pages(%struct.TYPE_10__* @dm_device, i32* %100)
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %88

105:                                              ; preds = %88
  store i32 1, i32* %9, align 4
  br label %106

106:                                              ; preds = %105, %83
  br label %12

107:                                              ; preds = %12
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @alloc_balloon_pages(%struct.TYPE_10__*, i32, %struct.dm_balloon_response*, i32, i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.dm_balloon_response*, i32, i64, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @free_balloon_pages(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
