; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_array_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_array_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { i64, i32, i32 }
%struct.carm_msg_ioctl = type { i8*, i8*, i64, i8*, i8* }
%struct.carm_request = type { i32, i32, i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@CARM_MSG_ARRAY = common dso_local global i8* null, align 8
@CARM_ARRAY_INFO = common dso_local global i8* null, align 8
@HST_DEV_SCAN_START = common dso_local global i64 0, align 8
@HST_DEV_SCAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"blk_insert_request, tag == %u\0A\00", align 1
@HST_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carm_host*, i32)* @carm_array_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carm_array_info(%struct.carm_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.carm_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.carm_msg_ioctl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.carm_request*, align 8
  %11 = alloca i32, align 4
  store %struct.carm_host* %0, %struct.carm_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %13 = call %struct.carm_request* @carm_get_special(%struct.carm_host* %12)
  store %struct.carm_request* %13, %struct.carm_request** %10, align 8
  %14 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %15 = icmp ne %struct.carm_request* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  br label %98

19:                                               ; preds = %2
  %20 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %21 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.carm_msg_ioctl* @carm_ref_msg(%struct.carm_host* %23, i32 %24)
  store %struct.carm_msg_ioctl* %25, %struct.carm_msg_ioctl** %6, align 8
  %26 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @carm_ref_msg_dma(%struct.carm_host* %26, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 4
  store i64 %30, i64* %8, align 8
  %31 = load i8*, i8** @CARM_MSG_ARRAY, align 8
  %32 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %33 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @CARM_ARRAY_INFO, align 8
  %35 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %36 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = call i32 @carm_lookup_bucket(i32 44)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %45 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %47 = call i32 @memset(%struct.carm_msg_ioctl* %46, i32 0, i32 40)
  %48 = load i8*, i8** @CARM_MSG_ARRAY, align 8
  %49 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %50 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @CARM_ARRAY_INFO, align 8
  %52 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %53 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %57 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @TAG_ENCODE(i32 %58)
  %60 = call i8* @cpu_to_le32(i64 %59)
  %61 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %62 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i8* @cpu_to_le32(i64 %63)
  %65 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %6, align 8
  %66 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %68 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %67, i32 0, i32 1
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %71 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @HST_DEV_SCAN_START, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %19
  %76 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %77 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HST_DEV_SCAN, align 8
  %80 = icmp eq i64 %78, %79
  br label %81

81:                                               ; preds = %75, %19
  %82 = phi i1 [ true, %19 ], [ %80, %75 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %86 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock_irq(i32* %86)
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %91 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %94 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.carm_request*, %struct.carm_request** %10, align 8
  %97 = call i32 @blk_insert_request(i32 %92, i32 %95, i32 1, %struct.carm_request* %96)
  store i32 0, i32* %3, align 4
  br label %109

98:                                               ; preds = %16
  %99 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %100 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %99, i32 0, i32 1
  %101 = call i32 @spin_lock_irq(i32* %100)
  %102 = load i64, i64* @HST_ERROR, align 8
  %103 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %104 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %106 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %105, i32 0, i32 1
  %107 = call i32 @spin_unlock_irq(i32* %106)
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %98, %81
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.carm_request* @carm_get_special(%struct.carm_host*) #1

declare dso_local %struct.carm_msg_ioctl* @carm_ref_msg(%struct.carm_host*, i32) #1

declare dso_local i64 @carm_ref_msg_dma(%struct.carm_host*, i32) #1

declare dso_local i32 @carm_lookup_bucket(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.carm_msg_ioctl*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @TAG_ENCODE(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @blk_insert_request(i32, i32, i32, %struct.carm_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
