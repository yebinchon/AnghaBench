; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_free_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_free_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_message_queue_desc = type { %struct.message_queue* }
%struct.message_queue = type { i8*, i8*, i32*, %struct.message_header*, i8* }
%struct.message_header = type { i32, i32 }

@MQS_EMPTY = common dso_local global i32 0, align 4
@GRU_CACHE_LINE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gru_free_message(%struct.gru_message_queue_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.gru_message_queue_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.message_queue*, align 8
  %6 = alloca %struct.message_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gru_message_queue_desc* %0, %struct.gru_message_queue_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %3, align 8
  %12 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %11, i32 0, i32 0
  %13 = load %struct.message_queue*, %struct.message_queue** %12, align 8
  store %struct.message_queue* %13, %struct.message_queue** %5, align 8
  %14 = load %struct.message_queue*, %struct.message_queue** %5, align 8
  %15 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %14, i32 0, i32 3
  %16 = load %struct.message_header*, %struct.message_header** %15, align 8
  store %struct.message_header* %16, %struct.message_header** %6, align 8
  store i32 -1, i32* %9, align 4
  %17 = load %struct.message_header*, %struct.message_header** %6, align 8
  %18 = getelementptr inbounds %struct.message_header, %struct.message_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.message_header*, %struct.message_header** %6, align 8
  %24 = load i32, i32* @MQS_EMPTY, align 4
  %25 = call i32 @restore_present2(%struct.message_header* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* @MQS_EMPTY, align 4
  %28 = load %struct.message_header*, %struct.message_header** %6, align 8
  %29 = getelementptr inbounds %struct.message_header, %struct.message_header* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.message_queue*, %struct.message_queue** %5, align 8
  %31 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %30, i32 0, i32 3
  %32 = load %struct.message_header*, %struct.message_header** %31, align 8
  %33 = bitcast %struct.message_header* %32 to i8*
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @GRU_CACHE_LINE_BYTES, align 4
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %34, i64 %38
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.message_queue*, %struct.message_queue** %5, align 8
  %42 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %26
  %46 = load %struct.message_queue*, %struct.message_queue** %5, align 8
  %47 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %7, align 8
  store i32 1, i32* %9, align 4
  br label %63

49:                                               ; preds = %26
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.message_queue*, %struct.message_queue** %5, align 8
  %52 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ult i8* %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.message_queue*, %struct.message_queue** %5, align 8
  %58 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp uge i8* %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %61, %55, %49
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i32, i32* %9, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.message_queue*, %struct.message_queue** %5, align 8
  %68 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %63
  %74 = load i8*, i8** %7, align 8
  %75 = bitcast i8* %74 to %struct.message_header*
  %76 = load %struct.message_queue*, %struct.message_queue** %5, align 8
  %77 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %76, i32 0, i32 3
  store %struct.message_header* %75, %struct.message_header** %77, align 8
  ret void
}

declare dso_local i32 @restore_present2(%struct.message_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
