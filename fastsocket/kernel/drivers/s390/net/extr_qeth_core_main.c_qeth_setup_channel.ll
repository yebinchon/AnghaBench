; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setup_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_setup_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_channel = type { i32, i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64, i32, %struct.qeth_channel*, i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"setupch\00", align 1
@QETH_CMD_BUFFER_NO = common dso_local global i32 0, align 4
@QETH_BUFSIZE = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BUF_STATE_FREE = common dso_local global i32 0, align 4
@qeth_send_control_data_cb = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_channel*)* @qeth_setup_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_setup_channel(%struct.qeth_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.qeth_channel* %0, %struct.qeth_channel** %3, align 8
  %5 = load i32, i32* @SETUP, align 4
  %6 = call i32 @QETH_DBF_TEXT(i32 %5, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %67, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @QETH_CMD_BUFFER_NO, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %70

11:                                               ; preds = %7
  %12 = load i32, i32* @QETH_BUFSIZE, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @kzalloc(i32 %12, i32 %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %19 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %18, i32 0, i32 5
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %17, i8** %24, align 8
  %25 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %26 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %25, i32 0, i32 5
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %11
  br label %70

35:                                               ; preds = %11
  %36 = load i32, i32* @BUF_STATE_FREE, align 4
  %37 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %38 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %37, i32 0, i32 5
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i32 %36, i32* %43, align 8
  %44 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %45 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %46 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %45, i32 0, i32 5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store %struct.qeth_channel* %44, %struct.qeth_channel** %51, align 8
  %52 = load i32, i32* @qeth_send_control_data_cb, align 4
  %53 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %54 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %53, i32 0, i32 5
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %52, i32* %59, align 8
  %60 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %61 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %60, i32 0, i32 5
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %35
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %7

70:                                               ; preds = %34, %7
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @QETH_CMD_BUFFER_NO, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %79, %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %4, align 4
  %78 = icmp sgt i32 %76, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %81 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %80, i32 0, i32 5
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @kfree(i8* %87)
  br label %75

89:                                               ; preds = %75
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %106

92:                                               ; preds = %70
  %93 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %94 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %93, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %96 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %98 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %97, i32 0, i32 2
  %99 = call i32 @atomic_set(i32* %98, i32 0)
  %100 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %101 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %100, i32 0, i32 1
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load %struct.qeth_channel*, %struct.qeth_channel** %3, align 8
  %104 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %103, i32 0, i32 0
  %105 = call i32 @init_waitqueue_head(i32* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %92, %89
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
