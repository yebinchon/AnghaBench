; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_scan_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.ap_device = type { i32, i32, i32, i32, %struct.device, i32, i64, i32, i32, i32, i32 }
%struct.device = type { i32, i32, i32, i32* }

@AP_DEVICES = common dso_local global i32 0, align 4
@ap_domain_index = common dso_local global i32 0, align 4
@ap_bus_type = common dso_local global i32 0, align 4
@__ap_scan_bus = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@AP_RESET_TIMEOUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ap_request_timeout = common dso_local global i32 0, align 4
@ap_root_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"card%02x\00", align 1
@ap_device_release = common dso_local global i32 0, align 4
@ap_dev_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @ap_scan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_scan_bus(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %11 = call i32 (...) @ap_query_configuration()
  %12 = call i64 (...) @ap_select_domain()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %212

15:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %209, %15
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @AP_DEVICES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %212

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @ap_domain_index, align 4
  %23 = call i64 @AP_MKQID(i32 %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32, i32* @__ap_scan_bus, align 4
  %27 = call %struct.device* @bus_find_device(i32* @ap_bus_type, i32* null, i8* %25, i32 %26)
  store %struct.device* %27, %struct.device** %4, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @ap_test_config_card_id(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ap_query_queue(i64 %32, i32* %6, i32* %7)
  store i32 %33, i32* %9, align 4
  br label %37

34:                                               ; preds = %20
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = icmp ne %struct.device* %38, null
  br i1 %39, label %40, label %87

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %47 = call i32 @set_current_state(i32 %46)
  %48 = load i32, i32* @AP_RESET_TIMEOUT, align 4
  %49 = call i32 @schedule_timeout(i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @ap_query_queue(i64 %50, i32* %6, i32* %7)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call %struct.ap_device* @to_ap_dev(%struct.device* %53)
  store %struct.ap_device* %54, %struct.ap_device** %3, align 8
  %55 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %56 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %55, i32 0, i32 5
  %57 = call i32 @spin_lock_bh(i32* %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %52
  %61 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %62 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %60, %52
  %66 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %67 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %66, i32 0, i32 5
  %68 = call i32 @spin_unlock_bh(i32* %67)
  %69 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %70 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @device_unregister(%struct.device* %77)
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call i32 @put_device(%struct.device* %79)
  br label %209

81:                                               ; preds = %60
  %82 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %83 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %82, i32 0, i32 5
  %84 = call i32 @spin_unlock_bh(i32* %83)
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 @put_device(%struct.device* %85)
  br label %209

87:                                               ; preds = %37
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %209

91:                                               ; preds = %87
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @ap_init_queue(i64 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %209

97:                                               ; preds = %91
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call %struct.ap_device* @kzalloc(i32 72, i32 %98)
  store %struct.ap_device* %99, %struct.ap_device** %3, align 8
  %100 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %101 = icmp ne %struct.ap_device* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %212

103:                                              ; preds = %97
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %106 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %105, i32 0, i32 6
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %109 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %111 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %113 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %112, i32 0, i32 5
  %114 = call i32 @spin_lock_init(i32* %113)
  %115 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %116 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %115, i32 0, i32 10
  %117 = call i32 @INIT_LIST_HEAD(i32* %116)
  %118 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %119 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %118, i32 0, i32 9
  %120 = call i32 @INIT_LIST_HEAD(i32* %119)
  %121 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %122 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %121, i32 0, i32 8
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  %124 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %125 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %124, i32 0, i32 7
  %126 = load i32, i32* @ap_request_timeout, align 4
  %127 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %128 = ptrtoint %struct.ap_device* %127 to i64
  %129 = call i32 @setup_timer(i32* %125, i32 %126, i64 %128)
  %130 = load i32, i32* %7, align 4
  switch i32 %130, label %139 [
    i32 0, label %131
  ]

131:                                              ; preds = %103
  %132 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %133 = call i32 @ap_probe_device_type(%struct.ap_device* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %137 = call i32 @kfree(%struct.ap_device* %136)
  br label %209

138:                                              ; preds = %131
  br label %143

139:                                              ; preds = %103
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %142 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %139, %138
  %144 = load i64, i64* %5, align 8
  %145 = call i32 @ap_query_functions(i64 %144, i32* %8)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %151 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  br label %155

152:                                              ; preds = %143
  %153 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %154 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %153, i32 0, i32 3
  store i32 0, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %148
  %156 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %157 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.device, %struct.device* %157, i32 0, i32 3
  store i32* @ap_bus_type, i32** %158, align 8
  %159 = load i32, i32* @ap_root_device, align 4
  %160 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %161 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.device, %struct.device* %161, i32 0, i32 2
  store i32 %159, i32* %162, align 8
  %163 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %164 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %163, i32 0, i32 4
  %165 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %166 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @AP_QID_DEVICE(i64 %167)
  %169 = call i64 @dev_set_name(%struct.device* %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %155
  %172 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %173 = call i32 @kfree(%struct.ap_device* %172)
  br label %209

174:                                              ; preds = %155
  %175 = load i32, i32* @ap_device_release, align 4
  %176 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %177 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.device, %struct.device* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 4
  %179 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %180 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %179, i32 0, i32 4
  %181 = call i32 @device_register(%struct.device* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %174
  %185 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %186 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %185, i32 0, i32 4
  %187 = call i32 @put_device(%struct.device* %186)
  br label %209

188:                                              ; preds = %174
  %189 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %190 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.device, %struct.device* %190, i32 0, i32 0
  %192 = call i32 @sysfs_create_group(i32* %191, i32* @ap_dev_attr_group)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %188
  %196 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %197 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %196, i32 0, i32 5
  %198 = call i32 @spin_lock_bh(i32* %197)
  %199 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %200 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %199, i32 0, i32 0
  store i32 0, i32* %200, align 8
  %201 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %202 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %201, i32 0, i32 5
  %203 = call i32 @spin_unlock_bh(i32* %202)
  br label %208

204:                                              ; preds = %188
  %205 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %206 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %205, i32 0, i32 4
  %207 = call i32 @device_unregister(%struct.device* %206)
  br label %208

208:                                              ; preds = %204, %195
  br label %209

209:                                              ; preds = %208, %184, %171, %135, %96, %90, %81, %76
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %16

212:                                              ; preds = %14, %102, %16
  ret void
}

declare dso_local i32 @ap_query_configuration(...) #1

declare dso_local i64 @ap_select_domain(...) #1

declare dso_local i64 @AP_MKQID(i32, i32) #1

declare dso_local %struct.device* @bus_find_device(i32*, i32*, i8*, i32) #1

declare dso_local i64 @ap_test_config_card_id(i32) #1

declare dso_local i32 @ap_query_queue(i64, i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local %struct.ap_device* @to_ap_dev(%struct.device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @ap_init_queue(i64) #1

declare dso_local %struct.ap_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @ap_probe_device_type(%struct.ap_device*) #1

declare dso_local i32 @kfree(%struct.ap_device*) #1

declare dso_local i32 @ap_query_functions(i64, i32*) #1

declare dso_local i64 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @AP_QID_DEVICE(i64) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
