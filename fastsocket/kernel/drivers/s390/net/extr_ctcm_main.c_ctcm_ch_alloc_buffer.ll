; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_ch_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_ch_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@CTC_DBF_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s(%s): %s trans_skb allocation error\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%s(%s): %s set norm_cda failed\00", align 1
@CHANNEL_FLAGS_BUFSIZE_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctcm_ch_alloc_buffer(%struct.channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.channel*, align 8
  store %struct.channel* %0, %struct.channel** %3, align 8
  %4 = load %struct.channel*, %struct.channel** %3, align 8
  %5 = getelementptr inbounds %struct.channel, %struct.channel* %4, i32 0, i32 3
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i64 1
  %8 = call i32 @clear_normalized_cda(%struct.TYPE_5__* %7)
  %9 = load %struct.channel*, %struct.channel** %3, align 8
  %10 = getelementptr inbounds %struct.channel, %struct.channel* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.TYPE_6__* @__dev_alloc_skb(i64 %11, i32 %14)
  %16 = load %struct.channel*, %struct.channel** %3, align 8
  %17 = getelementptr inbounds %struct.channel, %struct.channel* %16, i32 0, i32 1
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %17, align 8
  %18 = load %struct.channel*, %struct.channel** %3, align 8
  %19 = getelementptr inbounds %struct.channel, %struct.channel* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %1
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @CTC_DBF_ERROR, align 4
  %25 = load i32, i32* @CTCM_FUNTAIL, align 4
  %26 = load %struct.channel*, %struct.channel** %3, align 8
  %27 = getelementptr inbounds %struct.channel, %struct.channel* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.channel*, %struct.channel** %3, align 8
  %30 = getelementptr inbounds %struct.channel, %struct.channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @CHANNEL_DIRECTION(i32 %31)
  %33 = load i64, i64* @READ, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 @CTCM_DBF_TEXT_(i32 %23, i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i8* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %103

40:                                               ; preds = %1
  %41 = load %struct.channel*, %struct.channel** %3, align 8
  %42 = getelementptr inbounds %struct.channel, %struct.channel* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.channel*, %struct.channel** %3, align 8
  %45 = getelementptr inbounds %struct.channel, %struct.channel* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i64 %43, i64* %48, align 8
  %49 = load %struct.channel*, %struct.channel** %3, align 8
  %50 = getelementptr inbounds %struct.channel, %struct.channel* %49, i32 0, i32 3
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 1
  %53 = load %struct.channel*, %struct.channel** %3, align 8
  %54 = getelementptr inbounds %struct.channel, %struct.channel* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @set_normalized_cda(%struct.TYPE_5__* %52, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %40
  %61 = load %struct.channel*, %struct.channel** %3, align 8
  %62 = getelementptr inbounds %struct.channel, %struct.channel* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @dev_kfree_skb(%struct.TYPE_6__* %63)
  %65 = load %struct.channel*, %struct.channel** %3, align 8
  %66 = getelementptr inbounds %struct.channel, %struct.channel* %65, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %66, align 8
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* @CTC_DBF_ERROR, align 4
  %69 = load i32, i32* @CTCM_FUNTAIL, align 4
  %70 = load %struct.channel*, %struct.channel** %3, align 8
  %71 = getelementptr inbounds %struct.channel, %struct.channel* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.channel*, %struct.channel** %3, align 8
  %74 = getelementptr inbounds %struct.channel, %struct.channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @CHANNEL_DIRECTION(i32 %75)
  %77 = load i64, i64* @READ, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %81 = call i32 @CTCM_DBF_TEXT_(i32 %67, i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %72, i8* %80)
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %103

84:                                               ; preds = %40
  %85 = load %struct.channel*, %struct.channel** %3, align 8
  %86 = getelementptr inbounds %struct.channel, %struct.channel* %85, i32 0, i32 3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.channel*, %struct.channel** %3, align 8
  %91 = getelementptr inbounds %struct.channel, %struct.channel* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.channel*, %struct.channel** %3, align 8
  %96 = getelementptr inbounds %struct.channel, %struct.channel* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @CHANNEL_FLAGS_BUFSIZE_CHANGED, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.channel*, %struct.channel** %3, align 8
  %100 = getelementptr inbounds %struct.channel, %struct.channel* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %84, %60, %22
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @clear_normalized_cda(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_6__* @__dev_alloc_skb(i64, i32) #1

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i64 @CHANNEL_DIRECTION(i32) #1

declare dso_local i64 @set_normalized_cda(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
