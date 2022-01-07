; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_cancel_halt_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_fsm.c_ccw_device_cancel_halt_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SCSW_ACTL_HALT_PEND = common dso_local global i32 0, align 4
@SCSW_ACTL_CLEAR_PEND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"0.%x.%04x: could not stop I/O\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccw_device_cancel_halt_clear(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.subchannel* @to_subchannel(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %4, align 8
  %11 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %12 = call i64 @cio_update_schib(%struct.subchannel* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %147

17:                                               ; preds = %1
  %18 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %147

25:                                               ; preds = %17
  %26 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %27 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @scsw_actl(i32* %28)
  %30 = load i32, i32* @SCSW_ACTL_HALT_PEND, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %25
  %34 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = call i32 @scsw_actl(i32* %36)
  %38 = load i32, i32* @SCSW_ACTL_CLEAR_PEND, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %33
  %42 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %43 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @scsw_is_tm(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %41
  %48 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %49 = call i32 @cio_cancel(%struct.subchannel* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %147

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %59 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 3, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %33, %25
  %63 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %64 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = call i32 @scsw_actl(i32* %65)
  %67 = load i32, i32* @SCSW_ACTL_CLEAR_PEND, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %106, label %70

70:                                               ; preds = %62
  %71 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %72 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %70
  %78 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %79 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %85 = call i32 @cio_halt(%struct.subchannel* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %77
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @EBUSY, align 4
  %95 = sub nsw i32 0, %94
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi i32 [ %95, %93 ], [ %97, %96 ]
  store i32 %99, i32* %2, align 4
  br label %147

100:                                              ; preds = %77
  br label %101

101:                                              ; preds = %100, %70
  %102 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %103 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 255, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %62
  %107 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %108 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %106
  %114 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %115 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %117, align 4
  %120 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %121 = call i32 @cio_clear(%struct.subchannel* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %113
  %125 = load i32, i32* @EBUSY, align 4
  %126 = sub nsw i32 0, %125
  br label %129

127:                                              ; preds = %113
  %128 = load i32, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %124
  %130 = phi i32 [ %126, %124 ], [ %128, %127 ]
  store i32 %130, i32* %2, align 4
  br label %147

131:                                              ; preds = %106
  %132 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %133 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %132, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %139 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %143)
  %145 = load i32, i32* @EIO, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %131, %129, %98, %54, %24, %14
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @scsw_actl(i32*) #1

declare dso_local i32 @scsw_is_tm(i32*) #1

declare dso_local i32 @cio_cancel(%struct.subchannel*) #1

declare dso_local i32 @cio_halt(%struct.subchannel*) #1

declare dso_local i32 @cio_clear(%struct.subchannel*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
