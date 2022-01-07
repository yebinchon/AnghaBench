; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_dell_rbu.c_callbackfn_rbu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firmware/extr_dell_rbu.c_callbackfn_rbu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.firmware = type { i32, i32 }

@rbu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@image_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid image type specified.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @callbackfn_rbu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callbackfn_rbu(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rbu_data, i32 0, i32 2), align 8
  %5 = load %struct.firmware*, %struct.firmware** %3, align 8
  %6 = icmp ne %struct.firmware* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %60

8:                                                ; preds = %2
  %9 = load %struct.firmware*, %struct.firmware** %3, align 8
  %10 = getelementptr inbounds %struct.firmware, %struct.firmware* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %57

14:                                               ; preds = %8
  %15 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rbu_data, i32 0, i32 0))
  %16 = load i32, i32* @image_type, align 4
  %17 = call i32 @strcmp(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = load %struct.firmware*, %struct.firmware** %3, align 8
  %21 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @img_update_realloc(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rbu_data, i32 0, i32 1), align 4
  %27 = load %struct.firmware*, %struct.firmware** %3, align 8
  %28 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.firmware*, %struct.firmware** %3, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32 %26, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %25, %19
  br label %55

35:                                               ; preds = %14
  %36 = load i32, i32* @image_type, align 4
  %37 = call i32 @strcmp(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = call i32 (...) @packet_empty_list()
  %41 = load %struct.firmware*, %struct.firmware** %3, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.firmware*, %struct.firmware** %3, align 8
  %45 = getelementptr inbounds %struct.firmware, %struct.firmware* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @packetize_data(i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = call i32 (...) @packet_empty_list()
  br label %51

51:                                               ; preds = %49, %39
  br label %54

52:                                               ; preds = %35
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %51
  br label %55

55:                                               ; preds = %54, %34
  %56 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rbu_data, i32 0, i32 0))
  br label %57

57:                                               ; preds = %55, %13
  %58 = load %struct.firmware*, %struct.firmware** %3, align 8
  %59 = call i32 @release_firmware(%struct.firmware* %58)
  br label %60

60:                                               ; preds = %57, %7
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @img_update_realloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @packet_empty_list(...) #1

declare dso_local i64 @packetize_data(i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
