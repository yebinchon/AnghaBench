; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tx_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tx_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, %struct.TYPE_2__, %struct.slgt_desc* }
%struct.TYPE_2__ = type { i64 }
%struct.slgt_desc = type { i16, i32 }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@DMABUFSIZE = common dso_local global i32 0, align 4
@MGSL_MODE_HDLC = common dso_local global i64 0, align 8
@MGSL_MODE_RAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*, i8*, i32)* @tx_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_load(%struct.slgt_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.slgt_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca %struct.slgt_desc*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %105

13:                                               ; preds = %3
  %14 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @DBGDATA(%struct.slgt_info* %14, i8* %15, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %19 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %22 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %92, %13
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %101

26:                                               ; preds = %23
  %27 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %28 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %27, i32 0, i32 4
  %29 = load %struct.slgt_desc*, %struct.slgt_desc** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %29, i64 %31
  store %struct.slgt_desc* %32, %struct.slgt_desc** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DMABUFSIZE, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @DMABUFSIZE, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %7, align 2
  %51 = load %struct.slgt_desc*, %struct.slgt_desc** %9, align 8
  %52 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i16, i16* %7, align 2
  %56 = call i32 @memcpy(i32 %53, i8* %54, i16 zeroext %55)
  %57 = load i16, i16* %7, align 2
  %58 = zext i16 %57 to i32
  %59 = load i32, i32* %6, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i16, i16* %7, align 2
  %62 = zext i16 %61 to i32
  %63 = load i8*, i8** %5, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %48
  %69 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %70 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MGSL_MODE_HDLC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %68, %48
  %76 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %77 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MGSL_MODE_RAW, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %75, %68
  %83 = load %struct.slgt_desc*, %struct.slgt_desc** %9, align 8
  %84 = bitcast %struct.slgt_desc* %83 to i64*
  %85 = load i64, i64* %84, align 4
  %86 = call i32 @set_desc_eof(i64 %85, i32 1)
  br label %92

87:                                               ; preds = %75
  %88 = load %struct.slgt_desc*, %struct.slgt_desc** %9, align 8
  %89 = bitcast %struct.slgt_desc* %88 to i64*
  %90 = load i64, i64* %89, align 4
  %91 = call i32 @set_desc_eof(i64 %90, i32 0)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.slgt_desc*, %struct.slgt_desc** %9, align 8
  %94 = load i16, i16* %7, align 2
  %95 = bitcast %struct.slgt_desc* %93 to i64*
  %96 = load i64, i64* %95, align 4
  %97 = call i32 @set_desc_count(i64 %96, i16 zeroext %94)
  %98 = load i16, i16* %7, align 2
  %99 = load %struct.slgt_desc*, %struct.slgt_desc** %9, align 8
  %100 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %99, i32 0, i32 0
  store i16 %98, i16* %100, align 4
  br label %23

101:                                              ; preds = %23
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.slgt_info*, %struct.slgt_info** %4, align 8
  %104 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %12
  ret void
}

declare dso_local i32 @DBGDATA(%struct.slgt_info*, i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i16 zeroext) #1

declare dso_local i32 @set_desc_eof(i64, i32) #1

declare dso_local i32 @set_desc_count(i64, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
