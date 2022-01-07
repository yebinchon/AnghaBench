; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_eth1394.c_ether1394_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32 }
%struct.eth1394_host_info = type { i32 }

@eth1394_highlevel = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No net device at fw-host%d\0A\00", align 1
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, i32, i32, i32*, i32, i64, i32)* @ether1394_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether1394_write(%struct.hpsb_host* %0, i32 %1, i32 %2, i32* %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hpsb_host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.eth1394_host_info*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %18 = call %struct.eth1394_host_info* @hpsb_get_hostinfo(i32* @eth1394_highlevel, %struct.hpsb_host* %17)
  store %struct.eth1394_host_info* %18, %struct.eth1394_host_info** %16, align 8
  %19 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %16, align 8
  %20 = icmp ne %struct.eth1394_host_info* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %7
  %26 = load i32, i32* @KERN_ERR, align 4
  %27 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %28 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ETH1394_PRINT_G(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %31, i32* %8, align 4
  br label %47

32:                                               ; preds = %7
  %33 = load %struct.eth1394_host_info*, %struct.eth1394_host_info** %16, align 8
  %34 = getelementptr inbounds %struct.eth1394_host_info, %struct.eth1394_host_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i64, i64* %14, align 8
  %41 = call i64 @ether1394_data_handler(i32 %35, i32 %36, i32 %37, i8* %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %44, i32* %8, align 4
  br label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %45, %43, %25
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local %struct.eth1394_host_info* @hpsb_get_hostinfo(i32*, %struct.hpsb_host*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ETH1394_PRINT_G(i32, i8*, i32) #1

declare dso_local i64 @ether1394_data_handler(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
