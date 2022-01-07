; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c___ap_queue_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c___ap_queue_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ap_message = type { i32, i32 (%struct.ap_device.0*, %struct.ap_message*, i32)*, i32, i32, i32, i32 }
%struct.ap_device.0 = type opaque
%struct.ap_queue_status = type { i32 }

@ap_poll_requests = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*, %struct.ap_message*)* @__ap_queue_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ap_queue_message(%struct.ap_device* %0, %struct.ap_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ap_device*, align 8
  %5 = alloca %struct.ap_message*, align 8
  %6 = alloca %struct.ap_queue_status, align 4
  %7 = alloca %struct.ap_queue_status, align 4
  store %struct.ap_device* %0, %struct.ap_device** %4, align 8
  store %struct.ap_message* %1, %struct.ap_message** %5, align 8
  %8 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %9 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %8, i32 0, i32 4
  %10 = call i64 @list_empty(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %102

12:                                               ; preds = %2
  %13 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %14 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %17 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %102

20:                                               ; preds = %12
  %21 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %22 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %25 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %28 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %31 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %34 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @__ap_send(i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.ap_queue_status* %6 to i8*
  %39 = bitcast %struct.ap_queue_status* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %88 [
    i32 131, label %42
    i32 130, label %59
    i32 128, label %59
    i32 129, label %75
    i32 132, label %75
  ]

42:                                               ; preds = %20
  %43 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %44 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %43, i32 0, i32 0
  %45 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %46 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %45, i32 0, i32 6
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  %48 = call i32 @atomic_inc(i32* @ap_poll_requests)
  %49 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %50 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %54 = call i32 @ap_increase_queue_count(%struct.ap_device* %53)
  %55 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %56 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %101

59:                                               ; preds = %20, %20
  %60 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %61 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %60, i32 0, i32 0
  %62 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %63 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %62, i32 0, i32 4
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  %65 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %66 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %70 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %120

75:                                               ; preds = %20, %20
  %76 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %77 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %76, i32 0, i32 1
  %78 = load i32 (%struct.ap_device.0*, %struct.ap_message*, i32)*, i32 (%struct.ap_device.0*, %struct.ap_message*, i32)** %77, align 8
  %79 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %80 = bitcast %struct.ap_device* %79 to %struct.ap_device.0*
  %81 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @ERR_PTR(i32 %83)
  %85 = call i32 %78(%struct.ap_device.0* %80, %struct.ap_message* %81, i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %120

88:                                               ; preds = %20
  %89 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %90 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %89, i32 0, i32 1
  %91 = load i32 (%struct.ap_device.0*, %struct.ap_message*, i32)*, i32 (%struct.ap_device.0*, %struct.ap_message*, i32)** %90, align 8
  %92 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %93 = bitcast %struct.ap_device* %92 to %struct.ap_device.0*
  %94 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  %97 = call i32 @ERR_PTR(i32 %96)
  %98 = call i32 %91(%struct.ap_device.0* %93, %struct.ap_message* %94, i32 %97)
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %120

101:                                              ; preds = %42
  br label %118

102:                                              ; preds = %12, %2
  %103 = load %struct.ap_message*, %struct.ap_message** %5, align 8
  %104 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %103, i32 0, i32 0
  %105 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %106 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %105, i32 0, i32 4
  %107 = call i32 @list_add_tail(i32* %104, i32* %106)
  %108 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %109 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.ap_device*, %struct.ap_device** %4, align 8
  %113 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* @EBUSY, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %120

118:                                              ; preds = %101
  %119 = call i32 (...) @ap_schedule_poll_timer()
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %102, %88, %75, %59
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @__ap_send(i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ap_increase_queue_count(%struct.ap_device*) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @ap_schedule_poll_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
