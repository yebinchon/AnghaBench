; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_info.c_hostap_info_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_info.c_hostap_info_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.hfa384x_info_frame = type { i32, i32 }

@DEBUG_EXTRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: INFO - len=%d type=0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown info frame:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostap_info_process(%struct.TYPE_9__* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hfa384x_info_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.hfa384x_info_frame*
  store %struct.hfa384x_info_frame* %12, %struct.hfa384x_info_frame** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.hfa384x_info_frame*, %struct.hfa384x_info_frame** %5, align 8
  %24 = getelementptr inbounds %struct.hfa384x_info_frame, %struct.hfa384x_info_frame* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  switch i32 %26, label %47 [
    i32 131, label %27
    i32 129, label %32
    i32 128, label %37
    i32 130, label %42
  ]

27:                                               ; preds = %2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @prism2_info_commtallies(%struct.TYPE_9__* %28, i8* %29, i32 %30)
  br label %90

32:                                               ; preds = %2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @prism2_info_linkstatus(%struct.TYPE_9__* %33, i8* %34, i32 %35)
  br label %90

37:                                               ; preds = %2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @prism2_info_scanresults(%struct.TYPE_9__* %38, i8* %39, i32 %40)
  br label %90

42:                                               ; preds = %2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @prism2_info_hostscanresults(%struct.TYPE_9__* %43, i8* %44, i32 %45)
  br label %90

47:                                               ; preds = %2
  %48 = load i32, i32* @DEBUG_EXTRA, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hfa384x_info_frame*, %struct.hfa384x_info_frame** %5, align 8
  %55 = getelementptr inbounds %struct.hfa384x_info_frame, %struct.hfa384x_info_frame* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = load %struct.hfa384x_info_frame*, %struct.hfa384x_info_frame** %5, align 8
  %59 = getelementptr inbounds %struct.hfa384x_info_frame, %struct.hfa384x_info_frame* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = call i32 (i32, i8*, ...) @PDEBUG(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %57, i32 %61)
  %63 = load i32, i32* @DEBUG_EXTRA, align 4
  %64 = call i32 (i32, i8*, ...) @PDEBUG(i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %84, %47
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 100
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  br label %72

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 100, %71 ]
  %74 = icmp slt i32 %66, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = load i32, i32* @DEBUG_EXTRA, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 (i32, i8*, ...) @PDEBUG2(i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %65

87:                                               ; preds = %72
  %88 = load i32, i32* @DEBUG_EXTRA, align 4
  %89 = call i32 (i32, i8*, ...) @PDEBUG2(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %42, %37, %32, %27
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @prism2_info_commtallies(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @prism2_info_linkstatus(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @prism2_info_scanresults(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @prism2_info_hostscanresults(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @PDEBUG2(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
