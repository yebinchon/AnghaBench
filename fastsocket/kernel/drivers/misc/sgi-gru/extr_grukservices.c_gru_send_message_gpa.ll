; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_send_message_gpa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_send_message_gpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_message_queue_desc = type { i32 }
%struct.message_header = type { i32, i32, i32 }

@mesq_send = common dso_local global i32 0, align 4
@GRU_CACHE_LINE_BYTES = common dso_local global i32 0, align 4
@MQE_BUG_NO_RESOURCES = common dso_local global i32 0, align 4
@MQS_FULL = common dso_local global i32 0, align 4
@MQE_OK = common dso_local global i32 0, align 4
@IMA = common dso_local global i32 0, align 4
@CBS_IDLE = common dso_local global i32 0, align 4
@MQIE_AGAIN = common dso_local global i32 0, align 4
@mesq_send_failed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gru_send_message_gpa(%struct.gru_message_queue_desc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gru_message_queue_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.message_header*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gru_message_queue_desc* %0, %struct.gru_message_queue_desc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @mesq_send, align 4
  %15 = call i32 @STAT(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @GRU_CACHE_LINE_BYTES, align 4
  %22 = mul nsw i32 2, %21
  %23 = icmp ugt i32 %20, %22
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i1 [ true, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @GRU_CACHE_LINE_BYTES, align 4
  %30 = call i32 @DIV_ROUND_UP(i32 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @gru_get_cpu_resources(i32 %31, i8** %9, i8** %10)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @MQE_BUG_NO_RESOURCES, align 4
  store i32 %35, i32* %4, align 4
  br label %98

36:                                               ; preds = %24
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memcpy(i8* %37, i8* %38, i32 %39)
  %41 = load i8*, i8** %10, align 8
  %42 = bitcast i8* %41 to %struct.message_header*
  store %struct.message_header* %42, %struct.message_header** %8, align 8
  %43 = load i32, i32* @MQS_FULL, align 4
  %44 = load %struct.message_header*, %struct.message_header** %8, align 8
  %45 = getelementptr inbounds %struct.message_header, %struct.message_header* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.message_header*, %struct.message_header** %8, align 8
  %48 = getelementptr inbounds %struct.message_header, %struct.message_header* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %59

51:                                               ; preds = %36
  %52 = load %struct.message_header*, %struct.message_header** %8, align 8
  %53 = call i32 @get_present2(%struct.message_header* %52)
  %54 = load %struct.message_header*, %struct.message_header** %8, align 8
  %55 = getelementptr inbounds %struct.message_header, %struct.message_header* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.message_header*, %struct.message_header** %8, align 8
  %57 = load i32, i32* @MQS_FULL, align 4
  %58 = call i32 @restore_present2(%struct.message_header* %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %36
  br label %60

60:                                               ; preds = %83, %59
  %61 = load i32, i32* @MQE_OK, align 4
  store i32 %61, i32* %13, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %5, align 8
  %64 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.message_header*, %struct.message_header** %8, align 8
  %67 = call i32 @gru_get_tri(%struct.message_header* %66)
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @IMA, align 4
  %70 = call i32 @gru_mesq(i8* %62, i32 %65, i32 %67, i32 %68, i32 %69)
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @gru_wait(i8* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @CBS_IDLE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %60
  %77 = load i8*, i8** %9, align 8
  %78 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %5, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @send_message_failure(i8* %77, %struct.gru_message_queue_desc* %78, i8* %79, i32 %80)
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %76, %60
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @MQIE_AGAIN, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %60, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 @gru_free_cpu_resources(i8* %88, i8* %89)
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @mesq_send_failed, align 4
  %95 = call i32 @STAT(i32 %94)
  br label %96

96:                                               ; preds = %93, %87
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %34
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @gru_get_cpu_resources(i32, i8**, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @get_present2(%struct.message_header*) #1

declare dso_local i32 @restore_present2(%struct.message_header*, i32) #1

declare dso_local i32 @gru_mesq(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @gru_get_tri(%struct.message_header*) #1

declare dso_local i32 @gru_wait(i8*) #1

declare dso_local i32 @send_message_failure(i8*, %struct.gru_message_queue_desc*, i8*, i32) #1

declare dso_local i32 @gru_free_cpu_resources(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
