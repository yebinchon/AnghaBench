; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-dvb.c_fdtv_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-dvb.c_fdtv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.firedtv_backend*, %struct.device* }
%struct.device = type { i32 }
%struct.firedtv_backend = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@avc_remote_ctrl_work = common dso_local global i32 0, align 4
@fdtv_model_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.firedtv* @fdtv_alloc(%struct.device* %0, %struct.firedtv_backend* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.firedtv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.firedtv_backend*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.firedtv*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.firedtv_backend* %1, %struct.firedtv_backend** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.firedtv* @kzalloc(i32 48, i32 %12)
  store %struct.firedtv* %13, %struct.firedtv** %10, align 8
  %14 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %15 = icmp ne %struct.firedtv* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.firedtv* null, %struct.firedtv** %5, align 8
  br label %78

17:                                               ; preds = %4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %20 = call i32 @dev_set_drvdata(%struct.device* %18, %struct.firedtv* %19)
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %23 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %22, i32 0, i32 9
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %25 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %27 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %26, i32 0, i32 1
  store i32 255, i32* %27, align 4
  %28 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %29 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %28, i32 0, i32 2
  store i32 255, i32* %29, align 8
  %30 = load %struct.firedtv_backend*, %struct.firedtv_backend** %7, align 8
  %31 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %32 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %31, i32 0, i32 8
  store %struct.firedtv_backend* %30, %struct.firedtv_backend** %32, align 8
  %33 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %34 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %33, i32 0, i32 7
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %37 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %36, i32 0, i32 6
  %38 = call i32 @init_waitqueue_head(i32* %37)
  %39 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %40 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %39, i32 0, i32 5
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %43 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %42, i32 0, i32 4
  %44 = load i32, i32* @avc_remote_ctrl_work, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load i32*, i32** @fdtv_model_names, align 8
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %72, %17
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32*, i32** @fdtv_model_names, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @strlen(i32 %57)
  %59 = load i64, i64* %9, align 8
  %60 = icmp ule i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %52
  %62 = load i8*, i8** %8, align 8
  %63 = load i32*, i32** @fdtv_model_names, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @strncmp(i8* %62, i32 %67, i64 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %73

72:                                               ; preds = %61, %52
  br label %48

73:                                               ; preds = %71, %48
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %76 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  store %struct.firedtv* %77, %struct.firedtv** %5, align 8
  br label %78

78:                                               ; preds = %73, %16
  %79 = load %struct.firedtv*, %struct.firedtv** %5, align 8
  ret %struct.firedtv* %79
}

declare dso_local %struct.firedtv* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.firedtv*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
