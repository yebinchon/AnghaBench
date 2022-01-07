; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_view_berr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_view_berr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsf_bit_error_payload = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"link_failures\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"loss_of_sync_err\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"loss_of_sig_err\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"prim_seq_err\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"inval_trans_word_err\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"CRC_errors\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"prim_seq_event_to\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"elast_buf_overrun_err\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"adv_rec_buf2buf_cred\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"curr_rec_buf2buf_cred\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"adv_trans_buf2buf_cred\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"curr_trans_buf2buf_cred\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.fsf_bit_error_payload*)* @zfcp_dbf_hba_view_berr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_dbf_hba_view_berr(i8** %0, %struct.fsf_bit_error_payload* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.fsf_bit_error_payload*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.fsf_bit_error_payload* %1, %struct.fsf_bit_error_payload** %4, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %7 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %6, i32 0, i32 11
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @zfcp_dbf_out(i8** %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = load i8**, i8*** %3, align 8
  %11 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %12 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @zfcp_dbf_out(i8** %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i8**, i8*** %3, align 8
  %16 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %17 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @zfcp_dbf_out(i8** %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i8**, i8*** %3, align 8
  %21 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %22 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @zfcp_dbf_out(i8** %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i8**, i8*** %3, align 8
  %26 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %27 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @zfcp_dbf_out(i8** %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i8**, i8*** %3, align 8
  %31 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %32 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @zfcp_dbf_out(i8** %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i8**, i8*** %3, align 8
  %36 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %37 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @zfcp_dbf_out(i8** %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i8**, i8*** %3, align 8
  %41 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %42 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @zfcp_dbf_out(i8** %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i8**, i8*** %3, align 8
  %46 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %47 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @zfcp_dbf_out(i8** %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i8**, i8*** %3, align 8
  %51 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %52 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @zfcp_dbf_out(i8** %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i8**, i8*** %3, align 8
  %56 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %57 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @zfcp_dbf_out(i8** %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i8**, i8*** %3, align 8
  %61 = load %struct.fsf_bit_error_payload*, %struct.fsf_bit_error_payload** %4, align 8
  %62 = getelementptr inbounds %struct.fsf_bit_error_payload, %struct.fsf_bit_error_payload* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @zfcp_dbf_out(i8** %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  ret void
}

declare dso_local i32 @zfcp_dbf_out(i8**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
