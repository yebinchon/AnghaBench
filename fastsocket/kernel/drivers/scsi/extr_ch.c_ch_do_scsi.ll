; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ch.c_ch_do_scsi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ch.c_ch_do_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.scsi_sense_hdr = type { i32 }

@INITIALIZE_ELEMENT_STATUS = common dso_local global i8 0, align 1
@timeout_init = common dso_local global i32 0, align 4
@timeout_move = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"command: \00", align 1
@HZ = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"result: 0x%x\0A\00", align 1
@DRIVER_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i32, i32)* @ch_do_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_do_scsi(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scsi_sense_hdr, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @INITIALIZE_ELEMENT_STATUS, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @timeout_init, align 4
  br label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @timeout_move, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %74, %27
  store i32 0, i32* %11, align 4
  %30 = load i64, i64* @debug, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @__scsi_print_command(i8* %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @HZ, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* @MAX_RETRIES, align 4
  %48 = call i32 @scsi_execute_req(i32 %39, i8* %40, i32 %41, i8* %42, i32 %43, %struct.scsi_sense_hdr* %15, i32 %46, i32 %47, i32* null)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @driver_byte(i32 %51)
  %53 = load i32, i32* @DRIVER_SENSE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %36
  %57 = load i64, i64* @debug, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @scsi_print_sense_hdr(i32 %62, %struct.scsi_sense_hdr* %15)
  br label %64

64:                                               ; preds = %59, %56
  %65 = call i32 @ch_find_errno(%struct.scsi_sense_hdr* %15)
  store i32 %65, i32* %11, align 4
  %66 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %15, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %76 [
    i32 128, label %68
  ]

68:                                               ; preds = %64
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  %73 = icmp slt i32 %71, 3
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %29

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %64, %75
  br label %77

77:                                               ; preds = %76, %36
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @__scsi_print_command(i8*) #1

declare dso_local i32 @scsi_execute_req(i32, i8*, i32, i8*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i32 @driver_byte(i32) #1

declare dso_local i32 @scsi_print_sense_hdr(i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @ch_find_errno(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
