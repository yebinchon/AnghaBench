; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_reset_all_vpaths.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_reset_all_vpaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@VXGE_HW_OK = common dso_local global i64 0, align 8
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"vxge_hw_vpath_recover_from_reset failed for vpath: %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"vxge_hw_vpath_reset failed for vpath:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_reset_all_vpaths(%struct.vxgedev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  %6 = load i64, i64* @VXGE_HW_OK, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %65, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %11 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %8
  %15 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %16 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %14
  %25 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %26 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @vxge_hw_vpath_reset(i64 %32)
  %34 = load i64, i64* @VXGE_HW_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %24
  %37 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %38 = call i64 @is_vxge_card_up(%struct.vxgedev* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %42 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @vxge_hw_vpath_recover_from_reset(i64 %48)
  %50 = load i64, i64* @VXGE_HW_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load i32, i32* @VXGE_ERR, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @vxge_debug_init(i32 %53, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %70

57:                                               ; preds = %40, %36
  br label %63

58:                                               ; preds = %24
  %59 = load i32, i32* @VXGE_ERR, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @vxge_debug_init(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %70

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %14
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %8

68:                                               ; preds = %8
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %58, %52
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @vxge_hw_vpath_reset(i64) #1

declare dso_local i64 @is_vxge_card_up(%struct.vxgedev*) #1

declare dso_local i64 @vxge_hw_vpath_recover_from_reset(i64) #1

declare dso_local i32 @vxge_debug_init(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
