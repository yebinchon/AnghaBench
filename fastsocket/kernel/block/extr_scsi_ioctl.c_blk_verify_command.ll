; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_scsi_ioctl.c_blk_verify_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_scsi_ioctl.c_blk_verify_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_cmd_filter = type { i32*, i32* }
%struct.request_queue = type { i32 }

@blk_default_cmd_filter = common dso_local global %struct.blk_cmd_filter zeroinitializer, align 8
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_verify_command(%struct.request_queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.blk_cmd_filter*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.blk_cmd_filter* @blk_default_cmd_filter, %struct.blk_cmd_filter** %8, align 8
  %9 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %10 = call i64 @capable(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %14 = call i64 @blk_queue_unpriv_sgio(%struct.request_queue* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %57

17:                                               ; preds = %12
  %18 = load %struct.blk_cmd_filter*, %struct.blk_cmd_filter** %8, align 8
  %19 = getelementptr inbounds %struct.blk_cmd_filter, %struct.blk_cmd_filter* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %28 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %26, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %57

34:                                               ; preds = %17
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.blk_cmd_filter*, %struct.blk_cmd_filter** %8, align 8
  %39 = getelementptr inbounds %struct.blk_cmd_filter, %struct.blk_cmd_filter* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %48 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %46, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %57

54:                                               ; preds = %37, %34
  %55 = load i32, i32* @EPERM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %53, %33, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @blk_queue_unpriv_sgio(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
