; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruprocfs.c_gru_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_gruprocfs.c_gru_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gru_state = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"#%5s%5s%7s%6s%6s%8s%6s%6s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"nid\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cbr\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dsr\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@GRU_NUM_CCH = common dso_local global i64 0, align 8
@GRU_CBR_AU_SIZE = common dso_local global i64 0, align 8
@GRU_DSR_AU_BYTES = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c" %5d%5d%7ld%6ld%6ld%8ld%6ld%6ld\0A\00", align 1
@GRU_NUM_CBE = common dso_local global i32 0, align 4
@GRU_NUM_DSR_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @gru_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gru_state*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call %struct.gru_state* @GID_TO_GRU(i64 %13)
  store %struct.gru_state* %14, %struct.gru_state** %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.gru_state*, %struct.gru_state** %9, align 8
  %24 = icmp ne %struct.gru_state* %23, null
  br i1 %24, label %25, label %70

25:                                               ; preds = %22
  %26 = load i64, i64* @GRU_NUM_CCH, align 8
  %27 = load %struct.gru_state*, %struct.gru_state** %9, align 8
  %28 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = sub nsw i64 %26, %30
  store i64 %31, i64* %6, align 8
  %32 = load %struct.gru_state*, %struct.gru_state** %9, align 8
  %33 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @hweight64(i32 %34)
  %36 = load i64, i64* @GRU_CBR_AU_SIZE, align 8
  %37 = mul nsw i64 %35, %36
  store i64 %37, i64* %7, align 8
  %38 = load %struct.gru_state*, %struct.gru_state** %9, align 8
  %39 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @hweight64(i32 %40)
  %42 = load i64, i64* @GRU_DSR_AU_BYTES, align 8
  %43 = mul nsw i64 %41, %42
  store i64 %43, i64* %8, align 8
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load %struct.gru_state*, %struct.gru_state** %9, align 8
  %46 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.gru_state*, %struct.gru_state** %9, align 8
  %51 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load i64, i64* @GRU_NUM_CCH, align 8
  %56 = load i64, i64* %6, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i32, i32* @GRU_NUM_CBE, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %7, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load i32, i32* @GRU_NUM_DSR_BYTES, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %8, align 8
  %65 = sub nsw i64 %63, %64
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %49, i8* %54, i64 %57, i64 %61, i64 %65, i64 %66, i64 %67, i64 %68)
  br label %70

70:                                               ; preds = %25, %22
  ret i32 0
}

declare dso_local %struct.gru_state* @GID_TO_GRU(i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @hweight64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
