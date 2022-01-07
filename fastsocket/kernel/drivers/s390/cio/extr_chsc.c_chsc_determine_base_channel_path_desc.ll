; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_determine_base_channel_path_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_determine_base_channel_path_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_path_desc = type { i32 }
%struct.chp_id = type { i32 }
%struct.chsc_response_struct = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chsc_determine_base_channel_path_desc(i32 %0, %struct.channel_path_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chp_id, align 4
  %5 = alloca %struct.channel_path_desc*, align 8
  %6 = alloca %struct.chsc_response_struct*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  store i32 %0, i32* %8, align 4
  store %struct.channel_path_desc* %1, %struct.channel_path_desc** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.chsc_response_struct* @kzalloc(i32 4, i32 %9)
  store %struct.chsc_response_struct* %10, %struct.chsc_response_struct** %6, align 8
  %11 = load %struct.chsc_response_struct*, %struct.chsc_response_struct** %6, align 8
  %12 = icmp ne %struct.chsc_response_struct* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.chsc_response_struct*, %struct.chsc_response_struct** %6, align 8
  %18 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @chsc_determine_channel_path_desc(i32 %19, i32 0, i32 0, i32 0, i32 0, %struct.chsc_response_struct* %17)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %29

24:                                               ; preds = %16
  %25 = load %struct.channel_path_desc*, %struct.channel_path_desc** %5, align 8
  %26 = load %struct.chsc_response_struct*, %struct.chsc_response_struct** %6, align 8
  %27 = getelementptr inbounds %struct.chsc_response_struct, %struct.chsc_response_struct* %26, i32 0, i32 0
  %28 = call i32 @memcpy(%struct.channel_path_desc* %25, i32* %27, i32 4)
  br label %29

29:                                               ; preds = %24, %23
  %30 = load %struct.chsc_response_struct*, %struct.chsc_response_struct** %6, align 8
  %31 = call i32 @kfree(%struct.chsc_response_struct* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.chsc_response_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @chsc_determine_channel_path_desc(i32, i32, i32, i32, i32, %struct.chsc_response_struct*) #1

declare dso_local i32 @memcpy(%struct.channel_path_desc*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.chsc_response_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
