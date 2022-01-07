; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_send_special.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_send_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { i32 }
%struct.carm_request = type { i32, i32, i64, i32, i32 }
%struct.carm_msg_ioctl = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"blk_insert_request, tag == %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carm_host*, i32 (%struct.carm_host*, i32, i8*)*)* @carm_send_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carm_send_special(%struct.carm_host* %0, i32 (%struct.carm_host*, i32, i8*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.carm_host*, align 8
  %5 = alloca i32 (%struct.carm_host*, i32, i8*)*, align 8
  %6 = alloca %struct.carm_request*, align 8
  %7 = alloca %struct.carm_msg_ioctl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.carm_host* %0, %struct.carm_host** %4, align 8
  store i32 (%struct.carm_host*, i32, i8*)* %1, i32 (%struct.carm_host*, i32, i8*)** %5, align 8
  %12 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %13 = call %struct.carm_request* @carm_get_special(%struct.carm_host* %12)
  store %struct.carm_request* %13, %struct.carm_request** %6, align 8
  %14 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %15 = icmp ne %struct.carm_request* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  %20 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %21 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i8* @carm_ref_msg(%struct.carm_host* %23, i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i32 (%struct.carm_host*, i32, i8*)*, i32 (%struct.carm_host*, i32, i8*)** %5, align 8
  %27 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 %26(%struct.carm_host* %27, i32 %28, i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to %struct.carm_msg_ioctl*
  store %struct.carm_msg_ioctl* %32, %struct.carm_msg_ioctl** %7, align 8
  %33 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %7, align 8
  %34 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %37 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %7, align 8
  %39 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %42 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @carm_lookup_bucket(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %52 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %56 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %59 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.carm_request*, %struct.carm_request** %6, align 8
  %62 = call i32 @blk_insert_request(i32 %57, i32 %60, i32 1, %struct.carm_request* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %19, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.carm_request* @carm_get_special(%struct.carm_host*) #1

declare dso_local i8* @carm_ref_msg(%struct.carm_host*, i32) #1

declare dso_local i32 @carm_lookup_bucket(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @blk_insert_request(i32, i32, i32, %struct.carm_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
