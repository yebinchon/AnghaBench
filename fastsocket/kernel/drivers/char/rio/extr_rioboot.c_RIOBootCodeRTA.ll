; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioboot.c_RIOBootCodeRTA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioboot.c_RIOBootCodeRTA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_info = type { i32, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.DownLoad = type { i32, i32 }

@RIO_DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Data at user address %p\0A\00", align 1
@SIXTY_FOUR_K = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"RTA Boot Code Too Large!\0A\00", align 1
@HOST_FILE_TOO_LARGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"RTA Boot Code : BUSY BUSY BUSY!\0A\00", align 1
@BOOT_IN_PROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RTA_BOOT_DATA_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Bad data copy from user space\0A\00", align 1
@COPYIN_FAILED = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIOBootCodeRTA(%struct.rio_info* %0, %struct.DownLoad* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rio_info*, align 8
  %5 = alloca %struct.DownLoad*, align 8
  %6 = alloca i32, align 4
  store %struct.rio_info* %0, %struct.rio_info** %4, align 8
  store %struct.DownLoad* %1, %struct.DownLoad** %5, align 8
  %7 = call i32 (...) @func_enter()
  %8 = load i32, i32* @RIO_DEBUG_BOOT, align 4
  %9 = load %struct.DownLoad*, %struct.DownLoad** %5, align 8
  %10 = getelementptr inbounds %struct.DownLoad, %struct.DownLoad* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.DownLoad*, %struct.DownLoad** %5, align 8
  %14 = getelementptr inbounds %struct.DownLoad, %struct.DownLoad* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SIXTY_FOUR_K, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* @RIO_DEBUG_BOOT, align 4
  %20 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @HOST_FILE_TOO_LARGE, align 4
  %22 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %23 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = call i32 (...) @func_exit()
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %99

28:                                               ; preds = %2
  %29 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %30 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* @RIO_DEBUG_BOOT, align 4
  %35 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @BOOT_IN_PROGRESS, align 4
  %37 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %38 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = call i32 (...) @func_exit()
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %99

43:                                               ; preds = %28
  %44 = load i32, i32* @RTA_BOOT_DATA_SIZE, align 4
  %45 = load %struct.DownLoad*, %struct.DownLoad** %5, align 8
  %46 = getelementptr inbounds %struct.DownLoad, %struct.DownLoad* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RTA_BOOT_DATA_SIZE, align 4
  %49 = srem i32 %47, %48
  %50 = sub nsw i32 %44, %49
  %51 = load i32, i32* @RTA_BOOT_DATA_SIZE, align 4
  %52 = srem i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %54 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @memset(i64 %55, i32 0, i32 %56)
  %58 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %59 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load %struct.DownLoad*, %struct.DownLoad** %5, align 8
  %66 = getelementptr inbounds %struct.DownLoad, %struct.DownLoad* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.DownLoad*, %struct.DownLoad** %5, align 8
  %69 = getelementptr inbounds %struct.DownLoad, %struct.DownLoad* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @copy_from_user(i32* %64, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %43
  %74 = load i32, i32* @RIO_DEBUG_BOOT, align 4
  %75 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @COPYIN_FAILED, align 4
  %77 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %78 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = call i32 (...) @func_exit()
  %81 = load i32, i32* @EFAULT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %99

83:                                               ; preds = %43
  %84 = load %struct.DownLoad*, %struct.DownLoad** %5, align 8
  %85 = getelementptr inbounds %struct.DownLoad, %struct.DownLoad* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* @RTA_BOOT_DATA_SIZE, align 4
  %90 = sdiv i32 %88, %89
  %91 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %92 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.DownLoad*, %struct.DownLoad** %5, align 8
  %94 = getelementptr inbounds %struct.DownLoad, %struct.DownLoad* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rio_info*, %struct.rio_info** %4, align 8
  %97 = getelementptr inbounds %struct.rio_info, %struct.rio_info* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = call i32 (...) @func_exit()
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %83, %73, %33, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @rio_dprintk(i32, i8*, ...) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @copy_from_user(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
