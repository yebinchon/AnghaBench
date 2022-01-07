; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_scsi_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_aachba.c_aac_scsi_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_srb = type { i8*, i64, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.fib = type { i32 }
%struct.scsi_cmnd = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SRB_DataOut = common dso_local global i32 0, align 4
@SRB_DataIn = common dso_local global i32 0, align 4
@SRB_NoDataXfer = common dso_local global i32 0, align 4
@SRBF_ExecuteScsi = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aac_srb* (%struct.fib*, %struct.scsi_cmnd*)* @aac_scsi_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aac_srb* @aac_scsi_common(%struct.fib* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.fib*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.aac_srb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fib* %0, %struct.fib** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %8 = load %struct.fib*, %struct.fib** %3, align 8
  %9 = call i32 @aac_fib_init(%struct.fib* %8)
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %22 [
    i32 128, label %13
    i32 131, label %15
    i32 130, label %19
    i32 129, label %21
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @SRB_DataOut, align 4
  store i32 %14, i32* %6, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @SRB_DataIn, align 4
  %17 = load i32, i32* @SRB_DataOut, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @SRB_DataIn, align 4
  store i32 %20, i32* %6, align 4
  br label %24

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %2, %21
  %23 = load i32, i32* @SRB_NoDataXfer, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %19, %15, %13
  %25 = load %struct.fib*, %struct.fib** %3, align 8
  %26 = call i64 @fib_data(%struct.fib* %25)
  %27 = inttoptr i64 %26 to %struct.aac_srb*
  store %struct.aac_srb* %27, %struct.aac_srb** %5, align 8
  %28 = load i32, i32* @SRBF_ExecuteScsi, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %31 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = call i32 @scmd_channel(%struct.scsi_cmnd* %32)
  %34 = call i32 @aac_logical_to_phys(i32 %33)
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %37 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %39 = call i32 @scmd_id(%struct.scsi_cmnd* %38)
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %42 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %50 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %54 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HZ, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %24
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %69 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %71 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  %77 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load %struct.aac_srb*, %struct.aac_srb** %5, align 8
  ret %struct.aac_srb* %78
}

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @aac_logical_to_phys(i32) #1

declare dso_local i32 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
