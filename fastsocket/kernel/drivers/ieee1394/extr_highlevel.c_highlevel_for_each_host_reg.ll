; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_highlevel.c_highlevel_for_each_host_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_highlevel.c_highlevel_for_each_host_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, i64 }
%struct.hpsb_highlevel = type { i32, i32 (%struct.hpsb_host*)* }

@.str = private unnamed_addr constant [58 x i8] c"Failed to generate Configuration ROM image for host %s-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, i8*)* @highlevel_for_each_host_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highlevel_for_each_host_reg(%struct.hpsb_host* %0, i8* %1) #0 {
  %3 = alloca %struct.hpsb_host*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hpsb_highlevel*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.hpsb_highlevel*
  store %struct.hpsb_highlevel* %7, %struct.hpsb_highlevel** %5, align 8
  %8 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %5, align 8
  %9 = getelementptr inbounds %struct.hpsb_highlevel, %struct.hpsb_highlevel* %8, i32 0, i32 1
  %10 = load i32 (%struct.hpsb_host*)*, i32 (%struct.hpsb_host*)** %9, align 8
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %12 = call i32 %10(%struct.hpsb_host* %11)
  %13 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %14 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %19 = call i64 @hpsb_update_config_rom_image(%struct.hpsb_host* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %5, align 8
  %23 = getelementptr inbounds %struct.hpsb_highlevel, %struct.hpsb_highlevel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %26 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @HPSB_ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %17, %2
  ret i32 0
}

declare dso_local i64 @hpsb_update_config_rom_image(%struct.hpsb_host*) #1

declare dso_local i32 @HPSB_ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
