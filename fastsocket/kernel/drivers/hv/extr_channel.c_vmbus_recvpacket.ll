; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel.c_vmbus_recvpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel.c_vmbus_recvpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }
%struct.vmpacket_descriptor = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Buffer too small - got %d needs %d\0A\00", align 1
@ETOOSMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_recvpacket(%struct.vmbus_channel* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmbus_channel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vmpacket_descriptor, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %10, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %11, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %20 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %19, i32 0, i32 0
  %21 = call i32 @hv_ringbuffer_peek(i32* %20, %struct.vmpacket_descriptor* %12, i32 12)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %63

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %12, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 3
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %12, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 3
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @ETOOSMALL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %63

45:                                               ; preds = %25
  %46 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %12, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %50 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %49, i32 0, i32 0
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %14, align 4
  %53 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %12, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 3
  %56 = call i32 @hv_ringbuffer_read(i32* %50, i8* %51, i32 %52, i32 %55, i32* %16)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %61 = call i32 @vmbus_setevent(%struct.vmbus_channel* %60)
  br label %62

62:                                               ; preds = %59, %45
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %39, %24
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @hv_ringbuffer_peek(i32*, %struct.vmpacket_descriptor*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @hv_ringbuffer_read(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @vmbus_setevent(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
