; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c___tapeblock_end_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c___tapeblock_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_request = type { i64, %struct.tape_device* }
%struct.tape_device = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.tape_request*)* }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"__tapeblock_end_request()\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TAPEBLOCK_HSEC_S2B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_request*, i8*)* @__tapeblock_end_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tapeblock_end_request(%struct.tape_request* %0, i8* %1) #0 {
  %3 = alloca %struct.tape_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tape_device*, align 8
  %6 = alloca %struct.request*, align 8
  store %struct.tape_request* %0, %struct.tape_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @DBF_LH(i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %9 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %8, i32 0, i32 1
  %10 = load %struct.tape_device*, %struct.tape_device** %9, align 8
  store %struct.tape_device* %10, %struct.tape_device** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.request*
  store %struct.request* %12, %struct.request** %6, align 8
  %13 = load %struct.request*, %struct.request** %6, align 8
  %14 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %15 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi i32 [ 0, %18 ], [ %21, %19 ]
  %24 = call i32 @blk_end_request_all(%struct.request* %13, i32 %23)
  %25 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %26 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.request*, %struct.request** %6, align 8
  %31 = call i32 @blk_rq_pos(%struct.request* %30)
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = call i32 @blk_rq_sectors(%struct.request* %32)
  %34 = add nsw i32 %31, %33
  %35 = load i32, i32* @TAPEBLOCK_HSEC_S2B, align 4
  %36 = ashr i32 %34, %35
  %37 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %38 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %44

40:                                               ; preds = %22
  %41 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %42 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %46 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.tape_request*)*, i32 (%struct.tape_request*)** %48, align 8
  %50 = load %struct.tape_request*, %struct.tape_request** %3, align 8
  %51 = call i32 %49(%struct.tape_request* %50)
  %52 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %53 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %52, i32 0, i32 1
  %54 = call i32 @list_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %44
  %57 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %58 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @blk_peek_request(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56, %44
  %64 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %65 = call i32 @tapeblock_trigger_requeue(%struct.tape_device* %64)
  br label %66

66:                                               ; preds = %63, %56
  ret void
}

declare dso_local i32 @DBF_LH(i32, i8*) #1

declare dso_local i32 @blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @blk_peek_request(i32) #1

declare dso_local i32 @tapeblock_trigger_requeue(%struct.tape_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
