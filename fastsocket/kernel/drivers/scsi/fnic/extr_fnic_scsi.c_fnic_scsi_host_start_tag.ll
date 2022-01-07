; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_scsi_host_start_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_scsi_host_start_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.blk_queue_tag* }
%struct.blk_queue_tag = type { i32, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, %struct.TYPE_6__* }

@SCSI_NO_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Tags are not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Tag allocation failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fnic*, %struct.scsi_cmnd*)* @fnic_scsi_host_start_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_scsi_host_start_tag(%struct.fnic* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.blk_queue_tag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %8 = load %struct.fnic*, %struct.fnic** %3, align 8
  %9 = getelementptr inbounds %struct.fnic, %struct.fnic* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %13, align 8
  store %struct.blk_queue_tag* %14, %struct.blk_queue_tag** %5, align 8
  %15 = load i32, i32* @SCSI_NO_TAG, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %17 = icmp ne %struct.blk_queue_tag* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %22 = icmp ne %struct.blk_queue_tag* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %81

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %42, %25
  %27 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %28 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %31 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @find_next_zero_bit(i32 %29, i32 %32, i32 1)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %36 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %81

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %45 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @test_and_set_bit(i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %26, label %49

49:                                               ; preds = %42
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.blk_queue_tag*, %struct.blk_queue_tag** %5, align 8
  %54 = getelementptr inbounds %struct.blk_queue_tag, %struct.blk_queue_tag* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 %57
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %70, align 8
  %72 = icmp ne %struct.scsi_cmnd* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %49
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store %struct.scsi_cmnd* %74, %struct.scsi_cmnd** %78, align 8
  br label %79

79:                                               ; preds = %73, %49
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %79, %39, %23
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
