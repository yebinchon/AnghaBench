; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_setup_req_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ataflop.c_setup_req_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ReqBlock = common dso_local global i32 0, align 4
@ReqCnt = common dso_local global i32 0, align 4
@UDT = common dso_local global %struct.TYPE_4__* null, align 8
@ReqTrack = common dso_local global i32 0, align 4
@ReqSector = common dso_local global i32 0, align 4
@ReqSide = common dso_local global i32 0, align 4
@ReqBuffer = common dso_local global i64 0, align 8
@ReqData = common dso_local global i64 0, align 8
@UseTrackbuffer = common dso_local global i64 0, align 8
@ReqCmd = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@fd_request = common dso_local global %struct.TYPE_3__* null, align 8
@read_track = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Request params: Si=%d Tr=%d Se=%d Data=%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @setup_req_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_req_params(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @ReqBlock, align 4
  %5 = load i32, i32* @ReqCnt, align 4
  %6 = add nsw i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDT, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %7, %10
  store i32 %11, i32* @ReqTrack, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ReqTrack, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @UDT, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = sub nsw i32 %12, %17
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @ReqSector, align 4
  %20 = load i32, i32* @ReqTrack, align 4
  %21 = and i32 %20, 1
  store i32 %21, i32* @ReqSide, align 4
  %22 = load i32, i32* @ReqTrack, align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* @ReqTrack, align 4
  %24 = load i64, i64* @ReqBuffer, align 8
  %25 = load i32, i32* @ReqCnt, align 4
  %26 = mul nsw i32 512, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* @ReqData, align 8
  %29 = load i64, i64* @UseTrackbuffer, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %1
  %32 = load i64, i64* @ReqCmd, align 8
  %33 = load i64, i64* @READ, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fd_request, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i1 [ false, %31 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* @read_track, align 4
  br label %44

43:                                               ; preds = %1
  store i32 0, i32* @read_track, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* @ReqSide, align 4
  %46 = load i32, i32* @ReqTrack, align 4
  %47 = load i32, i32* @ReqSector, align 4
  %48 = load i64, i64* @ReqData, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @DPRINT(i8* %49)
  ret void
}

declare dso_local i32 @DPRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
