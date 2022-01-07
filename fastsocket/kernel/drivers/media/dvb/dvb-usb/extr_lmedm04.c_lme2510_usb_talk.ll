; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_usb_talk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_usb_talk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, %struct.lme2510_state* }
%struct.lme2510_state = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"MEM Error no memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32, i32*, i32)* @lme2510_usb_talk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_usb_talk(%struct.dvb_usb_device* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lme2510_state*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 2
  %17 = load %struct.lme2510_state*, %struct.lme2510_state** %16, align 8
  store %struct.lme2510_state* %17, %struct.lme2510_state** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.lme2510_state*, %struct.lme2510_state** %12, align 8
  %19 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %5
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kmalloc(i32 512, i32 %23)
  %25 = load %struct.lme2510_state*, %struct.lme2510_state** %12, align 8
  %26 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.lme2510_state*, %struct.lme2510_state** %12, align 8
  %28 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = call i32 @info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %121

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %5
  %37 = load %struct.lme2510_state*, %struct.lme2510_state** %12, align 8
  %38 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %13, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 512
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ 512, %44 ], [ %46, %45 ]
  %49 = call i32 @memcpy(i32* %40, i32* %41, i32 %48)
  %50 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock_interruptible(i32* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %121

58:                                               ; preds = %47
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usb_sndbulkpipe(i32 %64, i32 1)
  %66 = call i32 @usb_clear_halt(i32 %61, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %70 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @lme2510_bulk_write(i32 %71, i32* %72, i32 %73, i32 1)
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  %77 = call i32 @msleep(i32 10)
  %78 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @usb_rcvbulkpipe(i32 %83, i32 1)
  %85 = call i32 @usb_clear_halt(i32 %80, i32 %84)
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %89 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %11, align 4
  %93 = icmp sgt i32 %92, 512
  br i1 %93, label %94, label %95

94:                                               ; preds = %58
  br label %97

95:                                               ; preds = %58
  %96 = load i32, i32* %11, align 4
  br label %97

97:                                               ; preds = %95, %94
  %98 = phi i32 [ 512, %94 ], [ %96, %95 ]
  %99 = call i32 @lme2510_bulk_read(i32 %90, i32* %91, i32 %98, i32 1)
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load i32*, i32** %10, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @memcpy(i32* %105, i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %97
  %110 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %111 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %14, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  br label %119

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %115
  %120 = phi i32 [ %117, %115 ], [ 0, %118 ]
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %119, %55, %31
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @lme2510_bulk_write(i32, i32*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @lme2510_bulk_read(i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
