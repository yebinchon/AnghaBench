; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-drv.c_iwl_request_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-drv.c_iwl_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"no suitable firmware found!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c".ucode\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"attempting to load firmware %s'%s'\0A\00", align 1
@UCODE_EXPERIMENTAL_INDEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"EXPERIMENTAL \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@iwl_req_fw_callback = common dso_local global i32 0, align 4
@UCODE_EXPERIMENTAL_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_drv*, i32)* @iwl_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_request_firmware(%struct.iwl_drv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_drv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [8 x i8], align 1
  store %struct.iwl_drv* %0, %struct.iwl_drv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %22 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %24 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %38

28:                                               ; preds = %2
  %29 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %34 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %35 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %28, %15
  %39 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %43 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %50 = call i32 @IWL_ERR(%struct.iwl_drv* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %87

53:                                               ; preds = %38
  %54 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %59, i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %63 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %64 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @UCODE_EXPERIMENTAL_INDEX, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %70 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %71 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @IWL_DEBUG_INFO(%struct.iwl_drv* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %69, i32 %72)
  %74 = load i32, i32* @THIS_MODULE, align 4
  %75 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %76 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %79 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %85 = load i32, i32* @iwl_req_fw_callback, align 4
  %86 = call i32 @request_firmware_nowait(i32 %74, i32 1, i32 %77, i32 %82, i32 %83, %struct.iwl_drv* %84, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %53, %48
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_drv*, i8*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_drv*, i8*, i8*, i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, i32, i32, %struct.iwl_drv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
