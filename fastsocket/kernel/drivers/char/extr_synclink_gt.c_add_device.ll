; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.slgt_info* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@slgt_device_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@tty_dev_prefix = common dso_local global i8* null, align 8
@MAX_DEVICES = common dso_local global i64 0, align 8
@maxframe = common dso_local global i32* null, align 8
@slgt_device_list = common dso_local global %struct.slgt_info* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"GT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"GT2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"GT4\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@MGSL_MODE_ASYNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"(unknown model)\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"SyncLink %s %s IO=%08x IRQ=%d MaxFrameSize=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_device(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.slgt_info*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %5 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %6 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %5, i32 0, i32 7
  store %struct.slgt_info* null, %struct.slgt_info** %6, align 8
  %7 = load i64, i64* @slgt_device_count, align 8
  %8 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %9 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %11 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** @tty_dev_prefix, align 8
  %14 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %15 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @sprintf(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %13, i64 %16)
  %18 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %19 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAX_DEVICES, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load i32*, i32** @maxframe, align 8
  %25 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %26 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i32*, i32** @maxframe, align 8
  %33 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %34 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %39 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %31, %23
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i64, i64* @slgt_device_count, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* @slgt_device_count, align 8
  %44 = load %struct.slgt_info*, %struct.slgt_info** @slgt_device_list, align 8
  %45 = icmp ne %struct.slgt_info* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  store %struct.slgt_info* %47, %struct.slgt_info** @slgt_device_list, align 8
  br label %63

48:                                               ; preds = %41
  %49 = load %struct.slgt_info*, %struct.slgt_info** @slgt_device_list, align 8
  store %struct.slgt_info* %49, %struct.slgt_info** %4, align 8
  br label %50

50:                                               ; preds = %55, %48
  %51 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 7
  %53 = load %struct.slgt_info*, %struct.slgt_info** %52, align 8
  %54 = icmp ne %struct.slgt_info* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %57 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %56, i32 0, i32 7
  %58 = load %struct.slgt_info*, %struct.slgt_info** %57, align 8
  store %struct.slgt_info* %58, %struct.slgt_info** %4, align 8
  br label %50

59:                                               ; preds = %50
  %60 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %61 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %62 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %61, i32 0, i32 7
  store %struct.slgt_info* %60, %struct.slgt_info** %62, align 8
  br label %63

63:                                               ; preds = %59, %46
  %64 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %65 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 4096
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %70 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %69, i32 0, i32 1
  store i32 4096, i32* %70, align 8
  br label %80

71:                                               ; preds = %63
  %72 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %73 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 65535
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %78 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %77, i32 0, i32 1
  store i32 65535, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79, %68
  %81 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %82 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %81, i32 0, i32 6
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %94 [
    i32 128, label %86
    i32 130, label %87
    i32 129, label %88
    i32 131, label %89
  ]

86:                                               ; preds = %80
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %95

87:                                               ; preds = %80
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %95

88:                                               ; preds = %80
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %95

89:                                               ; preds = %80
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  %90 = load i32, i32* @MGSL_MODE_ASYNC, align 4
  %91 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %92 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  br label %95

94:                                               ; preds = %80
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %95

95:                                               ; preds = %94, %89, %88, %87, %86
  %96 = load i8*, i8** %3, align 8
  %97 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %98 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %101 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %104 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %107 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %96, i32 %99, i32 %102, i32 %105, i32 %108)
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i8*, i64) #1

declare dso_local i32 @printk(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
