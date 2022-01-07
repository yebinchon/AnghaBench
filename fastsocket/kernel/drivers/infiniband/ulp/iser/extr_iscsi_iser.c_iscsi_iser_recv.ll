; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"wrong datalen %d (hdr), %d (IB)\0A\00", align 1
@ISCSI_ERR_DATALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"aligned datalen (%d) hdr, %d (IB)\0A\00", align 1
@ISCSI_ERR_NO_SCSI_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_iser_recv(%struct.iscsi_conn* %0, %struct.iscsi_hdr* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_hdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_hdr* %1, %struct.iscsi_hdr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntoh24(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @iser_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* @ISCSI_ERR_DATALEN, align 4
  store i32 %28, i32* %9, align 4
  br label %55

29:                                               ; preds = %19
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @iser_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %39 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 4
  store i32 %41, i32* %11, align 4
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %43 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @iscsi_complete_pdu(%struct.iscsi_conn* %42, %struct.iscsi_hdr* %43, i8* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ISCSI_ERR_NO_SCSI_CMD, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %55

54:                                               ; preds = %49, %37
  br label %59

55:                                               ; preds = %53, %24
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %54
  ret void
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @iser_err(i8*, i32, i32) #1

declare dso_local i32 @iser_dbg(i8*, i32, i32) #1

declare dso_local i32 @iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i8*, i32) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
