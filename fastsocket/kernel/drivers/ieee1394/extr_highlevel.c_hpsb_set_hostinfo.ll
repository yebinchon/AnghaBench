; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_highlevel.c_hpsb_set_hostinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_highlevel.c_hpsb_set_hostinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_highlevel = type { i32 }
%struct.hpsb_host = type { i32 }
%struct.hl_host_info = type { i8*, i32 }

@.str = private unnamed_addr constant [59 x i8] c"%s called hpsb_set_hostinfo when hostinfo already has data\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s called hpsb_set_hostinfo when no hostinfo exists\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_set_hostinfo(%struct.hpsb_highlevel* %0, %struct.hpsb_host* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hpsb_highlevel*, align 8
  %6 = alloca %struct.hpsb_host*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hl_host_info*, align 8
  store %struct.hpsb_highlevel* %0, %struct.hpsb_highlevel** %5, align 8
  store %struct.hpsb_host* %1, %struct.hpsb_host** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %5, align 8
  %10 = load %struct.hpsb_host*, %struct.hpsb_host** %6, align 8
  %11 = call %struct.hl_host_info* @hl_get_hostinfo(%struct.hpsb_highlevel* %9, %struct.hpsb_host* %10)
  store %struct.hl_host_info* %11, %struct.hl_host_info** %8, align 8
  %12 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %13 = icmp ne %struct.hl_host_info* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %16 = getelementptr inbounds %struct.hl_host_info, %struct.hl_host_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %21 = getelementptr inbounds %struct.hl_host_info, %struct.hl_host_info* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.hl_host_info*, %struct.hl_host_info** %8, align 8
  %27 = getelementptr inbounds %struct.hl_host_info, %struct.hl_host_info* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  store i32 0, i32* %4, align 4
  br label %42

28:                                               ; preds = %19, %14
  %29 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %5, align 8
  %30 = getelementptr inbounds %struct.hpsb_highlevel, %struct.hpsb_highlevel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @HPSB_ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28
  br label %39

34:                                               ; preds = %3
  %35 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %5, align 8
  %36 = getelementptr inbounds %struct.hpsb_highlevel, %struct.hpsb_highlevel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @HPSB_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %24
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.hl_host_info* @hl_get_hostinfo(%struct.hpsb_highlevel*, %struct.hpsb_host*) #1

declare dso_local i32 @HPSB_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
