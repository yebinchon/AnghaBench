; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_start_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_start_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_lu = type { i32, %struct.TYPE_6__*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, %struct.sbp2_fwhost_info* }
%struct.TYPE_6__ = type { i32 }
%struct.sbp2_fwhost_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SBP2_WORKAROUND_DELAY_INQUIRY = common dso_local global i32 0, align 4
@SBP2_INQUIRY_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"scsi_add_device failed\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate memory for lu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp2_lu*)* @sbp2_start_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2_start_device(%struct.sbp2_lu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbp2_lu*, align 8
  %4 = alloca %struct.sbp2_fwhost_info*, align 8
  %5 = alloca i32, align 4
  store %struct.sbp2_lu* %0, %struct.sbp2_lu** %3, align 8
  %6 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %7 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %6, i32 0, i32 15
  %8 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %7, align 8
  store %struct.sbp2_fwhost_info* %8, %struct.sbp2_fwhost_info** %4, align 8
  %9 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %10 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %16 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %15, i32 0, i32 14
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @dma_alloc_coherent(i32 %14, i32 4, i32* %16, i32 %17)
  %19 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %20 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %19, i32 0, i32 13
  store i8* %18, i8** %20, align 8
  %21 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %22 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %21, i32 0, i32 13
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %174

26:                                               ; preds = %1
  %27 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %28 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %34 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %33, i32 0, i32 12
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @dma_alloc_coherent(i32 %32, i32 4, i32* %34, i32 %35)
  %37 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %38 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %37, i32 0, i32 11
  store i8* %36, i8** %38, align 8
  %39 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %40 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %39, i32 0, i32 11
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %26
  br label %174

44:                                               ; preds = %26
  %45 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %46 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %52 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %51, i32 0, i32 10
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @dma_alloc_coherent(i32 %50, i32 4, i32* %52, i32 %53)
  %55 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %56 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %55, i32 0, i32 9
  store i8* %54, i8** %56, align 8
  %57 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %58 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %57, i32 0, i32 9
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %44
  br label %174

62:                                               ; preds = %44
  %63 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %64 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %70 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %69, i32 0, i32 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @dma_alloc_coherent(i32 %68, i32 4, i32* %70, i32 %71)
  %73 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %74 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %73, i32 0, i32 7
  store i8* %72, i8** %74, align 8
  %75 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %76 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %75, i32 0, i32 7
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %62
  br label %174

80:                                               ; preds = %62
  %81 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %82 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %88 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %87, i32 0, i32 6
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i8* @dma_alloc_coherent(i32 %86, i32 4, i32* %88, i32 %89)
  %91 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %92 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %94 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %80
  br label %174

98:                                               ; preds = %80
  %99 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %100 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %106 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %105, i32 0, i32 4
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i8* @dma_alloc_coherent(i32 %104, i32 4, i32* %106, i32 %107)
  %109 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %110 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %112 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %98
  br label %174

116:                                              ; preds = %98
  %117 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %118 = call i64 @sbp2util_create_command_orb_pool(%struct.sbp2_lu* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %174

121:                                              ; preds = %116
  %122 = call i64 @msleep_interruptible(i32 1000)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %126 = call i32 @sbp2_remove_device(%struct.sbp2_lu* %125)
  %127 = load i32, i32* @EINTR, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %180

129:                                              ; preds = %121
  %130 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %131 = call i64 @sbp2_login_device(%struct.sbp2_lu* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %135 = call i32 @sbp2_remove_device(%struct.sbp2_lu* %134)
  %136 = load i32, i32* @EBUSY, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %180

138:                                              ; preds = %129
  %139 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %140 = call i32 @sbp2_set_busy_timeout(%struct.sbp2_lu* %139)
  %141 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %142 = call i32 @sbp2_agent_reset(%struct.sbp2_lu* %141, i32 1)
  %143 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %144 = call i32 @sbp2_max_speed_and_size(%struct.sbp2_lu* %143)
  %145 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %146 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SBP2_WORKAROUND_DELAY_INQUIRY, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %138
  %152 = load i32, i32* @SBP2_INQUIRY_DELAY, align 4
  %153 = call i32 @ssleep(i32 %152)
  br label %154

154:                                              ; preds = %151, %138
  %155 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %156 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %159 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %158, i32 0, i32 1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @scsi_add_device(i32 %157, i32 0, i32 %162, i32 0)
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %154
  %167 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %168 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %169 = call i32 @sbp2_logout_device(%struct.sbp2_lu* %168)
  %170 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %171 = call i32 @sbp2_remove_device(%struct.sbp2_lu* %170)
  %172 = load i32, i32* %5, align 4
  store i32 %172, i32* %2, align 4
  br label %180

173:                                              ; preds = %154
  store i32 0, i32* %2, align 4
  br label %180

174:                                              ; preds = %120, %115, %97, %79, %61, %43, %25
  %175 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %176 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %177 = call i32 @sbp2_remove_device(%struct.sbp2_lu* %176)
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %174, %173, %166, %133, %124
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i64 @sbp2util_create_command_orb_pool(%struct.sbp2_lu*) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i32 @sbp2_remove_device(%struct.sbp2_lu*) #1

declare dso_local i64 @sbp2_login_device(%struct.sbp2_lu*) #1

declare dso_local i32 @sbp2_set_busy_timeout(%struct.sbp2_lu*) #1

declare dso_local i32 @sbp2_agent_reset(%struct.sbp2_lu*, i32) #1

declare dso_local i32 @sbp2_max_speed_and_size(%struct.sbp2_lu*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @scsi_add_device(i32, i32, i32, i32) #1

declare dso_local i32 @SBP2_ERR(i8*) #1

declare dso_local i32 @sbp2_logout_device(%struct.sbp2_lu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
