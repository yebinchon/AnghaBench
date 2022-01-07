; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_set_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_set_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_device = type { i32, %struct.dasd_block* }
%struct.dasd_block = type { i64, i32 }

@.str = private unnamed_addr constant [55 x i8] c"%s: The DASD cannot be set offline with open count %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: The DASD cannot be set offline while it is in use\0A\00", align 1
@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DASD_FLAG_SAFE_OFFLINE_RUNNING = common dso_local global i32 0, align 4
@DASD_FLAG_SAFE_OFFLINE = common dso_local global i32 0, align 4
@shutdown_waitq = common dso_local global i32 0, align 4
@DASD_STATE_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_set_offline(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %10 = call %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device* %9)
  store %struct.dasd_device* %10, %struct.dasd_device** %4, align 8
  %11 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %12 = call i64 @IS_ERR(%struct.dasd_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.dasd_device* %15)
  store i32 %16, i32* %2, align 4
  br label %166

17:                                               ; preds = %1
  %18 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 1
  %20 = load %struct.dasd_block*, %struct.dasd_block** %19, align 8
  %21 = icmp ne %struct.dasd_block* %20, null
  br i1 %21, label %22, label %63

22:                                               ; preds = %17
  %23 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %24 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %23, i32 0, i32 1
  %25 = load %struct.dasd_block*, %struct.dasd_block** %24, align 8
  %26 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 -1
  store i32 %30, i32* %6, align 4
  %31 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 1
  %33 = load %struct.dasd_block*, %struct.dasd_block** %32, align 8
  %34 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %33, i32 0, i32 1
  %35 = call i32 @atomic_read(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %44 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %43, i32 0, i32 0
  %45 = call i32 @dev_name(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  br label %53

48:                                               ; preds = %39
  %49 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %50 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %49, i32 0, i32 0
  %51 = call i32 @dev_name(i32* %50)
  %52 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %55 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %56 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %55, i32 0, i32 0
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  %58 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %59 = call i32 @dasd_put_device(%struct.dasd_device* %58)
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %166

62:                                               ; preds = %22
  br label %63

63:                                               ; preds = %62, %17
  %64 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %65 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %66 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %65, i32 0, i32 0
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %71 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %72 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %71, i32 0, i32 0
  %73 = call i64 @test_and_set_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %77 = call i32 @dasd_put_device(%struct.dasd_device* %76)
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %166

80:                                               ; preds = %69
  %81 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE, align 4
  %82 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %83 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %82, i32 0, i32 0
  %84 = call i32 @clear_bit(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %80
  br label %98

86:                                               ; preds = %63
  %87 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %88 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %89 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %88, i32 0, i32 0
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %94 = call i32 @dasd_put_device(%struct.dasd_device* %93)
  %95 = load i32, i32* @EBUSY, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %166

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %85
  %99 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE, align 4
  %100 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %101 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %100, i32 0, i32 0
  %102 = call i64 @test_and_clear_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %98
  %105 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %106 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %107 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %106, i32 0, i32 0
  %108 = call i64 @test_and_set_bit(i32 %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %131, label %110

110:                                              ; preds = %104
  %111 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %112 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %111, i32 0, i32 1
  %113 = load %struct.dasd_block*, %struct.dasd_block** %112, align 8
  %114 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @fsync_bdev(i64 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %150

120:                                              ; preds = %110
  %121 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %122 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %121)
  %123 = load i32, i32* @shutdown_waitq, align 4
  %124 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %125 = call i32 @_wait_for_empty_queues(%struct.dasd_device* %124)
  %126 = call i32 @wait_event_interruptible(i32 %123, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %150

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %104, %98
  %132 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %133 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %134 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %133, i32 0, i32 0
  %135 = call i32 @set_bit(i32 %132, i32* %134)
  %136 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %137 = load i32, i32* @DASD_STATE_NEW, align 4
  %138 = call i32 @dasd_set_target_state(%struct.dasd_device* %136, i32 %137)
  %139 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %140 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %139, i32 0, i32 1
  %141 = load %struct.dasd_block*, %struct.dasd_block** %140, align 8
  store %struct.dasd_block* %141, %struct.dasd_block** %5, align 8
  %142 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %143 = call i32 @dasd_delete_device(%struct.dasd_device* %142)
  %144 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %145 = icmp ne %struct.dasd_block* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %131
  %147 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %148 = call i32 @dasd_free_block(%struct.dasd_block* %147)
  br label %149

149:                                              ; preds = %146, %131
  store i32 0, i32* %2, align 4
  br label %166

150:                                              ; preds = %129, %119
  %151 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE, align 4
  %152 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %153 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %152, i32 0, i32 0
  %154 = call i32 @clear_bit(i32 %151, i32* %153)
  %155 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %156 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %157 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %156, i32 0, i32 0
  %158 = call i32 @clear_bit(i32 %155, i32* %157)
  %159 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %160 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %161 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %160, i32 0, i32 0
  %162 = call i32 @clear_bit(i32 %159, i32* %161)
  %163 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %164 = call i32 @dasd_put_device(%struct.dasd_device* %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %150, %149, %92, %75, %53, %14
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pr_warning(i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @fsync_bdev(i64) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @_wait_for_empty_queues(%struct.dasd_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dasd_set_target_state(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_delete_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_free_block(%struct.dasd_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
