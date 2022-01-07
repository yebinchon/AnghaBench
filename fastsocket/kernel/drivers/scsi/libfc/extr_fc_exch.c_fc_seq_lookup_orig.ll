; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_lookup_orig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_seq_lookup_orig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i64 }
%struct.fc_exch_mgr = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i64, i32, i32, i32 }
%struct.fc_exch = type { i64, %struct.fc_seq }

@FC_FC_SEQ_CTX = common dso_local global i32 0, align 4
@FC_FC_EX_CTX = common dso_local global i32 0, align 4
@FC_XID_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_seq* (%struct.fc_exch_mgr*, %struct.fc_frame*)* @fc_seq_lookup_orig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_seq* @fc_seq_lookup_orig(%struct.fc_exch_mgr* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_seq*, align 8
  %4 = alloca %struct.fc_exch_mgr*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca %struct.fc_frame_header*, align 8
  %7 = alloca %struct.fc_exch*, align 8
  %8 = alloca %struct.fc_seq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.fc_exch_mgr* %0, %struct.fc_exch_mgr** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  %11 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %12 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %11)
  store %struct.fc_frame_header* %12, %struct.fc_frame_header** %6, align 8
  store %struct.fc_seq* null, %struct.fc_seq** %8, align 8
  %13 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %14 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ntoh24(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @FC_FC_SEQ_CTX, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @FC_FC_SEQ_CTX, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @FC_FC_EX_CTX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %30 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %34 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  %38 = call i8* @ntohs(i32 %37)
  store i8* %38, i8** %10, align 8
  %39 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %4, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call %struct.fc_exch* @fc_exch_find(%struct.fc_exch_mgr* %39, i8* %40)
  store %struct.fc_exch* %41, %struct.fc_exch** %7, align 8
  %42 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %43 = icmp ne %struct.fc_exch* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store %struct.fc_seq* null, %struct.fc_seq** %3, align 8
  br label %80

45:                                               ; preds = %36
  %46 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %47 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %51 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %45
  %55 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %56 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %55, i32 0, i32 1
  store %struct.fc_seq* %56, %struct.fc_seq** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @FC_FC_EX_CTX, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %63 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.fc_frame_header*, %struct.fc_frame_header** %6, align 8
  %69 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @ntohs(i32 %70)
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %74 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %67, %61, %54
  br label %76

76:                                               ; preds = %75, %45
  %77 = load %struct.fc_exch*, %struct.fc_exch** %7, align 8
  %78 = call i32 @fc_exch_release(%struct.fc_exch* %77)
  %79 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  store %struct.fc_seq* %79, %struct.fc_seq** %3, align 8
  br label %80

80:                                               ; preds = %76, %44
  %81 = load %struct.fc_seq*, %struct.fc_seq** %3, align 8
  ret %struct.fc_seq* %81
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local %struct.fc_exch* @fc_exch_find(%struct.fc_exch_mgr*, i8*) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
