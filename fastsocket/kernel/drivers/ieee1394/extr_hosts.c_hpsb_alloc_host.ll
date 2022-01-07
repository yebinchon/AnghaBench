; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_hosts.c_hpsb_alloc_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_hosts.c_hpsb_alloc_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, i32, %struct.device, %struct.device, %struct.TYPE_3__, i32*, i64, %struct.TYPE_4__, i32, i32, i32, i32, %struct.hpsb_host_driver*, %struct.hpsb_host* }
%struct.device = type { i32*, %struct.device* }
%struct.TYPE_3__ = type { i64, i64, i64*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.hpsb_host_driver = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@csr_bus_ops = common dso_local global i32 0, align 4
@CSR_BUS_INFO_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@delayed_reset_bus = common dso_local global i32 0, align 4
@abort_timedouts = common dso_local global i32 0, align 4
@host_num_alloc = common dso_local global i32 0, align 4
@alloc_hostnum_cb = common dso_local global i32 0, align 4
@nodemgr_dev_template_host = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fw-host%d\00", align 1
@hpsb_host_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpsb_host* @hpsb_alloc_host(%struct.hpsb_host_driver* %0, i64 %1, %struct.device* %2) #0 {
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca %struct.hpsb_host_driver*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.hpsb_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hpsb_host_driver* %0, %struct.hpsb_host_driver** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* %6, align 8
  %12 = add i64 136, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hpsb_host* @kzalloc(i32 %13, i32 %14)
  store %struct.hpsb_host* %15, %struct.hpsb_host** %8, align 8
  %16 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %17 = icmp ne %struct.hpsb_host* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.hpsb_host* null, %struct.hpsb_host** %4, align 8
  br label %171

19:                                               ; preds = %3
  %20 = load i32, i32* @CSR_BUS_INFO_SIZE, align 4
  %21 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %22 = call i32 @csr1212_create_csr(i32* @csr_bus_ops, i32 %20, %struct.hpsb_host* %21)
  %23 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %24 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 8
  %26 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %27 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %168

32:                                               ; preds = %19
  %33 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %34 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %33, i64 1
  %35 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %36 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %35, i32 0, i32 13
  store %struct.hpsb_host* %34, %struct.hpsb_host** %36, align 8
  %37 = load %struct.hpsb_host_driver*, %struct.hpsb_host_driver** %5, align 8
  %38 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %39 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %38, i32 0, i32 12
  store %struct.hpsb_host_driver* %37, %struct.hpsb_host_driver** %39, align 8
  %40 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %41 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %40, i32 0, i32 11
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %44 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %43, i32 0, i32 10
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  store i32 2, i32* %9, align 4
  br label %46

46:                                               ; preds = %62, %32
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 16
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i32, i32* @HZ, align 4
  %52 = mul nsw i32 60, %51
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %50, %53
  %55 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %56 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %54, i64* %61, align 8
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %46

65:                                               ; preds = %46
  %66 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %67 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %66, i32 0, i32 9
  %68 = call i32 @atomic_set(i32* %67, i32 0)
  %69 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %70 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %69, i32 0, i32 8
  %71 = load i32, i32* @delayed_reset_bus, align 4
  %72 = call i32 @INIT_DELAYED_WORK(i32* %70, i32 %71)
  %73 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %74 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %73, i32 0, i32 7
  %75 = call i32 @init_timer(%struct.TYPE_4__* %74)
  %76 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %77 = ptrtoint %struct.hpsb_host* %76 to i64
  %78 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %79 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load i32, i32* @abort_timedouts, align 4
  %82 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %83 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @HZ, align 4
  %86 = sdiv i32 %85, 20
  %87 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %88 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %90 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 3
  %94 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %95 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %94, i32 0, i32 6
  store i64 %93, i64* %95, align 8
  %96 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %97 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 2
  %101 = inttoptr i64 %100 to i32*
  %102 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %103 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %102, i32 0, i32 5
  store i32* %101, i32** %103, align 8
  %104 = call i32 @mutex_lock(i32* @host_num_alloc)
  br label %105

105:                                              ; preds = %109, %65
  %106 = load i32, i32* @alloc_hostnum_cb, align 4
  %107 = call i64 @nodemgr_for_each_host(i32* %10, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %105

112:                                              ; preds = %105
  %113 = call i32 @mutex_unlock(i32* @host_num_alloc)
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %116 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %118 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %117, i32 0, i32 2
  %119 = call i32 @memcpy(%struct.device* %118, i32* @nodemgr_dev_template_host, i32 16)
  %120 = load %struct.device*, %struct.device** %7, align 8
  %121 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %122 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.device, %struct.device* %122, i32 0, i32 1
  store %struct.device* %120, %struct.device** %123, align 8
  %124 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %125 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %124, i32 0, i32 2
  %126 = load %struct.device*, %struct.device** %7, align 8
  %127 = call i32 @dev_to_node(%struct.device* %126)
  %128 = call i32 @set_dev_node(%struct.device* %125, i32 %127)
  %129 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %130 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %129, i32 0, i32 2
  %131 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %132 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_set_name(%struct.device* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %133)
  %135 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %136 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %135, i32 0, i32 2
  %137 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %138 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.device, %struct.device* %138, i32 0, i32 1
  store %struct.device* %136, %struct.device** %139, align 8
  %140 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %141 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.device, %struct.device* %141, i32 0, i32 0
  store i32* @hpsb_host_class, i32** %142, align 8
  %143 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %144 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %143, i32 0, i32 3
  %145 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %146 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dev_set_name(%struct.device* %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %147)
  %149 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %150 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %149, i32 0, i32 2
  %151 = call i64 @device_register(%struct.device* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %112
  br label %168

154:                                              ; preds = %112
  %155 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %156 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %155, i32 0, i32 3
  %157 = call i64 @device_register(%struct.device* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %161 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %160, i32 0, i32 2
  %162 = call i32 @device_unregister(%struct.device* %161)
  br label %168

163:                                              ; preds = %154
  %164 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %165 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %164, i32 0, i32 2
  %166 = call i32 @get_device(%struct.device* %165)
  %167 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  store %struct.hpsb_host* %167, %struct.hpsb_host** %4, align 8
  br label %171

168:                                              ; preds = %159, %153, %31
  %169 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %170 = call i32 @kfree(%struct.hpsb_host* %169)
  store %struct.hpsb_host* null, %struct.hpsb_host** %4, align 8
  br label %171

171:                                              ; preds = %168, %163, %18
  %172 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  ret %struct.hpsb_host* %172
}

declare dso_local %struct.hpsb_host* @kzalloc(i32, i32) #1

declare dso_local i32 @csr1212_create_csr(i32*, i32, %struct.hpsb_host*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @nodemgr_for_each_host(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.device*, i32*, i32) #1

declare dso_local i32 @set_dev_node(%struct.device*, i32) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i64 @device_register(%struct.device*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @kfree(%struct.hpsb_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
