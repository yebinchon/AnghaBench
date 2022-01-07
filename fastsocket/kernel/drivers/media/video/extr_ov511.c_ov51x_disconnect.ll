; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_ov511 = type { i32, i32, i32, %struct.usb_ov511*, i32, i32*, i32, i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ov511_devused = common dso_local global i32 0, align 4
@OV511_NUMFRAMES = common dso_local global i32 0, align 4
@FRAME_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Disconnect complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ov51x_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.usb_ov511* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.usb_ov511* %6, %struct.usb_ov511** %3, align 8
  %7 = call i32 @PDEBUG(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %9 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %8, i32 0, i32 6
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %12 = call i32 @usb_set_intfdata(%struct.usb_interface* %11, i32* null)
  %13 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %14 = icmp ne %struct.usb_ov511* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %17 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %16, i32 0, i32 6
  %18 = call i32 @mutex_unlock(i32* %17)
  br label %111

19:                                               ; preds = %1
  %20 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %21 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @ov511_devused, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* @ov511_devused, align 4
  %27 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %28 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %27, i32 0, i32 10
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %33 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %32, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @video_unregister_device(i64 %34)
  br label %36

36:                                               ; preds = %31, %19
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @OV511_NUMFRAMES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i32, i32* @FRAME_ERROR, align 4
  %43 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %44 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %43, i32 0, i32 9
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %42, i32* %49, align 4
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %55 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %69, %53
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @OV511_NUMFRAMES, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %62 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %61, i32 0, i32 9
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @wake_up_interruptible(i32* %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %56

72:                                               ; preds = %56
  %73 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %74 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %73, i32 0, i32 8
  %75 = call i32 @wake_up_interruptible(i32* %74)
  %76 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %77 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %76, i32 0, i32 7
  store i64 0, i64* %77, align 8
  %78 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %79 = call i32 @ov51x_unlink_isoc(%struct.usb_ov511* %78)
  %80 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %81 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %80, i32 0, i32 6
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %84 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %83, i32 0, i32 5
  store i32* null, i32** %84, align 8
  %85 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %86 = icmp ne %struct.usb_ov511* %85, null
  br i1 %86, label %87, label %109

87:                                               ; preds = %72
  %88 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %89 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %87
  %93 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %94 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %93, i32 0, i32 2
  %95 = call i32 @mutex_lock(i32* %94)
  %96 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %97 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %96, i32 0, i32 3
  %98 = load %struct.usb_ov511*, %struct.usb_ov511** %97, align 8
  %99 = call i32 @kfree(%struct.usb_ov511* %98)
  %100 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %101 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %100, i32 0, i32 3
  store %struct.usb_ov511* null, %struct.usb_ov511** %101, align 8
  %102 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %103 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %102, i32 0, i32 2
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %106 = call i32 @ov51x_dealloc(%struct.usb_ov511* %105)
  %107 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %108 = call i32 @kfree(%struct.usb_ov511* %107)
  store %struct.usb_ov511* null, %struct.usb_ov511** %3, align 8
  br label %109

109:                                              ; preds = %92, %87, %72
  %110 = call i32 @PDEBUG(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %15
  ret void
}

declare dso_local %struct.usb_ov511* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @video_unregister_device(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @ov51x_unlink_isoc(%struct.usb_ov511*) #1

declare dso_local i32 @kfree(%struct.usb_ov511*) #1

declare dso_local i32 @ov51x_dealloc(%struct.usb_ov511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
