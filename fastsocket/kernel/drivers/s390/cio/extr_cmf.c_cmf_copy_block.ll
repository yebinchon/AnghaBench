; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_cmf_copy_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_cmf_copy_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* (i32)* }
%struct.ccw_device = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.cmb_data* }
%struct.cmb_data = type { i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SCSW_FCTL_START_FUNC = common dso_local global i32 0, align 4
@SCSW_ACTL_SUSPENDED = common dso_local global i32 0, align 4
@SCSW_ACTL_DEVACT = common dso_local global i32 0, align 4
@SCSW_ACTL_SCHACT = common dso_local global i32 0, align 4
@SCSW_STCTL_SEC_STATUS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@cmbops = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @cmf_copy_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmf_copy_block(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cmb_data*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %8 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.subchannel* @to_subchannel(i32 %11)
  store %struct.subchannel* %12, %struct.subchannel** %4, align 8
  %13 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %14 = call i64 @cio_update_schib(%struct.subchannel* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %123

19:                                               ; preds = %1
  %20 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %21 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @scsw_fctl(i32* %22)
  %24 = load i32, i32* @SCSW_FCTL_START_FUNC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %19
  %28 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %29 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @scsw_actl(i32* %30)
  %32 = load i32, i32* @SCSW_ACTL_SUSPENDED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %27
  %36 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %37 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @scsw_actl(i32* %38)
  %40 = load i32, i32* @SCSW_ACTL_DEVACT, align 4
  %41 = load i32, i32* @SCSW_ACTL_SCHACT, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %47 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @scsw_stctl(i32* %48)
  %50 = load i32, i32* @SCSW_STCTL_SEC_STATUS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %123

56:                                               ; preds = %45, %35, %27
  br label %57

57:                                               ; preds = %56, %19
  %58 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %59 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.cmb_data*, %struct.cmb_data** %61, align 8
  store %struct.cmb_data* %62, %struct.cmb_data** %7, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cmbops, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i8* (i32)*, i8* (i32)** %64, align 8
  %66 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %67 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i8* %65(i32 %68)
  store i8* %69, i8** %6, align 8
  %70 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %71 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %75 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @memcmp(i8* %72, i8* %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %123

80:                                               ; preds = %57
  %81 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %82 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GFP_ATOMIC, align 4
  %85 = call i8* @kzalloc(i32 %83, i32 %84)
  store i8* %85, i8** %5, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %123

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %107, %91
  %93 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %94 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %98 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(i8* %95, i8* %96, i32 %99)
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %104 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @memcpy(i8* %101, i8* %102, i32 %105)
  br label %107

107:                                              ; preds = %92
  %108 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %109 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %113 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @memcmp(i8* %110, i8* %111, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %92, label %117

117:                                              ; preds = %107
  %118 = call i32 (...) @get_clock()
  %119 = load %struct.cmb_data*, %struct.cmb_data** %7, align 8
  %120 = getelementptr inbounds %struct.cmb_data, %struct.cmb_data* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @kfree(i8* %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %117, %88, %79, %53, %16
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i64 @cio_update_schib(%struct.subchannel*) #1

declare dso_local i32 @scsw_fctl(i32*) #1

declare dso_local i32 @scsw_actl(i32*) #1

declare dso_local i32 @scsw_stctl(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @get_clock(...) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
